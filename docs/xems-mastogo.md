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
  more than the 26 programs. Only own firmware reaches it.
- Crystal X1 = 32.000 MHz. Back side: Li-Po 402030 3.7 V 180 mAh (0.67 Wh, made 2025-07-10; `+CBC` 3.73 V ≈ half),
  charger U4 by the battery pads and USB-C, output cap **4.7 µF 160 V** (open-circuit output well above 100 V
  possible), two `OUT` pads → the two electrode snaps (one channel). Unpopulated: U2 (2×12 SOP), X2, a 4-hole row
  under U2 — another MCU option of the same board.
- **Ports:** P1 (front, 4 holes beside U1, R8 / R9 in series = likely the chip's UART) and P2 (back, 4 holes).
  SYD8811 notes (CSDN, SYDTEK): programmed with J-Link + SYDTEK Studio (SWD); UART download on GPIO15 / GPIO16; a
  hardware "encryption" (read protection) option exists — whether the vendor set it is unknown. Next: find GND / VCC
  on P1 and P2 with a meter, then try SWD read-out (J-Link / ST-Link clone) or the UART.

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
- **Exploration on the unit (2026-10-27, 306 of 628 tried):** no hidden command. Known names answer `?`
  (`+CSTR:0`, `+QPOWS:1`, `+CLOAD:0`…) and `=?` with just `+TAG:OK` (no ranges). An unknown `?` query gets **no
  answer at all**; anything else unknown → `ERROR:104` (`+CLOAD ERROR:104`); `+CSTR ERROR:102` = strength refused,
  no load. Unsolicited: `+CHEART:0,0` every ~31 s, `+CLOAD:1,1` / `+CLOAD:1,0` around a link, `+QPOWD:0`.
  `AT+WSDT?` / `AT+CHANNEL?` silent — not on this unit.
- **The unit switches itself off after a few minutes without output** (`+QPOWD:0`, reason 0 = idle): the paused
  exploration stopped there twice. Since 1.1.466 the sweep keeps its place, waits ≤ 350 ms per query (≈ 4.5 min in
  all), never counts a heartbeat / contact / power-off line as an answer, and goes on when the unit is back on.
- **Full query sweep (628/628) and a write sweep (318/318), owner's runs 2026-10-27:** every set of an unknown
  name (frequency, width, wave, ramp, duty, current, voltage, boost, config, debug… with C / Q / W / S / G / R / no
  prefix, and `WSDT`, `CHANNEL`) → `ERROR:104`. Only the known `CSTR` (`ERROR:102`, no load) and `CDCLK` (`OK`)
  were accepted. **Conclusion: the firmware has no command for frequency, pulse width or shape** — they are fixed in
  the 26 programs; only own firmware could change them.
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
**The maker's table (DOMAS 3.1.1 `com.roblink.domas`, device "Hawk TENS 1S" = BLE `MASTOGO H-`, class `MAST`,
module `rl_023h_6e1`; `DeviceHelper.getModeListJson` via blutter, 2026-10-27).** DOMAS sends `AT+CMODE=0,<id>`
with id 0–25 — **26 programs**, not the 25 PNrelief listed. Each entry also has body areas and a feel text (in
`MastogoModes`). "a–b" = sweeps, "a / b" = alternates; most programs change over time.

