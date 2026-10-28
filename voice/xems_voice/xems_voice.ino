// XEMS voice — Seeed XIAO nRF52840 Sense / Sense Plus (Seeeduino:nrf52 core, Bluefruit). The on-board PDM mic hears
// the trainer; the recogniser (kws.h, the trainer's own recorded examples) turns isolated loud words into commands
// and says them as text lines over BLE (Nordic UART service, name "XEMS Voice") and USB serial alike. It drives no
// unit itself: the tablet (XEMS) maps a command onto whatever runs — suit, Bluetens, MASTOGO, WiEMS.
// Protocol and design: docs/xems-voice.md. Build: sh scripts/voice/build-voice.sh → voice/xems-voice*.uf2.
//
// Host → module                     Module → host
//   ping                              HELLO XEMS-VOICE <ver> <examples>       (on boot, on connect, on ping: PONG <ver>)
//   rec <command>                     REC <command> listen | ok <n> <ms> thr=<t> | timeout
//   del <command> | clear             OK del <command> | OK clear
//   list                              LIST start:3 pause:3 … bytes=<b>
//   sens <0.5–2.0>                    OK sens <x>          (> 1 accepts more easily)
//   count 0|1|3                       OK count <n>         (start needs: nothing | "три" | "едно, две, три")
//   mute 1|0                          OK mute <n>          (words still HEARD, no CMD)
//   meter 1|0                         LVL <dB> <floor dB>  (10 per second while on)
//   gain <0–80>                       OK gain <n>          (PDM gain, default 40)
//                                     HEARD <command|-> d=.. d2=.. thr=.. len=<ms> ok|no   (every word)
//                                     CNT 1|2|3            (the countdown)
//                                     CMD start|pause|stop|plus|minus <score>   ← the tablet acts on these
//                                     NOCOUNT start        (start heard without the countdown)
//                                     SKIP short|long|soft len=<ms> db=<over the floor>  (a sound, not a word)
// Commands: start pause stop plus minus one two three (one/two/three = "едно", "две", "три").
#include <bluefruit.h>
#include <PDM.h>
#include <Adafruit_LittleFS.h>
#include <InternalFileSystem.h>
#include "kws.h"

#define VOICE_VER "6"   // = VoiceUsb.FW in XEMS: an older module is offered the update
#define STORE "/xems-voice.bin"
#define REC_TIMEOUT_MS 8000

using namespace Adafruit_LittleFS_Namespace;

static kws::Engine eng;
static BLEUart bleuart;

// ---- audio: the PDM interrupt fills a ring, the loop drains it (a DTW pass may take ~100 ms)
#define ARING 8192
static volatile int16_t aring[ARING];
static volatile uint32_t aHead = 0;
static uint32_t aTail = 0;
static volatile uint32_t aLost = 0;
static int16_t pdmBuf[512];

static void onPdm() {
  int n = PDM.available();
  if (n > (int)sizeof pdmBuf) n = sizeof pdmBuf;
  PDM.read(pdmBuf, n);
  n /= 2;
  for (int i = 0; i < n; i++) {
    if (aHead - aTail >= ARING) { aLost++; continue; }
    aring[aHead % ARING] = pdmBuf[i];
    aHead++;
  }
}

// ---- out: every line to USB and BLE
static void line(const char *s) {
  Serial.print(s);
  Serial.print("\r\n");
  if (Bluefruit.connected() && bleuart.notifyEnabled()) {
    bleuart.write((const uint8_t *)s, strlen(s));
    bleuart.write((const uint8_t *)"\n", 1);
  }
}
static void linef(const char *fmt, ...) {
  char b[160];
  va_list ap;
  va_start(ap, fmt);
  vsnprintf(b, sizeof b, fmt, ap);
  va_end(ap);
  line(b);
}

// ---- LED (active low): blue = waiting for an example, green flash = command, red flash = heard, not a command
static uint32_t ledUntil = 0;
static int ledPin = -1;
static void flash(int pin, int ms) {
  digitalWrite(LED_RED, HIGH); digitalWrite(LED_GREEN, HIGH); digitalWrite(LED_BLUE, HIGH);
  digitalWrite(pin, LOW);
  ledPin = pin;
  ledUntil = millis() + ms;
}

