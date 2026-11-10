// XEMS Motion — one body sensor: Seeed XIAO nRF52840 Sense / Sense Plus, on-board IMU LSM6DS3TR-C.
// All five sensors (wrists, shanks above the ankle, upper back T1–T2) run this same firmware; WHERE each one sits is
// found by the host from the calibration movement (docs/xems-motion.md), never configured on the sensor.
// The sensor fuses its own orientation (fusion.h, 208 Hz) and streams it with the raw motion over BLE.
// Build: sh scripts/motion/build-motion.sh → motion/xems-motion-sense.uf2 (+ -sense-plus, + Bluetooth OTA zips).
//
// BLE name "XEMS Motion XXXX" (XXXX = last 2 bytes of the chip address). Two services:
//  * data  6E400101-B5A3-F393-E0A9-E50E24DCCA9E, characteristic …0102 (notify), one 20-byte frame per sample:
//      u8 seq | u8 flags (b0 still, b1 bias ready, b2 low battery, b3 hit > 2.5 g — fw 8) | i16 qx qy qz (Q15, w ≥ 0 ⇒ w = √(1−x²−y²−z²))
//      | i16 gx gy gz (°/s × 16, bias removed) | i16 ax ay az (mg, raw specific force)      — all little-endian
//  * text  Nordic UART 6E400001-…, one line each way (also on USB serial):
//      Host → sensor                       Sensor → host
//        info                                INFO XEMS-MOTION <ver> id=<XXXX> imu=<0|1> rate=<hz> bat=<%> <V> bias=<0|1> t=<°C>
//        rate 25|50|100                      OK rate <hz>
//        led off|red|green|blue|yellow|cyan|magenta|white [blink]   OK led <color>   (shows the found position)
//        bias                                OK bias  (hold still ~1 s: the gyro bias is learned again)
//        level                               OK level (orientation restarts from gravity, heading 0)
//        zero                                OK zero  (fw 10: standing still now — the gyro offset = its mean over 1.5 s)
//        sleep                               OK sleep (standby, see below)
//        off                                 OK off   (deep sleep: only a firm shake, the USB cable or RST wakes it)
//
// Sleep without a button (fw 7, owner 2026-11-04): STANDBY = motion chip asleep (only its shake detector, ~10 µA),
// Bluetooth heard every 2 s, LED dark. Into standby: the app's "Приспи" (command sleep), or 5 min with no phone
// (never on the USB cable). Out of standby: the phone connects (opening the app wakes every sensor) or a firm shake.
// 48 h in standby (or an empty battery) → deep sleep; the shake / cable / RST wake it.
//                                            BAT <%> <V>   every 30 s
//
// Gamepad for the VR game (fw 10, owner 2026-11-07: "connect the sensors straight to the game"): the sensor is ALSO a
// Bluetooth HID gamepad. Pair it once in the Quest's Bluetooth settings like any controller; the headset reconnects it
// by itself, no phone, no Wi-Fi. fw 13 (owner 2026-11-10: "the leg sensors move the Quest's menu"): the values left
// the stick axes (X Y Z Rx — the system reads them as sticks and navigated with every step) for the Simulation page's
// pedals, which the system does not navigate with. Report ID 1, 9 bytes, ~104 Hz: u8 buttons (always 0, they make
// Android call it a gamepad) | i16 Throttle Rudder Accelerator = qx qy qz (×32767, w ≥ 0 rebuilt by the host) |
// i16 Brake = vertical acceleration without gravity (g × 8192, 20 Hz low-passed). Android axes THROTTLE 19, RUDDER 20,
// GAS 22, BRAKE 23 → the game's joypad axes 0..3 (vr-workout/scripts/game/pad_legs.gd tells this layout from fw 10–12's
// by the four values not being a unit quaternion). Re-pair the sensor in the Quest after the update (new report map). docs/xems-motion.md "VR legs — the sensors as a gamepad".
#include <bluefruit.h>
#include <Wire.h>
#include "fusion.h"

#define FW_VER "13"
#define IMU_ADDR 0x6A
#define IMU_RATE 208.f

