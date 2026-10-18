// XEMS BLE bridge — Seeed XIAO nRF52840 (Seeeduino:nrf52 core, Bluefruit). The XBody unit's kernel (2.6.35)
// has no Bluetooth LE, so this board is its BLE radio: USB CDC serial (/dev/ttyACM0) ⇄ BLE central. v5: the CDC
// interface says protocol 1 (build-bridge.sh patches the core) — the unit's old cdc-acm ignores protocol 0.
// It knows no suit protocol — the unit builds every frame (xbody/panel/core). Line protocol: docs/xbody-bridge.md.
//
// Host → bridge                          Bridge → host
//   PING                                   HELLO XEMS-BRIDGE <ver> <max links>   (on boot and on PING: PONG <ver>)
//   SCAN 1 | SCAN 0                        ADV <mac> <rssi> <svc> <name>           svc = FE50 | FFF0 | NUS | WIEMS | -
//   CONN <mac>                             LINK <mac> <svc>                        (connected, characteristic found, notify on)
//   W <mac> <hex>                          WOK <mac> | WERR <mac> <why>           (one write in flight per link)
//   SAFE <mac> <hex>                       N <mac> <hex>                           (notification)
//   DISC <mac>                             LOST <mac> <reason> | FAIL <mac> <why> | ERR <text>
//   DFU                                    DFUOK, then every link SAFE + off and the board restarts as its UF2 drive
//                                          (the unit copies the new firmware onto it: /opt/xems/bin/xems-uf2)
// WiEMS (v3): a W / SAFE value is [selector, value…] — the selector picks the unit's characteristic (0 strengths,
// 1 program, 2 rest, 3 widths, 4 run); N lines carry one too (04 run, 10 battery). wiems/PROTOCOL.md.
// Fail-safe: when the host is silent for HOST_TIMEOUT_MS (USB pulled, program dead) every link gets its SAFE frame
// (the suit's "outputs off", set by the host after LINK) and is disconnected.
#include <bluefruit.h>

#define BRIDGE_VER "6"   // keep = /opt/xems/bridge/VERSION (build-bridge.sh writes it)
#define MAX_LINKS 4
#define HOST_TIMEOUT_MS 2500
#define SEEN_MAX 32

#include "links.h"

// To the host straight through TinyUSB: the core's Serial drops every byte while the host has not raised DTR
// (Adafruit_USBD_CDC::write checks tud_cdc_connected), and the XBody unit's 2.6.35 cdc-acm is not to be trusted with
// that — v3 on the unit flashed fine and then said nothing. Without DTR the FIFO is overwritable: never blocks.
static void hostWrite(const uint8_t *b, int n) {
  uint32_t t0 = millis();
  while (n > 0 && millis() - t0 < 200) {
    uint32_t k = tud_cdc_n_write(0, b, n);
    b += k; n -= k;
    tud_cdc_n_write_flush(0);
    if (n) yield();
  }
}
static void hostLine(const char *s) { hostWrite((const uint8_t *)s, strlen(s)); hostWrite((const uint8_t *)"\r\n", 2); }

static Link links[MAX_LINKS];

// A device's name and service often come in different packets (the advertisement, then the scan response a few ms
// later): they are merged per address, and the ADV line goes out again as soon as either is learnt (v5 printed the
// first packet of each second only — the nameless one — so suits that name themselves in the scan response never
// showed up on the unit).
struct Seen { ble_gap_addr_t addr; uint32_t lastMs; bool used; char name[24]; int prof; };
static Seen seen[SEEN_MAX];
static volatile uint32_t advCount = 0;   // reports heard (the unit shows it while it looks for suits)
static bool bleOk = false;