static int examples() {
  int n = 0;
  for (int a = 0; a < kws::NACT; a++) n += eng.count[a];
  return n;
}

// ---- storage: examples + settings in the internal flash, written 2 s after the last change
static bool dirty = false;
static uint32_t dirtyAt = 0;
static uint8_t blob[20000];   // the internal file system has 28 KB
static void markDirty() { dirty = true; dirtyAt = millis(); }
static void save() {
  int n = eng.save(blob, sizeof blob);
  if (n < 0) { line("ERR store full"); return; }
  InternalFS.remove(STORE);
  File f(InternalFS);
  if (!f.open(STORE, FILE_O_WRITE)) { line("ERR store"); return; }
  f.write(blob, n);
  f.close();
  dirty = false;
}
static void load() {
  File f(InternalFS);
  if (!f.open(STORE, FILE_O_READ)) return;
  int n = f.read(blob, sizeof blob);
  f.close();
  if (n <= 0 || !eng.load(blob, n)) { eng.init(); line("ERR store unreadable — examples cleared"); }
}

// ---- engine events: LEDs, and the line goes out
static uint32_t recSince = 0;
static void onEngine(const char *s) {
  if (!strncmp(s, "CMD ", 4)) flash(LED_GREEN, 400);
  else if (!strncmp(s, "CNT ", 4)) flash(LED_GREEN, 120);
  else if (!strncmp(s, "NOCOUNT", 7)) flash(LED_RED, 400);
  else if (!strncmp(s, "HEARD", 5) && strstr(s, " no")) flash(LED_RED, 120);
  else if (!strncmp(s, "REC ", 4) && strstr(s, " ok ")) flash(LED_GREEN, 600);
  line(s);
}

// ---- host lines
static bool meter = false;
static int gain = 40;
static void hello() { linef("HELLO XEMS-VOICE " VOICE_VER " %d", examples()); }
static void handle(char *cmd) {
  char *arg = strchr(cmd, ' ');
  if (arg) *arg++ = 0; else arg = (char *)"";
  int a = kws::actionOf(arg);
  if (!strcmp(cmd, "ping")) linef("PONG " VOICE_VER);
  else if (!strcmp(cmd, "rec")) {
    if (a < 0) { line("ERR rec <start|pause|stop|plus|minus|one|two|three>"); return; }
    if (eng.storedBytes() + 1 + kws::MAXF * kws::DIM > (int)sizeof blob) { line("ERR store full"); return; }
    eng.startRecording(a);
    recSince = millis();
  } else if (!strcmp(cmd, "del")) {
    if (a < 0) { line("ERR del <command>"); return; }
    eng.clearAction(a); markDirty(); linef("OK del %s", kws::ACT[a]);
  } else if (!strcmp(cmd, "clear")) {
    for (int i = 0; i < kws::NACT; i++) eng.clearAction(i);
    markDirty(); line("OK clear");
  } else if (!strcmp(cmd, "list")) {
    char b[160]; int p = snprintf(b, sizeof b, "LIST");
    for (int i = 0; i < kws::NACT; i++) p += snprintf(b + p, sizeof b - p, " %s:%d", kws::ACT[i], eng.count[i]);
    snprintf(b + p, sizeof b - p, " bytes=%d sens=%d count=%d", eng.storedBytes(), (int)(eng.sens * 100), eng.countMode);
    line(b);
  } else if (!strcmp(cmd, "sens")) {
    float s = atof(arg);
    if (s < 0.5f || s > 2.0f) { line("ERR sens 0.5–2.0"); return; }
    eng.sens = s; markDirty(); linef("OK sens %d%%", (int)(s * 100));
  } else if (!strcmp(cmd, "count")) {
    int c = atoi(arg);
    if (c != 0 && c != 1 && c != 3) { line("ERR count 0|1|3"); return; }
    eng.countMode = c; markDirty(); linef("OK count %d", c);
  } else if (!strcmp(cmd, "mute")) { eng.muted = atoi(arg) != 0; linef("OK mute %d", eng.muted); }
  else if (!strcmp(cmd, "meter")) { meter = atoi(arg) != 0; linef("OK meter %d", meter); }
  else if (!strcmp(cmd, "gain")) {
    gain = constrain(atoi(arg), 0, 80); PDM.setGain(gain); linef("OK gain %d", gain);
  } else if (*cmd) linef("ERR unknown %s", cmd);
}