BLEUart bleuart;
BLEService dataSvc("6E400101-B5A3-F393-E0A9-E50E24DCCA9E");
BLECharacteristic dataChr("6E400102-B5A3-F393-E0A9-E50E24DCCA9E");
// the HID gamepad (fw 13): 8 buttons + 4 pedal axes of 16 bits (no stick axes: the system navigates with those)
static const uint8_t padMap[] = {
  0x05, 0x01, 0x09, 0x05, 0xA1, 0x01, 0x85, 0x01,             // Generic Desktop · Gamepad · Application · ID 1
  0x05, 0x09, 0x19, 0x01, 0x29, 0x08, 0x15, 0x00, 0x25, 0x01, // Buttons 1..8, 0..1
  0x75, 0x01, 0x95, 0x08, 0x81, 0x02,                         // 8 × 1 bit
  0x05, 0x02, 0x09, 0xBB, 0x09, 0xBA, 0x09, 0xC4, 0x09, 0xC5, // Simulation: Throttle Rudder Accelerator Brake
  0x16, 0x01, 0x80, 0x26, 0xFF, 0x7F, 0x75, 0x10, 0x95, 0x04, 0x81, 0x02,                // −32767..32767, 4 × 16 bit
  0xC0};
BLEHidGeneric pad(1, 0, 0);
static uint8_t padSub = 0;
MotionFusion fus;
static uint8_t seq = 0, decim = 4;          // 208/4 = 52 Hz by default
static uint8_t sub = 0;
// fw 8: a frame carries the MEAN of its samples, not every 4th one. Sampling every 4th sample folds anything above
// 26 Hz — the suit's own impulses (50–100 Hz shake the body), landings — into the movement band, and the phone
// integrates velocities from it. Gyro: mean (bias removed); acceleration: mean in the gravity frame, turned back to the
// sensor at the frame's instant (what the phone integrates). Plus flag b3: a hit > 2.5 g inside the frame (a landing).
static float sumG[3], sumA[3], peakA;
static void qrot(const float *q, const float *v, float *o, bool inv) {
  float w = q[0], x = inv ? -q[1] : q[1], y = inv ? -q[2] : q[2], z = inv ? -q[3] : q[3];
  float tx = 2 * (y * v[2] - z * v[1]), ty = 2 * (z * v[0] - x * v[2]), tz = 2 * (x * v[1] - y * v[0]);
  o[0] = v[0] + w * tx + y * tz - z * ty; o[1] = v[1] + w * ty + z * tx - x * tz; o[2] = v[2] + w * tz + x * ty - y * tx;
}
static char devId[8];
static int batPct = -1;
static float batV = 0;
static uint32_t lastBat = 0, lastMove = 0, ledBlinkUntil = 0, lastHello = 0;
static bool imuOk = false;
static int ledColor = 0;                    // bit0 R, bit1 G, bit2 B
static bool ledBlink = false;
static char usbLine[64], bleLine[64];
static void goSleep();
static uint8_t usbLen = 0, bleLen = 0;
static bool standby = false;
static volatile bool wakeReq = false;
static uint32_t standbyAt = 0, lastConn = 0;
static uint16_t connHdl = BLE_CONN_HANDLE_INVALID;