// Callbacks run in the Bluefruit task: they queue lines, loop() writes them to USB.
static SemaphoreHandle_t outMx;
static char outBuf[4096];
static volatile int outLen = 0;
static void out(const char *s) {
  xSemaphoreTake(outMx, portMAX_DELAY);
  int n = strlen(s);
  if (outLen + n + 1 < (int)sizeof(outBuf)) { memcpy(outBuf + outLen, s, n); outBuf[outLen + n] = '\n'; outLen += n + 1; }
  xSemaphoreGive(outMx);
}
static void flushOut() {
  static char tmp[sizeof(outBuf)];
  int n;
  xSemaphoreTake(outMx, portMAX_DELAY);
  n = outLen; memcpy(tmp, outBuf, n); outLen = 0;
  xSemaphoreGive(outMx);
  if (n) hostWrite((const uint8_t *)tmp, n);
}

static void macStr(const uint8_t *m, char *o) {  // BLE addr bytes are little endian
  sprintf(o, "%02X:%02X:%02X:%02X:%02X:%02X", m[5], m[4], m[3], m[2], m[1], m[0]);
}
static bool parseMac(const char *s, uint8_t *m) {
  unsigned v[6];
  if (sscanf(s, "%x:%x:%x:%x:%x:%x", &v[0], &v[1], &v[2], &v[3], &v[4], &v[5]) != 6) return false;
  for (int i = 0; i < 6; i++) m[5 - i] = (uint8_t)v[i];
  return true;
}
static int hexBytes(const char *s, uint8_t *b, int max) {
  int n = 0;
  while (s[0] && s[1] && n < max) {
    unsigned v; if (sscanf(s, "%2x", &v) != 1) return -1;
    b[n++] = (uint8_t)v; s += 2;
  }
  return n;
}
static void hexStr(const uint8_t *b, int n, char *o) { for (int i = 0; i < n; i++) sprintf(o + 2 * i, "%02X", b[i]); o[2 * n] = 0; }

static Link *byConn(uint16_t c) { for (int i = 0; i < MAX_LINKS; i++) if (links[i].conn == c) return &links[i]; return 0; }
static Link *byMac(const uint8_t *m) {
  for (int i = 0; i < MAX_LINKS; i++) if (links[i].conn != BLE_CONN_HANDLE_INVALID && !memcmp(links[i].mac, m, 6)) return &links[i];
  return 0;
}
static Link *freeLink() { for (int i = 0; i < MAX_LINKS; i++) if (links[i].conn == BLE_CONN_HANDLE_INVALID) return &links[i]; return 0; }

static void notifyCb(BLEClientCharacteristic *chr, uint8_t *data, uint16_t len) {
  Link *l = byConn(chr->connHandle());
  if (!l) return;
  char line[300], mac[18], hx[260];
  uint8_t tagged[129];
  if (len > 128) len = 128;
  if (l->prof == P_WIEMS) {   // which characteristic: the host's selector byte first
    tagged[0] = chr == &l->batLvl ? WI_N_BATTERY : WI_N_RUN;
    if (len > 127) len = 127;
    memcpy(tagged + 1, data, len);
    data = tagged; len++;
  }
  macStr(l->mac, mac); hexStr(data, len, hx);
  snprintf(line, sizeof line, "N %s %s", mac, hx);
  out(line);
}

