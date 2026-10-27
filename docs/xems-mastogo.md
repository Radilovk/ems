# MASTOGO H-024B (DOMAS / PNrelief) — BLE protocol

Source: PNrelief 2.1.0 (`com.roblink.pnrelief`, Flutter, Dart 3.5.3) decompiled with blutter, 2026-10-27.
Module for this unit: `zx_571c_26j4` (BLE name prefix `MASTOGO H-`). Sibling units (same AT family):
`rl_023h_6e1`, `rl_023i_12h1/12h2`, `rl_084a`, `zx_571`, `zx_571b_12h1/12h2`.

## Transport
- Service `FFF0`: write `FFF5`, notify `FFF4`. `FF00`/`FF01` = OTA. `180A/2A26` = firmware revision.
- ASCII lines, terminator `\r\n` (names `DomasA`/`DomasG` use a different end key; not this unit).
- App send queue: one command per **100 ms**, write timeout **3 s**, retried on error. App timers: 1 s and 100 ms.
- Replies: `OK`, `ERROR`, or `+TAG:value\r`. Unsolicited reports arrive on the same notify.

## Commands (all the app ever sends to H-024B)
| Command | Meaning |
|---|---|
| `AT+QPOWS` | start output |
| `AT+QPOWP` | pause output (also sent right after every mode change) |
| `AT+QPOWP?` | run state |
| `AT+CSTR=0,<n>` | intensity, `n` 0–25 (app clamps); `0` = channel |
| `AT+CSTR?` | intensity |
| `AT+CMODE=0,<id>` | program id 0–24 |
| `AT+CMODE?` | program |
| `AT+CDCLK=HHMMSS` | countdown, `000001`…`010000` (≤ 60 min) |
| `AT+CDCLK?` | time left |
| `AT+CBC?` | battery |
| `AT+WSDT=` / `?` | auto-off time (used by `zx_571b_12h2`; untested on H-024B) |
| `AT+CHANNEL=` | channel select (used by `rl_084a` only) |

App start sequence: `AT+QPOWS` → `AT+CSTR=0,1` → `AT+QPOWS` → `AT+CDCLK=<t>`.
On connect it queries `CMODE? CSTR? CDCLK? QPOWP? CBC?`.

## Feedback
| Line | Meaning |
|---|---|
| `+CSTR:<ch>,<n>` | intensity (also when changed from the unit's buttons) |
| `+CMODE:<ch>,<id>` | program |
| `+CDCLK:HHMMSS` / `+CLKEND:` | time left / timer ended |
| `+QPOWP:` | paused/running |
| `+QPOWD:<r>` | powered off: 0 idle timeout, 1 continuous-output timeout, 2 low battery, 3 long press |
| `+CBC:<n>` | battery |
| `+CLOAD:0` | electrodes lost contact → app sets intensity to 0 |
| `ERROR` `102` | no load (pads not on skin) → "not attached" dialog |
| `+CHEART` | heartbeat |
| `+WSDT:` | auto-off time |

## Programs (firmware-fixed; app only sends the id)
TENS 0–11 (Standard, Neck, Trapezius, Shoulder, Shoulder blades, Elbow, Hand/Wrist, Lower back, Legs, Knee, Calf, Foot),
EMS 12–20 (Standard, Neck, Trapezius, Triceps, Shoulder blades, Biceps, Lower back, Legs, Calf),
FEMALE 21–24 (Standard, Belly 1, Back 1, Back 2). App default 20 min.

## Limits — what is NOT in the protocol
No frequency, pulse width, waveform, ramp or on/off-time command exists anywhere in the app (all 8 modules, debug page
included). Those live inside each firmware program. Controllable from outside: program id, intensity 0–25,
run/pause, timer, (auto-off, channel on siblings). The `mode_waves/*.png` assets are pictures only.
Ways to go further: (1) intensity modulation from the host — at most ~10 updates/s through the 100 ms queue;
(2) probe extra AT commands with read-only `?` queries on the real unit; (3) measure each program on a 500 Ω–1 kΩ load
with an oscilloscope to get its real Hz / width / shape; (4) OTA (`FF00/FF01`, `OTA_*_V30` in `zx_571b_12h2`) —
custom firmware would give full control but risks bricking the unit.