// ---------- IMU (direct registers: no library, exact ODR/range control)
static void imuWrite(uint8_t r, uint8_t v) { Wire1.beginTransmission(IMU_ADDR); Wire1.write(r); Wire1.write(v); Wire1.endTransmission(); }
static uint8_t imuRead(uint8_t r, uint8_t *buf, uint8_t n) {
  Wire1.beginTransmission(IMU_ADDR); Wire1.write(r);
  if (Wire1.endTransmission(false)) return 0;
  uint8_t got = Wire1.requestFrom((uint8_t)IMU_ADDR, n);
  for (uint8_t i = 0; i < got; i++) buf[i] = Wire1.read();
  return got;
}
// The core's I2C waits for the bus with no time limit: a motion chip that does not answer the expected way would freeze
// the sensor at start (fw 1–2 on the owner's sensors: dark, Bluetooth never up). So: check the bus lines first, give
// the chip 60 ms to power up, and a watchdog (setup) restarts a frozen start and skips the chip the next time.
static const char *imuWhy = "";
static bool imuBegin() {
  // Seeed's own sequence (Seeed_Arduino_LSM6DS3, beginCore): P1.08 as output with HIGH drive (H0H1) and no pull —
  // the pin is the sensor's supply, standard drive sags under its current — then HIGH, wait, Wire1. No pull-ups on
  // SDA/SCL before that: they would feed the unpowered sensor through its I2C pins (Nordic DevZone).
  pinMode(PIN_LSM6DS3TR_C_POWER, OUTPUT);
  NRF_P1->PIN_CNF[8] = ((uint32_t)NRF_GPIO_PIN_DIR_OUTPUT << GPIO_PIN_CNF_DIR_Pos)
                     | ((uint32_t)NRF_GPIO_PIN_INPUT_DISCONNECT << GPIO_PIN_CNF_INPUT_Pos)
                     | ((uint32_t)NRF_GPIO_PIN_NOPULL << GPIO_PIN_CNF_PULL_Pos)
                     | ((uint32_t)NRF_GPIO_PIN_H0H1 << GPIO_PIN_CNF_DRIVE_Pos)
                     | ((uint32_t)NRF_GPIO_PIN_NOSENSE << GPIO_PIN_CNF_SENSE_Pos);
  digitalWrite(PIN_LSM6DS3TR_C_POWER, HIGH);
  delay(30);                                // LSM6DS3TR-C boot ≈ 15 ms
  Wire1.begin(); Wire1.setClock(100000);    // 100 kHz while finding it
  uint8_t who = 0;
  for (int i = 0; i < 5 && who != 0x6A; i++) { imuRead(0x0F, &who, 1); if (who != 0x6A) delay(20); }
  if (who != 0x6A) { imuWhy = who ? "who" : "silent"; return false; }
  imuWrite(0x12, 0x01); delay(20);          // CTRL3_C SW_RESET
  imuWrite(0x12, 0x44);                     // BDU + IF_INC
  imuWrite(0x10, 0x54);                     // CTRL1_XL 208 Hz, ±16 g (ankle landings)
  imuWrite(0x11, 0x5C);                     // CTRL2_G 208 Hz, ±2000 °/s (fast punches)
  imuWrite(0x0D, 0x02);                     // INT1_CTRL: gyro data ready → INT1 (fw 9: the CPU sleeps until it)
  pinMode(PIN_LSM6DS3TR_C_INT1, INPUT);
  Wire1.setClock(400000);
  return true;
}

// watchdog: 4 s; fed in loop(). NRF_POWER->GPREGRET2 keeps the start stage across a watchdog restart.
static uint8_t lastHang = 0;
static uint32_t resetWhy = 0;
static bool btOk = false;
static uint16_t sdFwid = 0;          // the SoftDevice in flash (S140 7.3.0 = 0x0123), 0 = none
static void wdtStart() {
  NRF_WDT->CONFIG = (WDT_CONFIG_HALT_Pause << WDT_CONFIG_HALT_Pos) | (WDT_CONFIG_SLEEP_Run << WDT_CONFIG_SLEEP_Pos);
  NRF_WDT->CRV = 4 * 32768;
  NRF_WDT->RREN = WDT_RREN_RR0_Msk;
  NRF_WDT->TASKS_START = 1;
}
static inline void wdtFeed() { NRF_WDT->RR[0] = WDT_RR_RR_Reload; }
// S140 SoftDevice Specification: with the SoftDevice enabled POWER is a restricted peripheral — a direct register
// write is a Hard Fault (firmware 3–5 froze right after Bluetooth started, watchdog restart, red→yellow→blue loop).
// Then only through its API, as Bluefruit's own DFU service does (sd_power_gpregret_clr/set).
static void markStage(uint8_t n) {
  uint8_t on = 0; sd_softdevice_is_enabled(&on);
  if (on) { sd_power_gpregret_clr(1, 0xFF); if (n) sd_power_gpregret_set(1, n); }
  else NRF_POWER->GPREGRET2 = n;
}
static void stage(uint8_t n, int color, const char *what) {
  markStage(n);
  ledShow(color);
  Serial.print("BOOT "); Serial.print(n); Serial.print(' '); Serial.println(what);
}

