// XEMS suit (stock com.isaigu.gymapp v0.50: train.ble.BleDeviceCommend + train.utils.CommandUtil, read from the
// base APK). Service FFF0 (write FFF2, notify FFF1) or Nordic UART ("nord" suits). docs/xbody-xems-panel.md.
// Frame: 0x53 | len = pdu + 4 | cmd | pdu | sum of all previous bytes (mod 256).
#pragma once
#include "bytes.h"

namespace xems {
enum { HEAD = 0x53, CMD_SETTING = 1, CMD_RUN = 3, CMD_BATTERY = 5, RSP_BATTERY = 6, CMD_START = 0xF1, CMD_STOP = 0xF2 };
enum { CHANNELS = 10 };

Bytes frame(int cmd, const Bytes &pdu);
// cmd 1: pdu[0] = 0, pdu[1..10] = channel % × strength / 100 (the vendor's float math), channels in the suit's order:
// chest, abs, front thigh, calf, arms, traps, back, lower back, glutes, back thigh.
Bytes strengths(const int pct[CHANNELS], int strength);
// cmd 3: seconds left (0 < s ≤ 5 → 5), Hz, width/50 µs, impulse s, pause s (1 when seconds left = 0), 0, 0, massage
// cycle 0, output on (1) / off (0).
Bytes run(int secondsLeft, int hz, int widthUs, int onS, int offS, bool outputOn);
Bytes start();     // F1 [00]
Bytes stop();      // F2 [00]
Bytes battery();   // 05 []
// Battery reply (cmd 6): pdu[0] = %, −1 if the notification is not one.
int batteryPct(const Bytes &notif);
}
