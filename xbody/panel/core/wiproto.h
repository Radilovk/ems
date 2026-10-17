// WiEMS unit (WiemsPro "WIEMS - EMS Device") — C++ port of WiProto.java, same bytes (wiems/PROTOCOL.md, decoded from
// the owner's capture of the vendor app). One value per characteristic of service 7764d8fe-…: an operation is
// [selector, value…]; the bridge writes the value to the selector's characteristic (docs/xbody-xems-panel.md).
#pragma once
#include "bytes.h"

namespace wi {
enum { OP_CURRENTS = 0, OP_PROGRAM = 1, OP_REST = 2, OP_WIDTHS = 3, OP_RUN = 4 };
// Notifications from the bridge carry a selector too: 0x04 = the run characteristic, 0x10 = battery (2A19).
enum { N_RUN = 0x04, N_BATTERY = 0x10 };
enum { CHANNELS = 10, MAX_CURRENT = 100, PHASE_ARM = 2, PHASE_RUN = 0 };

enum { UNIT_MAX = 20 };                  // the unit's top byte = the vendor's 100 % (94 % → 18 in its capture)
int unit(int pct);                       // 0..100 % → 0..UNIT_MAX
Bytes currents(const int c[CHANNELS]);   // each 0..UNIT_MAX (the unit's bytes), with the vendor's check bits
Bytes zero();
// Dur fr w r Ru Rd dec phase XOR — Dur and dec as the vendor sent them (meaning unknown).
Bytes program(int hz, int workS, int restS, int rampUpS, int rampDownS, int phase);
Bytes rest(int hz, int pct);             // the unit's pause frequency
Bytes widths();                          // the vendor's per-channel widths
Bytes run(bool start);                   // 0x25 start / 0x00 stop
bool runTick(const Bytes &n);            // a run notification "01" (the unit runs: its count-down is over)
// A run notification's value (−1: not one): 01 runs, 00 stopped, 0x80|x its protection tripped (seen "86": a
// strengths write without the check bits — wiems/PROTOCOL.md).
int runCode(const Bytes &n);
int battery(const Bytes &n);             // a battery notification → %, −1 if not one
}