// ---------- LED (active low)
static void ledShow(int c) {
  digitalWrite(LED_RED, c & 1 ? LOW : HIGH); digitalWrite(LED_GREEN, c & 2 ? LOW : HIGH); digitalWrite(LED_BLUE, c & 4 ? LOW : HIGH);
}
static int colorOf(const char *s) {
  static const char *names[] = {"off", "red", "green", "yellow", "blue", "magenta", "cyan", "white"};
  for (int i = 0; i < 8; i++) if (!strncmp(s, names[i], strlen(names[i]))) return i;
  return -1;
}

// ---------- battery (VBAT_ENABLE stays LOW for good: a HIGH/floating P0.14 puts VBAT on an ADC pin)
static void readBattery() {
  analogReadResolution(12);
  uint32_t s = 0; for (int i = 0; i < 8; i++) s += analogRead(PIN_VBAT);
  batV = (s / 8.f) * 3.6f / 4096.f * 1510.f / 510.f;
  float p = (batV - 3.3f) / (4.15f - 3.3f) * 100.f;
  batPct = p < 0 ? 0 : p > 100 ? 100 : (int)p;
}

static void say(const char *s) {
  Serial.println(s);
  if (btOk && Bluefruit.connected() && bleuart.notifyEnabled()) { bleuart.write((const uint8_t *)s, strlen(s)); bleuart.write((const uint8_t *)"\n", 1); }
}

static void info() {
  uint8_t t[2] = {0, 0}; imuRead(0x20, t, 2);
  float temp = 25.f + (int16_t)(t[0] | t[1] << 8) / 256.f;
  char b[160];
  snprintf(b, sizeof b, "INFO XEMS-MOTION %s id=%s imu=%d%s%s bt=%d sd=%04X hang=%d rr=%lX rate=%d bat=%d %.2f bias=%d t=%.1f", FW_VER, devId, imuOk ? 1 : 0, imuOk ? "" : "/", imuOk ? "" : imuWhy, btOk ? 1 : 0, sdFwid, lastHang, (unsigned long)resetWhy,
           (int)(IMU_RATE / decim + 0.5f), batPct, batV, fus.biasReady ? 1 : 0, temp);
  say(b);
}

static void command(char *s) {
  char b[48];
  if (!strcmp(s, "info") || !strcmp(s, "ping")) info();
  else if (!strncmp(s, "rate ", 5)) {
    int hz = atoi(s + 5);
    decim = hz >= 100 ? 2 : hz >= 50 ? 4 : 8;
    snprintf(b, sizeof b, "OK rate %d", (int)(IMU_RATE / decim + 0.5f)); say(b);
  } else if (!strncmp(s, "led ", 4)) {
    int c = colorOf(s + 4);
    if (c < 0) { say("ERR led"); return; }
    ledColor = c; ledBlink = strstr(s, "blink") != nullptr; ledBlinkUntil = millis() + 4000;
    snprintf(b, sizeof b, "OK led %s", s + 4); say(b);
  } else if (!strcmp(s, "bias")) { fus.relearnBias(); say("OK bias"); }
  else if (!strcmp(s, "level")) { fus.reset(); say("OK level"); }
  else if (!strcmp(s, "zero")) { fus.zeroNow(1.5f); say("OK zero"); }   // fw 11: "still now" — learn the gyro offset
  else if (!strcmp(s, "sleep")) { say("OK sleep"); delay(300); enterStandby(); }
  else if (!strcmp(s, "off")) { say("OK off"); delay(300); goSleep(); }
  else if (!strcmp(s, "wake")) { if (standby) leaveStandby(); say("OK wake"); }
  else say("ERR ?");
}