static void scanCb(ble_gap_evt_adv_report_t *r) {
  char name[32] = "", line[96], mac[18];
  if (!Bluefruit.Scanner.parseReportByType(r, BLE_GAP_AD_TYPE_COMPLETE_LOCAL_NAME, (uint8_t *)name, sizeof name - 1))
    Bluefruit.Scanner.parseReportByType(r, BLE_GAP_AD_TYPE_SHORT_LOCAL_NAME, (uint8_t *)name, sizeof name - 1);
  for (char *p = name; *p; p++) if (*p == ' ' || *p < 32) *p = '_';
  int prof = Bluefruit.Scanner.checkReportForUuid(r, BLEUuid((uint16_t)0xFE50)) ? P_FE50
           : Bluefruit.Scanner.checkReportForUuid(r, BLEUuid((uint16_t)0xFFF0)) ? P_FFF0
           : Bluefruit.Scanner.checkReportForUuid(r, BLEUuid(NUS_SVC)) ? P_NUS
           : Bluefruit.Scanner.checkReportForUuid(r, BLEUuid(WI_SVC)) || !strncmp(name, "WIEMS", 5) ? P_WIEMS : P_NONE;
  advCount++;
  // Remember the address (with its type) for CONN; merge what each packet tells.
  int slot = -1, oldest = 0;
  for (int i = 0; i < SEEN_MAX; i++) {
    if (seen[i].used && !memcmp(seen[i].addr.addr, r->peer_addr.addr, 6)) { slot = i; break; }
    if (!seen[i].used) { if (slot < 0) slot = i; }
    else if (seen[i].lastMs < seen[oldest].lastMs) oldest = i;
  }
  if (slot < 0) slot = oldest;
  Seen &s = seen[slot];
  uint32_t now = millis();
  bool same = s.used && !memcmp(s.addr.addr, r->peer_addr.addr, 6);
  if (!same) { memset(&s, 0, sizeof s); s.prof = P_NONE; }
  bool learnt = false;
  if (name[0] && strncmp(s.name, name, sizeof s.name - 1)) { strncpy(s.name, name, sizeof s.name - 1); s.name[sizeof s.name - 1] = 0; learnt = true; }
  if (prof != P_NONE && s.prof != prof) { s.prof = prof; learnt = true; }
  bool fresh = !same || now - s.lastMs >= 1000 || learnt;
  s.addr = r->peer_addr; s.used = true;
  if (fresh) {
    s.lastMs = now;
    macStr(r->peer_addr.addr, mac);
    snprintf(line, sizeof line, "ADV %s %d %s %s", mac, r->rssi, profName(s.prof), s.name[0] ? s.name : "-");
    out(line);
  }
  Bluefruit.Scanner.resume();
}

static void connectCb(uint16_t conn) {
  Link *l = freeLink();
  BLEConnection *c = Bluefruit.Connection(conn);
  char mac[18], line[64];
  ble_gap_addr_t a = c->getPeerAddr();
  macStr(a.addr, mac);
  if (!l) { snprintf(line, sizeof line, "FAIL %s no-free-link", mac); out(line); c->disconnect(); return; }
  l->conn = conn; memcpy(l->mac, a.addr, 6); l->safeLen = 0; l->prof = P_NONE;
  c->requestConnectionParameter(12);   // 15 ms: one frame in flight, ~25 ms write→ACK like the tablets
  if (l->fe50.discover(conn) && l->fe51.discover()) l->prof = P_FE50;
  else if (l->fff0.discover(conn) && l->fff2.discover()) { l->prof = P_FFF0; l->fff1.discover(); }
  else if (l->nus.discover(conn) && l->nusRx.discover()) { l->prof = P_NUS; l->nusTx.discover(); }
  else if (l->wi.discover(conn) && l->wiCur.discover()) {
    l->prof = P_WIEMS;
    l->wiProg.discover(); l->wiRest.discover(); l->wiWid.discover(); l->wiRun.discover();
    if (l->wiRun.discovered()) l->wiRun.enableNotify();
    if (l->bat.discover(conn) && l->batLvl.discover()) l->batLvl.enableNotify();
  }
  if (l->prof == P_NONE) { snprintf(line, sizeof line, "FAIL %s no-suit-service", mac); out(line); c->disconnect(); return; }
  BLEClientCharacteristic *n = l->prof == P_FE50 ? &l->fe51 : l->prof == P_FFF0 ? &l->fff1 : l->prof == P_NUS ? &l->nusTx : 0;
  if (n && n->discovered()) n->enableNotify();
  snprintf(line, sizeof line, "LINK %s %s", mac, profName(l->prof));
  out(line);
}