| id | kind | frequency | width µs |
|---|---|---|---|
| 0 | Massage | 3–23 Hz | 224 |
| 1 | Muscle training | 27 Hz | 240 |
| 2 | Massage | 23–37 Hz | 240 |
| 3 | Pain relief | 6.7 Hz | 224 |
| 4 | Recovery | 45 Hz | 200 |
| 5 | Muscle training | 30 Hz | 224 |
| 6 | Massage | 23 / 45 Hz | 200 |
| 7 | Pain relief | 45 Hz | 190 |
| 8 | Pain relief | 10 Hz | 190 |
| 9 | Massage | 50 Hz (20 ms) | 190 |
| 10 | Muscle training | 47 Hz | 190 |
| 11 | Muscle training | 47 Hz | 190 |
| 12 | Massage | 1.9 / 50 Hz | 190 |
| 13 | Massage | 3 / 15.6 Hz | 190 |
| 14 | Pain relief | 47 Hz | 190 |
| 15 | Endurance | 37 Hz | 256 |
| 16 | Massage | 21.7 / 23–36 Hz | 224 |
| 17 | Dual pain relief | 1.35–200 Hz | 240/256/256/240 |
| 18 | Pain relief | 77 Hz | 100 |
| 19 | Pain relief | 1.6 Hz | 190 |
| 20 | Massage | 25–36 Hz | 224 |
| 21 | Recovery | 40 Hz | 200 |
| 22 | Massage | 3.1–47 Hz | 236/232/190 |
| 23 | Muscle training | 30 Hz | 310 |
| 24 | Pain relief | 200 Hz | 100 |
| 25 | Pain relief | 49 Hz | 200 |

PNrelief (older app) named them TENS 0–11 / EMS 12–20 / FEMALE 21–24 by body part; DOMAS's AI prompt groups
023H as MASSAGE 0–7 / TENS 8–15 / EMS 16–23 / FEMALE 24–25. Neither matches the per-id kinds above — XEMS uses the
table. Other DOMAS-only commands (`TREND STAGE PCT LTIME QPOWE CHEAT CREDLEDSTR`) belong to the 189A / 203A / 142A
devices, not this one.

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
- **Модули (1.1.469):** the 26 programs as universal modules 1–26 grouped by kind (Облекчаване / Масаж / Мускули /
  Възстановяване) — no body-part names (owner, 2026-10-27: "universal"). Each tile shows its frequency; the chosen
  one shows frequency, width and feel (`MastogoModes`, the maker's table above). Minutes 10–60. ▶ = vendor
  sequence, strength from 1. A program change pauses the unit (it zeroes the strength itself).
- **Импулс:** the strength drawn over time — **Работа / Пауза** (default: the owner's rise / work / fall / pause
  seconds, pause strength and work strength), Вълна (cosine), Импулси (duty %), Нарастване (saw), Триъгълник,
  Случайно; refresh 100–2000 ms. Rises ≤ 3 levels per update, falls free; stops on contact loss / timer end /
  power-off. While it runs, − / + shift the whole envelope. Drawn live with a dot.
- **Смяна на честотата:** 2+ modules picked in order (+ cycles per module) → `Mod.rotate`; the shell changes the
  module at the start of each pause (other shapes: at the cycle start) with `AT+CMODE=0,id` → `AT+QPOWS` →
  `AT+CDCLK=<left>`, drops any queued strength first; the strength climbs back from 0. ▶ starts on the first one.
  Untested on the unit: whether it runs on after `CMODE` + `QPOWS` without a gap (the offline test assumes so).
- **Изследване:** ~630 read-only queries (`?`, and `=?` on the known names) — strength 0 and `AT+QPOWP` first and
  after every command that answers; two taps (the second confirms the pads are off the body). Lists what answered,
  the full feedback (`+TAG` values, reply ms, heartbeat), a console (last 200 lines) with a free command line, and
  "Копирай отчета" (clipboard) for analysis.
  Result on the unit (2026-10-27, 628/628): only CSTR, CMODE, CDCLK, QPOWP, QPOWS, CBC, CLOAD answer a query;
  `=?` gives no ranges; nothing for frequency / width / wave / voltage / version.
- **Изследване на запис (1.1.467-ai):** ~320 set-only writes, one per name with a harmless value in the vendor's
  `=0,v` form (`AT+CFRQ=0,50`, `AT+CPW=0,200`, others 0; prefixes C W S Q and none; RST / OTA / POWD-like names left
  out), controls `AT+CSTR=0,0` (known) and `AT+XZQJ=0,1` (cannot exist). Rule: a bare `ERROR:104` = unknown name;
  anything else (`+X:OK`, a tagged error like `+X ERROR:103`, silence) = the name exists → listed. Pause + strength
  0 after every such hit. Same two-tap arming and resume after the unit's idle power-off as the query sweep.
- Not done: no device test yet; one unit at a time (the vendor links several); no folding to a pill.
