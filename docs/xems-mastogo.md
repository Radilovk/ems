# MASTOGO H-024B (DOMAS / PNrelief) — BLE protocol

Source: PNrelief 2.1.0 (`com.roblink.pnrelief`, Flutter, Dart 3.5.3) decompiled with blutter, 2026-10-27.
Module for this unit: `zx_571c_26j4` (BLE name prefix `MASTOGO H-`). Sibling units (same AT family):
`rl_023h_6e1`, `rl_023i_12h1/12h2`, `rl_084a`, `zx_571`, `zx_571b_12h1/12h2`.

## Hardware (owner's photos, 2026-10-27)
- Board `ZX-571C-24J2 V1.0 2024/04/16`, round, USB-C charging, one button (SW1), LEDs 1–8.
- **U1 SYDTEK SYD8811QN48** — BLE SoC (ARM Cortex-M0), crystal X1; it runs the AT shell, the programs and the
  output timing.
- Output stage: blue inductor L2 + diode D1 + electrolytic E1 (low-ESR, high-voltage tank) = boost converter;
  transistors `1AM` (Q1, Q8 — MMBT3904 class), `2L` (Q2, Q3, Q5, Q6 — MMBT5401, high-voltage PNP), `G1` (Q4, Q7 —
  high-voltage NPN, MMBT5551 class) = an **H-bridge** → rectangular **biphasic** pulses; amplitude = boost voltage.
  Small resistors `510` / `015` in the output path = current sensing (how `+CLOAD` / `ERROR 102` know the pads
  are off).
- So frequency, width, polarity, bursts and the strength steps are all firmware timing — the hardware could do far
  more than the 25 programs. Only own firmware reaches it.
- **P1** — 4 pads next to U1: almost certainly the programming / debug port (SWD or UART). Route to the firmware:
  read it out (if not protected) to get every command and the program tables; or flash our own.

## Transport
- Service `FFF0`: write `FFF5`, notify `FFF4`. `FF00`/`FF01` = OTA. `180A/2A26` = firmware revision.
- ASCII lines, terminator `\r\n` (names `DomasA`/`DomasG` use a different end key; not this unit).
- App send queue: one command per **100 ms**, write timeout **3 s**, retried on error. App timers: 1 s and 100 ms.
- Replies: `OK`, `ERROR`, or `+TAG:value\r`. Unsolicited reports arrive on the same notify.

## Seen on the real unit (owner's log, 2026-10-27, 1.1.464-ai)
- Sets are confirmed as `+TAG:OK` (`+CSTR:OK`, `+QPOWP:OK`, `+QPOWS:OK`), not a bare `OK`. Queries answer
  `+TAG:value` then `OK`. (1.1.464 waited 800 ms on every set → modulation at ~1 update/s; fixed in 1.1.465.)
- `+CBC:0,3.73` = cell voltage 3.73 V (first field unknown — maybe charging); % is estimated 3.30–4.15 V.
- `+CMODE:0` (no channel field), `+CDCLK:HHMMSS`. Reply time 26–89 ms (avg 52). No `+CHEART` / `+CLOAD` in 90 s.
- OTA server: `POST api.cqdomas.com/app/device/checkFirmware` `{deviceId:34, versionCode:1, tenantId:1}`
  (JSON; answers AES-128-ECB, key `F5hiGGSJEKahnQn2`, base64 in `{"secret":…}`) → firmware v100 (2024-06-03),
  `http://119.13.88.237:9000/resources/1/20240603041557852302AA05584E28BBCE179B6E002BC2.bin` — host unreachable
  (from the cloud and the owner's phone) on 2026-10-27.

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
Ways to go further (1 and 2 are built, below): (1) intensity modulation from the host — at most ~10 updates/s through the 100 ms queue;
(2) probe extra AT commands with read-only `?` queries on the real unit; (3) measure each program on a 500 Ω–1 kΩ load
with an oscilloscope to get its real Hz / width / shape; (4) OTA (`FF00/FF01`, `OTA_*_V30` in `zx_571b_12h2`) —
custom firmware would give full control but risks bricking the unit.

## In XEMS (1.1.464-ai) — menu → "Mastogo", unlocked tablet only (owner, 2026-10-27: "both 1 and 2")
Code (compile:wearable): `wearable/mastogo/` — `MastogoShell` (pure Java: queue, one command in flight, 100 ms gap,
800 ms reply timeout, strength coalescing, every `+TAG` kept, reply-time stats, heartbeat period, modulation,
exploration, text report), `MastogoLink` (GATT FFF0: write FFF5, notify FFF4, reconnect), `MastogoScan` (name
`MASTOGO H-`), `MastogoScreen` (the page). Offline test: `bash scripts/mastogo/run.sh` (a simulated unit, incl. a
hidden command the sweep must find).
- **Програма:** group (TENS / EMS / Женски) → the program, minutes 10–60. ▶ = vendor sequence, strength from 1.
  A program change pauses the unit (it zeroes the strength itself).
- **Модулация:** the strength drawn over time — Вълна (cosine), Импулси (duty %), Нарастване (saw), Триъгълник,
  Случайно; from–to level, cycle 0.2–120 s, refresh 100–2000 ms. Rises ≤ 3 levels per update, falls free; stops on
  contact loss / timer end / power-off. While it runs, − / + shift the whole envelope. Drawn live with a dot.
- **Изследване:** ~630 read-only queries (`?`, and `=?` on the known names) — strength 0 and `AT+QPOWP` first and
  after every command that answers; two taps (the second confirms the pads are off the body). Lists what answered,
  the full feedback (`+TAG` values, reply ms, heartbeat), a console (last 200 lines) with a free command line, and
  "Копирай отчета" (clipboard) for analysis.
- Not done: no device test yet; one unit at a time (the vendor links several); no folding to a pill.