static void disconnectCb(uint16_t conn, uint8_t reason) {
  Link *l = byConn(conn);
  if (!l) return;
  char mac[18], line[48];
  macStr(l->mac, mac);
  snprintf(line, sizeof line, "LOST %s %u", mac, reason);
  l->conn = BLE_CONN_HANDLE_INVALID; l->prof = P_NONE; l->safeLen = 0;
  out(line);
}

static bool writeTo(Link *l, const uint8_t *b, int n) {
  BLEClientCharacteristic *w = l->writer();
  if (l->prof == P_WIEMS) {   // [selector, value…]
    if (n < 2 || b[0] >= WI_OPS) return false;
    w = l->wiOp(b[0]); b++; n--;
  }
  if (!w || !w->discovered()) return false;
  // Write with response where the suit has it (FE51: props 0x1a) — the ACK paces the host, one frame in flight.
  if (w->properties() & 0x08) return w->write_resp(b, n) == n;
  return w->write(b, n) == n;
}

static uint32_t lastHostMs = 0;
static bool hostSeen = false;

static void failSafe() {
  for (int i = 0; i < MAX_LINKS; i++) {
    Link *l = &links[i];
    if (l->conn == BLE_CONN_HANDLE_INVALID) continue;
    if (l->safeLen) writeTo(l, l->safe, l->safeLen);
    Bluefruit.disconnect(l->conn);
  }
}

static void command(char *s) {
  char *cmd = strtok(s, " "), *a = strtok(0, " "), *b = strtok(0, " ");
  char line[96];
  uint8_t mac[6], buf[64];
  if (!cmd) return;
  lastHostMs = millis(); hostSeen = true;
  if (!strcmp(cmd, "PING")) {
    char pong[40];
    snprintf(pong, sizeof pong, "PONG " BRIDGE_VER " %lu%s", (unsigned long)advCount, bleOk ? "" : " ble-off");
    hostLine(pong);
    return;
  }
  if (!strcmp(cmd, "DFU")) {   // firmware update from the unit: outputs off first, then the UF2 bootloader
    failSafe();
    hostLine("DFUOK");
    tud_cdc_n_write_flush(0);
    delay(300);
    enterUf2Dfu();
    return;
  }
  if (!strcmp(cmd, "SCAN")) {
    if (a && a[0] == '1') hostLine(bleOk && Bluefruit.Scanner.start(0) ? "SCANNING 1" : "ERR ble-scan");
    else { Bluefruit.Scanner.stop(); hostLine("SCANNING 0"); }
    return;
  }
  if (!a || !parseMac(a, mac)) { snprintf(line, sizeof line, "ERR bad-mac %s", cmd); hostLine(line); return; }
  if (!strcmp(cmd, "CONN")) {
    if (byMac(mac)) { snprintf(line, sizeof line, "ERR already-linked %s", a); hostLine(line); return; }
    for (int i = 0; i < SEEN_MAX; i++)
      if (seen[i].used && !memcmp(seen[i].addr.addr, mac, 6)) {
        if (!Bluefruit.Central.connect(&seen[i].addr)) { snprintf(line, sizeof line, "FAIL %s connect", a); hostLine(line); }
        return;
      }
    snprintf(line, sizeof line, "FAIL %s not-seen", a); hostLine(line);
    return;
  }
  Link *l = byMac(mac);
  if (!l) { snprintf(line, sizeof line, "WERR %s no-link", a); hostLine(line); return; }
  if (!strcmp(cmd, "DISC")) { Bluefruit.disconnect(l->conn); return; }
  int n = b ? hexBytes(b, buf, sizeof buf) : -1;
  if (n <= 0) { snprintf(line, sizeof line, "WERR %s bad-hex", a); hostLine(line); return; }
  if (!strcmp(cmd, "SAFE")) { memcpy(l->safe, buf, n); l->safeLen = n; snprintf(line, sizeof line, "SAFEOK %s", a); hostLine(line); return; }
  if (!strcmp(cmd, "W")) {
    snprintf(line, sizeof line, writeTo(l, buf, n) ? "WOK %s" : "WERR %s write", a);
    flushOut();          // a notification that came before the ACK goes out first
    hostLine(line);
    return;
  }
  snprintf(line, sizeof line, "ERR unknown %s", cmd); hostLine(line);
}