static void feed(char c, char *line, uint8_t &len) {
  if (c == '\n' || c == '\r') { if (len) { line[len] = 0; command(line); len = 0; } }
  else if (len < 63) line[len++] = c;
}

// the motion chip as a shake detector (AN5130 wake-up): accel only, 26 Hz low power (CTRL6_C XL_HM_MODE), gyro off,
// slope over 1 g at ±2 g (WAKE_UP_THS 32 × FS/64) — a deliberate shake, not a bag being carried; latched on INT1
static void imuShakeOnly() {
  imuWrite(0x0D, 0x00);                     // no data-ready on INT1 while it only watches for a shake
  imuWrite(0x11, 0x00);                     // CTRL2_G gyro off
  imuWrite(0x15, 0x10);                     // CTRL6_C accel low-power mode
  imuWrite(0x10, 0x20);                     // CTRL1_XL 26 Hz, ±2 g
  imuWrite(0x5C, 0x00);                     // WAKE_UP_DUR
  imuWrite(0x5B, 0x20);                     // WAKE_UP_THS ≈ 1 g
  imuWrite(0x58, 0x81);                     // TAP_CFG: interrupts on, latched
  imuWrite(0x5E, 0x20);                     // MD1_CFG: wake-up → INT1
  uint8_t x; imuRead(0x1B, &x, 1);          // WAKE_UP_SRC: clears a pending latch
  pinMode(PIN_LSM6DS3TR_C_INT1, INPUT_PULLDOWN);
}
static void imuRun() {                      // back to streaming (the setup values)
  imuWrite(0x5E, 0x00); imuWrite(0x58, 0x00); imuWrite(0x15, 0x00);
  imuWrite(0x10, 0x54); imuWrite(0x11, 0x5C); imuWrite(0x0D, 0x02);
  pinMode(PIN_LSM6DS3TR_C_INT1, INPUT);
  fus.reset();
}
// deep sleep (System OFF), woken by the shake on INT1, the USB cable or RST
static void goSleep() {
  ledShow(0);
  if (!imuOk) { if (btOk) sd_power_system_off(); else NRF_POWER->SYSTEMOFF = 1; return; }
  imuShakeOnly();
  pinMode(PIN_LSM6DS3TR_C_INT1, INPUT_PULLDOWN_SENSE);
  if (btOk) sd_power_system_off(); else NRF_POWER->SYSTEMOFF = 1;
}
static void advSlow(bool slow) {            // 2 s in standby; 100 ms → 300 ms when awake
  Bluefruit.Advertising.stop();
  if (slow) { Bluefruit.Advertising.setInterval(3200, 3200); Bluefruit.Advertising.setFastTimeout(0); }
  else { Bluefruit.Advertising.setInterval(160, 480); Bluefruit.Advertising.setFastTimeout(30); }
  if (!Bluefruit.connected()) Bluefruit.Advertising.start(0);
}
static void enterStandby() {
  if (!btOk) { goSleep(); return; }         // no Bluetooth: nothing could wake it but the shake anyway
  if (imuOk) imuShakeOnly();
  ledShow(0);
  advSlow(true);
  if (Bluefruit.connected() && connHdl != BLE_CONN_HANDLE_INVALID) Bluefruit.disconnect(connHdl);
  standby = true; standbyAt = millis();
  Serial.println("STANDBY");
}
static void leaveStandby() {
  standby = false; wakeReq = false;
  if (imuOk) imuRun();
  advSlow(false);
  lastConn = lastMove = millis();
  ledShow(7); delay(120); ledShow(0);       // white flash: awake
  Serial.println("AWAKE");
}

static void connectCb(uint16_t h) {
  connHdl = h;
  if (standby) wakeReq = true;              // the phone came for it: wake (in loop — the chip's I2C is loop's)
  BLEConnection *c = Bluefruit.Connection(h);
  c->requestConnectionParameter(6, 0, 400);   // 7.5 ms: five sensors at 100 Hz still fit
  info();
}

