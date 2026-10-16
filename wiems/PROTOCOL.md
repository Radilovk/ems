# WiEMS unit — BLE protocol (from capture 1)

Source: owner's iPad (iPad12,1, iPadOS 26.6.1), app Wiems 1.8.45, sysdiagnose 2026-10-16 00:08 with Apple's
Bluetooth logging profile → `bluetoothd-hci-latest.pklg` → `wiems/pklg_att.py` →
`wiems/logs/capture1-20261016-wiems1.8.45-att.txt` (one connection, ~11 min, 804 ATT ops).
Field names come from the app's own log lines in the same sysdiagnose (`system_logs.logarchive`, parsed with
mandiant/macos-UnifiedLogs; Wiems logs in Spanish, most values public) — lined up with the HCI writes by time
(pklg t=0 ≈ 23:56:12.4 local). "(log)" = name confirmed by the app's log; otherwise inferred.

App log lines that name the fields (verbatim):
`CCC-Dur,fr,w,r,Ru,Rd,dec del programa:41-84-4-8-0-0-126-5-2` · `Configurar frecuenciaResting: 5 - 100` ·
`Configurar anchuras:<private>` · `CCC-Corrientes enviadas a <unit>:12-0-2-15-15-15-13-13-0-15` ·
`Arrancar 1` / `Arrancar 0` · `Segundos running <unit>: 43` · `Minutos usados en <unit>: 72323` ·
`Minutos comprados en <unit>: 73200` · `Curr_comp: Calculada 0` / `Recibida 0` / `Not 0xA5` · `Bateria dispositivo: 75`.

## Device
- Advertised name **`WIEMS - EMS Device`**, address 88:6B:0F:CC:BE:49 (this unit).
- DIS: model number (2A24) `1.2.19`, serial (2A25) `204430018`. Battery service 180F, 2A19 read + notify
  (81 % → 44 % over the session, notified every ~15–60 s).
- Vendor service **`7764d8fe-c6a9-11e4-8731-1681e6b88ec1`** (handles 0x000e–0x004f). All vendor UUIDs share the
  tail `-c6a9-11e4-8731-1681e6b88ec1` or `-c717-11e4-8731-1681e6b88ec1` (time-based UUIDs from 2015).