static char usbLine[96], bleLine[96];
static int usbLen = 0, bleLen = 0;
static void feedChar(char c, char *buf, int &len) {
  if (c == '\r' || c == '\n') {
    if (len) { buf[len] = 0; handle(buf); }
    len = 0;
  } else if (len < 95) buf[len++] = c;
}

static void connectCb(uint16_t) { flash(LED_BLUE, 300); }
static void notifyCb(uint16_t, bool on) { if (on) hello(); }

void setup() {
  pinMode(LED_RED, OUTPUT); pinMode(LED_GREEN, OUTPUT); pinMode(LED_BLUE, OUTPUT);
  digitalWrite(LED_RED, HIGH); digitalWrite(LED_GREEN, HIGH); digitalWrite(LED_BLUE, HIGH);
  Serial.begin(115200);
  eng.init();
  eng.emit = onEngine;
  eng.onChange = markDirty;
  InternalFS.begin();
  load();

  Bluefruit.configPrphBandwidth(BANDWIDTH_MAX);
  Bluefruit.begin();
  Bluefruit.setName("XEMS Voice");
  Bluefruit.setTxPower(4);
  Bluefruit.autoConnLed(false);
  Bluefruit.Periph.setConnectCallback(connectCb);
  bleuart.begin();
  bleuart.setNotifyCallback(notifyCb);
  Bluefruit.Advertising.addFlags(BLE_GAP_ADV_FLAGS_LE_ONLY_GENERAL_DISC_MODE);
  Bluefruit.Advertising.addTxPower();
  Bluefruit.Advertising.addService(bleuart);
  Bluefruit.ScanResponse.addName();
  Bluefruit.Advertising.restartOnDisconnect(true);
  Bluefruit.Advertising.setInterval(160, 480);   // 100 ms, then 300 ms
  Bluefruit.Advertising.setFastTimeout(30);
  Bluefruit.Advertising.start(0);

  PDM.onReceive(onPdm);
  PDM.setBufferSize(sizeof pdmBuf);
  if (!PDM.begin(1, kws::SR)) line("ERR mic");
  PDM.setGain(gain);
  hello();
}

void loop() {
  // audio first: everything the mic gave since the last pass
  while (aTail != aHead) {
    eng.push(aring[aTail % ARING]);
    aTail++;
  }
  if (aLost) { linef("ERR audio lost %lu", (unsigned long)aLost); aLost = 0; }

  while (Serial.available()) feedChar(Serial.read(), usbLine, usbLen);
  while (bleuart.available()) feedChar(bleuart.read(), bleLine, bleLen);

  uint32_t now = millis();
  if (eng.recording >= 0 && now - recSince > REC_TIMEOUT_MS) {
    linef("REC %s timeout", kws::ACT[eng.recording]);
    eng.recording = -1;
  }
  // the flash write stalls the loop ≈ 0.5 s: never while an example is awaited or a word is being heard (v4 saved
  // right as the next example was spoken — it was lost)
  if (dirty && now - dirtyAt > 3000 && eng.recording < 0 && eng.finder.state == 0) save();

  static uint32_t lvlAt = 0;
  if (meter && now - lvlAt >= 100) {
    lvlAt = now;
    const float *r = eng.finder.ring[(eng.finder.t + kws::RING - 1) % kws::RING];
    linef("LVL %d %d", (int)r[kws::NMEL], (int)eng.finder.floorDb);
  }

  if (ledPin >= 0 && (int32_t)(now - ledUntil) > 0) { digitalWrite(ledPin, HIGH); ledPin = -1; }
  if (eng.recording >= 0 && ledPin < 0) digitalWrite(LED_BLUE, (now / 200) % 2 ? LOW : HIGH);
  else if (ledPin != LED_BLUE) digitalWrite(LED_BLUE, HIGH);
  yield();
}
