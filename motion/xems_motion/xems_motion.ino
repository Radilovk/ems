// XEMS Motion — one body sensor: Seeed XIAO nRF52840 Sense / Sense Plus, on-board IMU LSM6DS3TR-C.
// All five sensors (wrists, shanks above the ankle, upper back T1–T2) run this same firmware; WHERE each one sits is
// found by the host from the calibration movement (docs/xems-motion.md), never configured on the sensor.
// The sensor fuses its own orientation (fusion.h, 208 Hz) and streams it with the raw motion over BLE.
// Build: sh scripts/motion/build-motion.sh → motion/xems-motion-sense.uf2 (+ -sense-plus, + Bluetooth OTA zips).
//
// BLE name "XEMS Motion XXXX" (XXXX = last 2 bytes of the chip address). Two services:
//  * data  6E400101-B5A3-F393-E0A9-E50E24DCCA9E, characteristic …0102 (notify), one 20-byte frame per sample:
//      u8 seq | u8 flags (b0 still, b1 bias ready, b2 low battery) | i16 qx qy qz (Q15, w ≥ 0 ⇒ w = √(1−x²−y²−z²))
//      | i16 gx gy gz (°/s × 16, bias removed) | i16 ax ay az (mg, raw specific force)      — all little-endian
//  * text  Nordic UART 6E400001-…, one line each way (also on USB serial):
//      Host → sensor                       Sensor → host
//        info                                INFO XEMS-MOTION <ver> id=<XXXX> imu=<0|1> rate=<hz> bat=<%> <V> bias=<0|1> t=<°C>
//        rate 25|50|100                      OK rate <hz>
//        led off|red|green|blue|yellow|cyan|magenta|white [blink]   OK led <color>   (shows the found position)
//        bias                                OK bias  (hold still ~1 s: the gyro bias is learned again)
//        level                               OK level (orientation restarts from gravity, heading 0)
//        sleep                               OK sleep (deep sleep; wakes on a shake or RESET)
//                                            BAT <%> <V>   every 30 s
#include <bluefruit.h>
#include <Wire.h>
#include "fusion.h"

#define FW_VER "2"
#define IMU_ADDR 0x6A
#define IMU_RATE 208.f

BLEUart bleuart;
BLEService dataSvc("6E400101-B5A3-F393-E0A9-E50E24DCCA9E");
BLECharacteristic dataChr("6E400102-B5A3-F393-E0A9-E50E24DCCA9E");
MotionFusion fus;
static uint8_t seq = 0, decim = 4;          // 208/4 = 52 Hz by default
static uint8_t sub = 0;
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

// ---------- IMU (direct registers: no library, exact ODR/range control)
static void imuWrite(uint8_t r, uint8_t v) { Wire1.beginTransmission(IMU_ADDR); Wire1.write(r); Wire1.write(v); Wire1.endTransmission(); }
static uint8_t imuRead(uint8_t r, uint8_t *buf, uint8_t n) {
  Wire1.beginTransmission(IMU_ADDR); Wire1.write(r);
  if (Wire1.endTransmission(false)) return 0;
  uint8_t got = Wire1.requestFrom((uint8_t)IMU_ADDR, n);
  for (uint8_t i = 0; i < got; i++) buf[i] = Wire1.read();
  return got;
}
static bool imuBegin() {
  pinMode(PIN_LSM6DS3TR_C_POWER, OUTPUT); digitalWrite(PIN_LSM6DS3TR_C_POWER, HIGH);
  delay(20);
  Wire1.begin(); Wire1.setClock(400000);
  uint8_t who = 0; imuRead(0x0F, &who, 1);
  if (who != 0x6A) return false;
  imuWrite(0x12, 0x01); delay(20);          // CTRL3_C SW_RESET
  imuWrite(0x12, 0x44);                     // BDU + IF_INC
  imuWrite(0x10, 0x54);                     // CTRL1_XL 208 Hz, ±16 g (ankle landings)
  imuWrite(0x11, 0x5C);                     // CTRL2_G 208 Hz, ±2000 °/s (fast punches)
  return true;
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
  if (Bluefruit.connected() && bleuart.notifyEnabled()) { bleuart.write((const uint8_t *)s, strlen(s)); bleuart.write((const uint8_t *)"\n", 1); }
}