void setup() {
  outMx = xSemaphoreCreateMutex();
  pinMode(LED_BLUE, OUTPUT); pinMode(LED_GREEN, OUTPUT); pinMode(LED_RED, OUTPUT);
  digitalWrite(LED_RED, HIGH); digitalWrite(LED_GREEN, HIGH); digitalWrite(LED_BLUE, HIGH);   // active low: off
  Serial.begin(115200);
  Bluefruit.configCentralBandwidth(BANDWIDTH_MAX);
  bleOk = Bluefruit.begin(0, MAX_LINKS);   // false: the SoftDevice refused the config (RAM) — said in every HELLO
  Bluefruit.setName("XEMS-Bridge");
  Bluefruit.setTxPower(8);
  Bluefruit.autoConnLed(false);
  for (int i = 0; i < MAX_LINKS; i++) {
    Link &l = links[i];
    l.fe50.begin(); l.fe51.setNotifyCallback(notifyCb); l.fe51.begin(&l.fe50);
    l.fff0.begin(); l.fff1.setNotifyCallback(notifyCb); l.fff1.begin(&l.fff0); l.fff2.begin(&l.fff0);
    l.nus.begin();  l.nusTx.setNotifyCallback(notifyCb); l.nusTx.begin(&l.nus); l.nusRx.begin(&l.nus);
    l.wi.begin(); l.wiCur.begin(&l.wi); l.wiProg.begin(&l.wi); l.wiRest.begin(&l.wi); l.wiWid.begin(&l.wi);
    l.wiRun.setNotifyCallback(notifyCb); l.wiRun.begin(&l.wi);
    l.bat.begin(); l.batLvl.setNotifyCallback(notifyCb); l.batLvl.begin(&l.bat);
  }
  Bluefruit.Central.setConnectCallback(connectCb);
  Bluefruit.Central.setDisconnectCallback(disconnectCb);
  Bluefruit.Scanner.setRxCallback(scanCb);
  Bluefruit.Scanner.restartOnDisconnect(false);
  Bluefruit.Scanner.useActiveScan(true);   // names come in the scan response
  Bluefruit.Scanner.setInterval(160, 80);  // 100 ms / 50 ms
}

void loop() {
  static char line[300];
  static int len = 0;
  static uint32_t helloMs = 0;
  while (Serial.available()) {
    char c = Serial.read();
    if (c == '\r') continue;
    if (c == '\n') { line[len] = 0; if (len) command(line); len = 0; }
    else if (len < (int)sizeof line - 1) line[len++] = c;
  }
  flushOut();
  uint32_t now = millis();
  if (!hostSeen && now - helloMs > 1000) {   // until the host speaks, say who we are once a second (DTR or not)
    helloMs = now;
    char h[48]; snprintf(h, sizeof h, "HELLO XEMS-BRIDGE " BRIDGE_VER " %d", MAX_LINKS); hostLine(h);
    if (!bleOk) hostLine("ERR ble-start");
  }
  if (hostSeen && now - lastHostMs > HOST_TIMEOUT_MS) { failSafe(); hostSeen = false; }
  int linked = 0;
  for (int i = 0; i < MAX_LINKS; i++) if (links[i].conn != BLE_CONN_HANDLE_INVALID) linked++;
  digitalWrite(LED_GREEN, linked ? LOW : HIGH);
  digitalWrite(LED_BLUE, Bluefruit.Scanner.isRunning() && (now / 250) % 2 ? LOW : HIGH);
  delay(2);
}
