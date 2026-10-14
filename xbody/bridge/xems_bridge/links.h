// Types for xems_bridge.ino (the Arduino builder puts its function prototypes above the sketch's own types).
#pragma once
#include <bluefruit.h>

enum Prof { P_NONE = 0, P_FE50, P_FFF0, P_NUS };
static const char *profName(int p) { return p == P_FE50 ? "FE50" : p == P_FFF0 ? "FFF0" : p == P_NUS ? "NUS" : "-"; }

static const uint8_t NUS_SVC[16] = {0x9E,0xCA,0xDC,0x24,0x0E,0xE5,0xA9,0xE0,0x93,0xF3,0xA3,0xB5,0x01,0x00,0x40,0x6E};
static const uint8_t NUS_RX[16]  = {0x9E,0xCA,0xDC,0x24,0x0E,0xE5,0xA9,0xE0,0x93,0xF3,0xA3,0xB5,0x02,0x00,0x40,0x6E};
static const uint8_t NUS_TX[16]  = {0x9E,0xCA,0xDC,0x24,0x0E,0xE5,0xA9,0xE0,0x93,0xF3,0xA3,0xB5,0x03,0x00,0x40,0x6E};

struct Link {
  BLEClientService fe50, fff0, nus;
  BLEClientCharacteristic fe51, fff1, fff2, nusRx, nusTx;
  uint16_t conn;
  int prof;
  uint8_t mac[6];
  uint8_t safe[64];
  uint8_t safeLen;
  Link() : fe50(BLEUuid((uint16_t)0xFE50)), fff0(BLEUuid((uint16_t)0xFFF0)), nus(BLEUuid(NUS_SVC)),
           fe51(BLEUuid((uint16_t)0xFE51)), fff1(BLEUuid((uint16_t)0xFFF1)), fff2(BLEUuid((uint16_t)0xFFF2)),
           nusRx(BLEUuid(NUS_RX)), nusTx(BLEUuid(NUS_TX)), conn(BLE_CONN_HANDLE_INVALID), prof(P_NONE), safeLen(0) {}
  BLEClientCharacteristic *writer() { return prof == P_FE50 ? &fe51 : prof == P_FFF0 ? &fff2 : prof == P_NUS ? &nusRx : 0; }
};