static void info() {
  uint8_t t[2] = {0, 0}; imuRead(0x20, t, 2);
  float temp = 25.f + (int16_t)(t[0] | t[1] << 8) / 256.f;
  char b[120];
  snprintf(b, sizeof b, "INFO XEMS-MOTION %s id=%s imu=%d rate=%d bat=%d %.2f bias=%d t=%.1f", FW_VER, devId, imuOk ? 1 : 0,
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
  else if (!strcmp(s, "sleep")) { say("OK sleep"); delay(100); goSleep(); }
  else say("ERR ?");
}

static void feed(char c, char *line, uint8_t &len) {
  if (c == '\n' || c == '\r') { if (len) { line[len] = 0; command(line); len = 0; } }
  else if (len < 63) line[len++] = c;
}

// deep sleep, woken by motion on INT1 (wake-up interrupt of the IMU)
static void goSleep() {
  ledShow(0);
  imuWrite(0x10, 0x20);                     // accel 26 Hz low power, gyro off
  imuWrite(0x11, 0x00);
  imuWrite(0x5C, 0x00);                     // WAKE_UP_DUR
  imuWrite(0x5B, 0x02);                     // WAKE_UP_THS ≈ 2 × FS/64
  imuWrite(0x58, 0x80);                     // TAP_CFG: interrupts enable
  imuWrite(0x5E, 0x20);                     // MD1_CFG: wake-up → INT1
  pinMode(PIN_LSM6DS3TR_C_INT1, INPUT_PULLDOWN_SENSE);
  sd_power_system_off();
}

static void connectCb(uint16_t h) {
  BLEConnection *c = Bluefruit.Connection(h);
  c->requestConnectionParameter(6, 0, 400);   // 7.5 ms: five sensors at 100 Hz still fit
  info();
}

void setup() {
  pinMode(LED_RED, OUTPUT); pinMode(LED_GREEN, OUTPUT); pinMode(LED_BLUE, OUTPUT);
  pinMode(VBAT_ENABLE, OUTPUT); digitalWrite(VBAT_ENABLE, LOW);
  ledShow(0);
  Serial.begin(115200);
  bool ok = imuBegin();
  uint32_t a0 = NRF_FICR->DEVICEADDR[0];
  snprintf(devId, sizeof devId, "%04X", (unsigned)(a0 & 0xFFFF));
  char name[24]; snprintf(name, sizeof name, "XEMS Motion %s", devId);

  Bluefruit.configPrphBandwidth(BANDWIDTH_MAX);
  Bluefruit.begin();
  Bluefruit.setName(name);
  Bluefruit.setTxPower(4);
  Bluefruit.autoConnLed(false);
  Bluefruit.Periph.setConnectCallback(connectCb);
  dataSvc.begin();
  dataChr.setProperties(CHR_PROPS_NOTIFY);
  dataChr.setPermission(SECMODE_OPEN, SECMODE_NO_ACCESS);
  dataChr.setFixedLen(20);
  dataChr.begin();
  bleuart.begin();
  Bluefruit.Advertising.addFlags(BLE_GAP_ADV_FLAGS_LE_ONLY_GENERAL_DISC_MODE);
  Bluefruit.Advertising.addTxPower();
  Bluefruit.Advertising.addService(dataSvc);
  Bluefruit.ScanResponse.addName();
  Bluefruit.Advertising.restartOnDisconnect(true);
  Bluefruit.Advertising.setInterval(160, 480);
  Bluefruit.Advertising.setFastTimeout(30);
  Bluefruit.Advertising.start(0);
  readBattery();
  lastMove = millis();
  imuOk = ok;
  // "I am alive": green for a second, then white flash — visible on every power-up / reset
  ledShow(2); delay(1000); ledShow(7); delay(150); ledShow(0);
}

static inline int16_t clamp16(float v) { return v > 32767 ? 32767 : v < -32768 ? -32768 : (int16_t)lrintf(v); }

void loop() {
  uint8_t st = 0;
  if (imuOk) imuRead(0x1E, &st, 1);
  if ((st & 3) == 3) {
    uint8_t r[12];
    if (imuRead(0x22, r, 12) == 12) {
      const float G = 0.070f * 0.01745329f, A = 0.000488f;   // 70 m°/s/LSB, 0.488 mg/LSB
      float gx = (int16_t)(r[0] | r[1] << 8) * G, gy = (int16_t)(r[2] | r[3] << 8) * G, gz = (int16_t)(r[4] | r[5] << 8) * G;
      float ax = (int16_t)(r[6] | r[7] << 8) * A, ay = (int16_t)(r[8] | r[9] << 8) * A, az = (int16_t)(r[10] | r[11] << 8) * A;
      fus.update(gx, gy, gz, ax, ay, az, 1.f / IMU_RATE);
      if (!fus.still) lastMove = millis();
      if (++sub >= decim) {
        sub = 0;
        float s = fus.q[0] < 0 ? -1.f : 1.f;     // w ≥ 0 so the host can rebuild it
        uint8_t f[20];
        int16_t v[9] = {clamp16(s * fus.q[1] * 32767), clamp16(s * fus.q[2] * 32767), clamp16(s * fus.q[3] * 32767),
                        clamp16((gx - fus.bias[0]) * 57.29578f * 16), clamp16((gy - fus.bias[1]) * 57.29578f * 16),
                        clamp16((gz - fus.bias[2]) * 57.29578f * 16),
                        clamp16(ax * 1000), clamp16(ay * 1000), clamp16(az * 1000)};
        f[0] = seq++;
        f[1] = (fus.still ? 1 : 0) | (fus.biasReady ? 2 : 0) | (batPct >= 0 && batPct < 10 ? 4 : 0);
        for (int i = 0; i < 9; i++) { f[2 + 2 * i] = v[i] & 0xFF; f[3 + 2 * i] = (uint16_t)v[i] >> 8; }
        if (Bluefruit.connected()) dataChr.notify(f, 20);
      }
    }
  }
  while (Serial.available()) feed(Serial.read(), usbLine, usbLen);
  while (bleuart.available()) feed(bleuart.read(), bleLine, bleLen);
  uint32_t now = millis();
  if (now - lastBat > 30000) {
    lastBat = now; readBattery();
    char b[32]; snprintf(b, sizeof b, "BAT %d %.2f", batPct, batV); say(b);
  }
  // LED: the colour the host gave (blinking first 4 s); otherwise blue blink = waiting, short green = connected
  // LED, easy to read (fw 2): red fast = the motion sensor chip does not answer · orange double blink = battery low ·
  // blue once a second = waiting for the phone · green short every 2 s = connected · a colour = its place on the body
  bool low = batPct >= 0 && batPct < 10;
  if (!imuOk) ledShow((now / 120) % 2 ? 1 : 0);
  else if (ledColor) ledShow(ledBlink && now < ledBlinkUntil && (now / 150) % 2 ? 0 : ledColor);
  else if (low && (now % 3000) < 400) ledShow((now % 3000) < 120 || ((now % 3000) > 250 && (now % 3000) < 370) ? 3 : 0);
  else if (!Bluefruit.connected()) ledShow((now % 1000) < 150 ? 4 : 0);
  else ledShow((now % 2000) < 100 ? 2 : 0);
  // on the USB cable: say who I am every 2 s (the app's "check the sensor" reads it)
  if (now - lastHello > 2000) { lastHello = now; if (Serial) info(); }
  // nobody connected and no movement for 10 minutes → sleep
  // nobody connected and not moved for 30 min → sleep (a shake or RST wakes it); never on the USB cable
  if (!Bluefruit.connected() && !Serial && now - lastMove > 1800000UL) goSleep();
}