void setup() {
  pinMode(LED_RED, OUTPUT); pinMode(LED_GREEN, OUTPUT); pinMode(LED_BLUE, OUTPUT);
  pinMode(VBAT_ENABLE, OUTPUT); digitalWrite(VBAT_ENABLE, LOW);
  // where did the last start freeze? A watchdog (or lockup) restart with a stage left in GPREGRET2. The core's init()
  // has already read and cleared RESETREAS (fw 3–4 read the cleared register: the skip never happened, the start
  // looped red → yellow → blue for ever) — its copy is readResetReason().
  uint32_t rr = readResetReason();
  bool crashed = rr & (POWER_RESETREAS_DOG_Msk | POWER_RESETREAS_LOCKUP_Msk);
  lastHang = crashed ? NRF_POWER->GPREGRET2 : 0;
  resetWhy = rr;
  wdtStart();
  Serial.begin(115200);
  // start stages, each with its colour: red = started · yellow = motion chip · blue = Bluetooth · green+white = ready.
  // A sensor that stops on a colour shows where; the watchdog restarts it in 4 s and the chip step is skipped then.
  stage(1, 1, "start"); Serial.print("RESET 0x"); Serial.print(rr, HEX); Serial.print(" hang "); Serial.println(lastHang); delay(300);
  stage(2, 3, "imu");
  bool ok = false;
  if (lastHang == 2) imuWhy = "froze";      // it froze here last time: go on without it (red blinking says so)
  else ok = imuBegin();
  wdtFeed();
  uint32_t a0 = NRF_FICR->DEVICEADDR[0];
  snprintf(devId, sizeof devId, "%04X", (unsigned)(a0 & 0xFFFF));
  char name[24]; snprintf(name, sizeof name, "XEMS Motion %s", devId);

  // Bluetooth runs on Nordic's SoftDevice S140 7.3.0 (flash 0x1000–0x27000). Some XIAO boards come without it (or with
  // another one): calling it then crashes the start (the owner's sensors: blue → red over and over). Look first.
  sdFwid = (*(volatile uint32_t *)0x3004 == 0x51B1E5DB) ? *(volatile uint16_t *)0x300C : 0;
  if (sdFwid != 0x0123) { stage(3, 5, sdFwid ? "bluetooth: other softdevice" : "bluetooth: no softdevice"); }
  else if (lastHang == 6) { stage(3, 5, "bluetooth: froze twice, off"); }
  else {
  // second try after a freeze: the plainest settings (default bandwidth, default power)
  bool light = lastHang == 3;
  stage(light ? 6 : 3, 4, light ? "bluetooth (plain)" : "bluetooth");
  if (!light) Bluefruit.configPrphBandwidth(BANDWIDTH_MAX);
  Bluefruit.begin();
  Bluefruit.setName(name);
  if (!light) Bluefruit.setTxPower(4);
  Bluefruit.autoConnLed(false);
  Bluefruit.Periph.setConnectCallback(connectCb);
  dataSvc.begin();
  dataChr.setProperties(CHR_PROPS_NOTIFY);
  dataChr.setPermission(SECMODE_OPEN, SECMODE_NO_ACCESS);
  dataChr.setFixedLen(20);
  dataChr.begin();
  bleuart.begin();
  { uint16_t inLen[] = {9};
    pad.setReportLen(inLen, NULL, NULL);
    pad.enableKeyboard(false); pad.enableMouse(false);
    pad.setReportMap(padMap, sizeof padMap);
    pad.begin(); }
  // advertising: flags 3 + gamepad appearance 4 + HID 4 + the data service 18 = 29 of 31 bytes (no TX power any more)
  Bluefruit.Advertising.addFlags(BLE_GAP_ADV_FLAGS_LE_ONLY_GENERAL_DISC_MODE);
  Bluefruit.Advertising.addAppearance(BLE_APPEARANCE_HID_GAMEPAD);
  Bluefruit.Advertising.addService(pad);
  Bluefruit.Advertising.addService(dataSvc);
  Bluefruit.ScanResponse.addName();
  Bluefruit.Advertising.restartOnDisconnect(true);
  Bluefruit.Advertising.setInterval(160, 480);
  Bluefruit.Advertising.setFastTimeout(30);
  Bluefruit.Advertising.start(0);
  btOk = true;
  }
  wdtFeed();
  stage(4, 2, "battery");
  readBattery();
  lastMove = lastConn = millis();
  imuOk = ok;
  stage(0, 2, "ready");
  // "I am alive": green for a second, then white flash — visible on every power-up / reset
  delay(1000); ledShow(7); delay(150); ledShow(0);
  wdtFeed();
}

