# WiEMS unit — BLE protocol (from capture 1)

Source: owner's iPad (iPad12,1, iPadOS 26.6.1), app Wiems 1.8.45, sysdiagnose 2026-10-16 00:08 with Apple's
Bluetooth logging profile → `bluetoothd-hci-latest.pklg` → `wiems/pklg_att.py` →
`wiems/logs/capture1-20261016-wiems1.8.45-att.txt` (one connection, ~11 min, 804 ATT ops).
No step list came with the capture, so field meanings below are **inferred**; each says how sure it is.

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
| `7764eda8` | 0x0043 | R W N | **Run control**: write `25` = start, `00` = stop. Notifies `01` every ~1 s while running, `00` on stop (sure) |
| `776439af` | 0x004a | R W | **Program / timing block**, 10 B, last byte = XOR of bytes 0–8 (checksum sure, fields not) |
| `7764e8bc` | 0x0025 | R W | **Program header**, 10 B: `PP 64 00 00 00 00 00 00 a5 XX`, XX = XOR of 0–8 (sure). PP = 5/6/7 changed with each program; `64` = 100 (master %?) |
| `7764e556` | 0x001c | R W | 10 B, one per channel: `7f 7f 6d 49 7f 7f 64 52 7f 52` → per-channel cap / calibration? (byte 2 became `76` with program 7) |
| `966e06c6` | 0x002e | R W | **Live channel strength**, 10 B = channels 1–10, value in bits 0–6 (seen 0–0x14), bit 7 = flag (unknown). No checksum (sure that it is strength: moves in single steps as the trainer turns channels up/down) |
| `7764f042` | 0x0035 | R N | **Session clock**: 6 ASCII digits = elapsed time in 0.1 s; bit 7 of the first byte set = work phase started, clear = pause started. Capture: work ≈ 4 s, pause ≈ 8 s (sure for the clock, likely for the phase bit) |
| `b1f5a058` | 0x0031 | R N | 20 B status every ~1–11 s: idle `00 0N 00… c5 5c` (N counts); running: 20 small values 0–3 → per-channel (×2 electrodes?) contact/load (guess) |
| `7764d000` | 0x0039 | R N | ASCII `072323` — read after every stop (firmware date / counter?) |
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
Byte 1 (0x54/0x59/0x5c = 84/89/92) could be Hz — **unknown until capture 2**.

## Open — capture 2 (one change at a time, note the clock time of each)
1. Same program, change only **Hz** (e.g. 85 → 20 → 100), then only **pulse width**, then only **work time**,
   then only **pause time**, then **ramp** → maps the bytes of 0x004a / 0x0025.
2. One channel at a time 0 → 5 → 0 with the channel's name on screen → channel index → muscle.
3. Master/global strength, if the app has one (does it scale 0x002e or write `64` in 0x0025?).
4. What the bit 7 in 0x002e is: tap a channel group without changing strength.
5. Pause / resume during a session (vs stop).
6. Leave a session running with no touches for 2 min → does the unit need a keep-alive (watchdog)?
Without these, a driver could start / stop and set strengths, but not set Hz / width / times safely.