- MTU: iPad asks 185, unit answers **23** → every write ≤ 20 bytes. All writes are Write Request (ACK'd ≈ 40–60 ms).

## Characteristics (value handle on this unit; match by UUID, never by handle)
| UUID prefix | handle | props | use (confidence) |
|---|---|---|---|
| `7764eda8` | 0x0043 | R W N | **Run control** (log "Arrancar 1/0"): write `25` = start, `00` = stop. Notifies `01` every ~1 s while running, `00` on stop (sure) |
| `776439af` | 0x004a | R W | **Program** (log "Dur,fr,w,r,Ru,Rd,dec"), 10 B + XOR: `Dur fr w r Ru Rd dec_lo dec_hi phase XOR` — fr = **Hz** (84/89/92 seen), w / r = **work / rest s** (4 / 8, matches the clock), Ru / Rd = ramp up / down (0, 0–1), Dur = 41 and dec = 0x057e (1406) unknown units, phase = 2 while arming, 0 once running (log) |
| `7764e8bc` | 0x0025 | R W | **Rest frequency** (log "frecuenciaResting: 5 - 100"): `Hz 64 00 00 00 00 00 00 a5 XOR` — Hz in the pause (5/6/7), second byte 100 (rest %?) |
| `7764e556` | 0x001c | R W | **Pulse widths per channel** (log "Configurar anchuras", written at the same moment): `7f 7f 6d 49 7f 7f 64 52 7f 52`, unit unknown (127 = max?) |
| `966e06c6` | 0x002e | R W | **Live channel strength**, 10 B = channels in XBody's order (owner: 0 Трапец, 1 Гръб, 2 Гърди, 3 Кръст, 4 Ръце, 5 Седалище, 6 Корем, 7 Предно бедро, 8 Задно бедро, 9 Прасец), value in bits 0–6 (seen 0–0x14), bit 7 = flag (unknown — the app logs the values without it). No checksum (log "Corrientes enviadas") |
| `7764f042` | 0x0035 | R N | **Session clock** (log "Segundos running"): 6 ASCII digits = elapsed time in 0.1 s; bit 7 of the first byte set = work phase started, clear = pause started. Capture: work ≈ 4 s, pause ≈ 8 s (sure for the clock, likely for the phase bit) |
| `b1f5a058` | 0x0031 | R N | Status / current check: idle `00 0N 00… c5 5c`; at each work start the unit sends `…a5…` then 20 small values 0–3 → the app's "Curr_comp" (current comparison, calculated vs received) |
| `7764d000` | 0x0039 | R N | **Minutes used** (log "Minutos usados"): ASCII `072323`, read after every stop. The app also gets "minutes bought" (73200) from the vendor server — a pay-per-minute scheme; whether the **unit** refuses to start at the limit is unknown (matters for XEMS) |
| `7764f19a` | 0x003d | R | `aa 27 ef 16 7d 28` — read once at connect (unit id / key?) |
| `776416cb` | 0x004d | R N | `da 00 00 01 13 02 00 00 0c 00` — read once at connect (config) |
| `7764db60 dcaa e038 e420 e678 e79a dde0 df0c a25c 5cb2` | — | — | never touched by the app in this capture |

## Sequences seen
Connect: MTU → read 2A25, 2A24 → CCCD on 2A19, 0x0031, 0x0035 → read 0x0039, 0x003d, 0x0043 (`00`) → CCCD 0x0043
→ read 0x004d → write 0x0043 `00`.

Start (every time):
```
W 004a  29 54 04 08 00 00 7e 05 02 08     program block, byte 8 = 02
W 0025  05 64 00 00 00 00 00 00 a5 c4     header
W 001c  7f 7f 6d 49 7f 7f 64 52 7f 52     per-channel caps
W 002e  00 × 10                           all channels 0
W 0043  25                                start
… ~4 s later (0043 notifies 01):
W 002e  00 × 10
W 004a  29 54 04 08 00 00 7e 05 00 0a     same block, byte 8 = 00
W 002e  <channel strengths>               restore the levels
```
Turning a channel: one `W 002e` with all 10 values (≈ 0.3–1 s apart while the finger moves).
Stop: `W 0043 00` → read 0x0039 → unit notifies 0043 `00` ~1.5 s later.

Program changes in the capture (0x004a / 0x0025 PP / 0x001c byte 2):
`29 54 04 08 00 00 7e 05` / 5 / 6d → `29 59 …` / 6 / 6d → `29 5c 04 08 00 01 7e 05` / 7 / 76.
Byte 1 = Hz 84 → 89 → 92 (log "fr"); rest Hz 5 → 6 → 7; program 7 adds ramp-down 1.

## Still open
- Units of Dur (41), dec (1406) and of the widths in 0x001c; pulse-width range.
- Bit 7 in 0x002e (the app's log of the same write has no such bit).
- Watchdog: does the unit stop by itself when the tablet goes silent (the app writes 0x002e at least every few s)?
- Minutes quota: does the unit itself refuse `25` when used ≥ bought?
Next capture, same way: change only the **pulse width** (2–3 values), then only **session length**, then leave a
session running 2 min untouched; name the channels on screen. Then the probe on the tablet.

## Wiems Easy (com.wiemspro.wiemsProEasy 2.0.1)
.NET MAUI app (log: `Microsoft_Maui_Controls_Handlers…`) → a decrypted bundle has .NET assemblies: type / method
names and string literals readable with ILSpy even when IL is stripped. Its own log lines are `<private>`.

## Seen on the unit (XEMS WiEMS app trace, 2026-10-16)
- Run control `0x0043` notifies **`0x80 | n`** (seen: `86`) right after a strength write when channel n trips the
  unit's protection, then `00` ~30 ms later: the unit stops. Re-sending the same strength after a new start trips it
  again. Seen with Корем (ch 6) at byte 9 / 12 while the other channels ran at 5.
- Status `b1f5a058`: at each work start `00…00 a5 00…` then 20 values (1 / 2 on this unit); idle
  `00 00 00 00 0N 00 … c5 5c` (byte 4 changed 00 → 01 → 04 after the trips).