static inline int16_t clamp16(float v) { return v > 32767 ? 32767 : v < -32768 ? -32768 : (int16_t)lrintf(v); }

void loop() {
  wdtFeed();
  if (standby) {
    uint32_t now = millis();
    if (wakeReq || Serial || (imuOk && digitalRead(PIN_LSM6DS3TR_C_INT1))) { leaveStandby(); return; }
    if (now - lastBat > 1800000UL) { lastBat = now; readBattery(); }
    if (now - standbyAt > 48UL * 3600000UL || (batPct >= 0 && batPct < 3)) goSleep();
    delay(200);                             // FreeRTOS idles the CPU (tickless) between looks
    return;
  }
  uint8_t st = 0;
  // fw 9: the chip raises INT1 when a sample is ready; until then the CPU sleeps (delay at the end). A missing
  // INT1 (never seen yet) cannot stall the stream: after 20 ms it reads anyway, as fw 8 did all the time.
  static uint32_t lastRead = 0;
  const bool ready = imuOk && (digitalRead(PIN_LSM6DS3TR_C_INT1) || millis() - lastRead > 20);
  if (ready) { lastRead = millis(); markStage(2); imuRead(0x1E, &st, 1); }   // a freeze in the chip's I2C = chip freeze
  if ((st & 3) == 3) {
    uint8_t r[12];
    if (imuRead(0x22, r, 12) == 12) {
      const float G = 0.070f * 0.01745329f, A = 0.000488f;   // 70 m°/s/LSB, 0.488 mg/LSB
      float gx = (int16_t)(r[0] | r[1] << 8) * G, gy = (int16_t)(r[2] | r[3] << 8) * G, gz = (int16_t)(r[4] | r[5] << 8) * G;
      float ax = (int16_t)(r[6] | r[7] << 8) * A, ay = (int16_t)(r[8] | r[9] << 8) * A, az = (int16_t)(r[10] | r[11] << 8) * A;
      fus.update(gx, gy, gz, ax, ay, az, 1.f / IMU_RATE);
      if (!fus.still) lastMove = millis();
      { const float a3[3] = {fus.af[0], fus.af[1], fus.af[2]}; float aw[3]; qrot(fus.q, a3, aw, false);   // 20 Hz low-passed
        sumG[0] += gx - fus.bias[0]; sumG[1] += gy - fus.bias[1]; sumG[2] += gz - fus.bias[2];
        for (int i = 0; i < 3; i++) sumA[i] += aw[i];
        float m = sqrtf(ax * ax + ay * ay + az * az); if (m > peakA) peakA = m; }
      if (++padSub >= 2 && btOk && Bluefruit.connected()) {      // the gamepad report, 104 Hz (fw 10)
        padSub = 0;
        const float s = fus.q[0] < 0 ? -1.f : 1.f;
        // fw 12: Ry from the 20 Hz low-passed acceleration (raw, the suit's 50–100 Hz impulses alias into the game's
        // once-a-frame reading and its double integration — the shin's height for the VR legs)
        const float a3[3] = {fus.af[0], fus.af[1], fus.af[2]}; float aw[3]; qrot(fus.q, a3, aw, false);   // world: z up
        int16_t v[4] = {clamp16(s * fus.q[1] * 32767), clamp16(s * fus.q[2] * 32767), clamp16(s * fus.q[3] * 32767),
                        clamp16((aw[2] - 1.f) * 8192)};
        uint8_t r[9]; r[0] = 0;
        for (int i = 0; i < 4; i++) { r[1 + 2 * i] = v[i] & 0xFF; r[2 + 2 * i] = (uint16_t)v[i] >> 8; }
        pad.inputReport(1, r, 9);                              // nothing happens until a host has paired and subscribed
      }
      if (++sub >= decim) {
        const float n = sub;
        sub = 0;
        { float mw[3] = {sumA[0] / n, sumA[1] / n, sumA[2] / n}, ma[3]; qrot(fus.q, mw, ma, true);
          ax = ma[0]; ay = ma[1]; az = ma[2];
          gx = sumG[0] / n + fus.bias[0]; gy = sumG[1] / n + fus.bias[1]; gz = sumG[2] / n + fus.bias[2]; }
        const bool hit = peakA > 2.5f;
        for (int i = 0; i < 3; i++) sumG[i] = sumA[i] = 0;
        peakA = 0;
        float s = fus.q[0] < 0 ? -1.f : 1.f;     // w ≥ 0 so the host can rebuild it
        uint8_t f[20];
        int16_t v[9] = {clamp16(s * fus.q[1] * 32767), clamp16(s * fus.q[2] * 32767), clamp16(s * fus.q[3] * 32767),
                        clamp16((gx - fus.bias[0]) * 57.29578f * 16), clamp16((gy - fus.bias[1]) * 57.29578f * 16),
                        clamp16((gz - fus.bias[2]) * 57.29578f * 16),
                        clamp16(ax * 1000), clamp16(ay * 1000), clamp16(az * 1000)};
        f[0] = seq++;
        f[1] = (fus.still ? 1 : 0) | (fus.biasReady ? 2 : 0) | (batPct >= 0 && batPct < 10 ? 4 : 0) | (hit ? 8 : 0);
        for (int i = 0; i < 9; i++) { f[2 + 2 * i] = v[i] & 0xFF; f[3 + 2 * i] = (uint16_t)v[i] >> 8; }
        if (btOk && Bluefruit.connected()) dataChr.notify(f, 20);
      }
    }
  }
  if (ready) markStage(0);
  while (Serial.available()) feed(Serial.read(), usbLine, usbLen);
  if (btOk) while (bleuart.available()) feed(bleuart.read(), bleLine, bleLen);
  uint32_t now = millis();
  if (now - lastBat > 30000) {
    lastBat = now; readBattery();
    char b[32]; snprintf(b, sizeof b, "BAT %d %.2f", batPct, batV); say(b);
  }
  // LED: the colour the host gave (blinking first 4 s); otherwise blue blink = waiting, short green = connected
  // LED, easy to read (fw 2): red fast = the motion sensor chip does not answer · orange double blink = battery low ·
  // blue once a second = waiting for the phone · green short every 2 s = connected · a colour = its place on the body
  bool low = batPct >= 0 && batPct < 10;
  bool conn = btOk && Bluefruit.connected();
  if (!btOk) ledShow((now / 400) % 2 ? 1 : 4);          // red / blue slowly: no Bluetooth (no SoftDevice) — reload it
  else if (!imuOk) ledShow((now / 120) % 2 ? 1 : 0);
  else if (ledColor) ledShow(ledBlink && now < ledBlinkUntil && (now / 150) % 2 ? 0 : ledColor);
  else if (low && (now % 3000) < 400) ledShow((now % 3000) < 120 || ((now % 3000) > 250 && (now % 3000) < 370) ? 3 : 0);
  else if (!conn) ledShow((now % 1000) < 150 ? 4 : 0);
  else ledShow((now % 2000) < 100 ? 2 : 0);
  // on the USB cable: say who I am every 2 s (the app's "check the sensor" reads it)
  if (now - lastHello > 2000) { lastHello = now; if (Serial) info(); }
  // no phone for 5 min → standby (never on the USB cable); an empty battery → deep sleep
  if (conn || Serial) lastConn = now;
  if (btOk && now - lastConn > 300000UL) enterStandby();
  else if (batPct >= 0 && batPct < 3 && !Serial) goSleep();
  // battery (fw 9): nothing to read yet → the CPU sleeps ~1 ms (FreeRTOS tickless idle) instead of asking the chip
  if (imuOk && !digitalRead(PIN_LSM6DS3TR_C_INT1)) delay(1);
}
