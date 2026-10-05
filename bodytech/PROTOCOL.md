# Bodytech (EMSFIT 5.1) suit — BLE protocol

Source: decompiled `com.emsfit.way8` 5.1 (`bodytech/bodytech.zip`), package `zcontrol.protocol`.
Encodings verified byte-for-byte against the vendor classes: 2946 frames, 0 differences
(`bodytech/probe/test/run.sh` keeps 25 of them as golden vectors).
Confirmed on a real suit (probe 0.1, 2026-10-05, `EMS08-05629`, 02:BC:34:D6:2D:93): service/characteristic,
every frame ACKed, battery reply. FE51 props 0x1a (read, write, notify). Write→ACK ≈ 25 ms with the default /
HIGH connection priority, ≈ 90 ms after asking for BALANCED. No reply except battery. Battery raw stayed
1570–1572 with seven channels at strength 1–6 — the voltage does not show a light load.
Still open: channel → muscle map, watchdog behaviour, battery under a strong load, firmware limits.

## Link
| | |
|---|---|
| Advertised name contains | `TZLJ`, `EMS` or `ADT` (vendor scan filter); seen: `EMS08-05629`, advertises FE50 |
| Service | `0000fe50-0000-1000-8000-00805f9b34fb` |
| Write + notify | `0000fe51-…` (same characteristic, write with response) |
| Pacing | one frame in flight; next after write ACK (vendor polls 10 ms, gives up after 1 s) |
| XEMS suit for comparison | service `FFF0` (`FFF1`/`FFF2`), names `NB-…`/`nbee`/`nord`, 10 channels |

## Frame — 8 bytes, big endian
`36 | u16 (channelId | register) | i32 value | C9`, channelId = n·0x10 for channel n = 1..8
(enum goes to 10, the on/off mask only to 8), 0 for global registers.

### Global registers (channel 0)
| reg | name | value |
|---|---|---|
| 0 | RESET | 1 |
| 1 | STATUS | `0x00020102` battery init, `0x00020010` battery init 2, `0x08010000` battery query |
| 3 | SEL (enable) | low byte = channels on (bit n−1), bits 16..23 = channels off; all off = `0x00FF0000` |
| 5 | SYNC (watchdog) | seconds·10⁷ (0.1 µs units); vendor sends 6 s every 4.5 s, its queue slips one in when overdue |
| 8 | VER | never used by the app |

### Channel registers
| reg | name | encoding (input → value) |
|---|---|---|
| 0 | frequency | Hz → 1 000 000 / Hz (1 MHz clock), mask 0xFFFFF |
| 1 | STEP_NOR | `0x01010101` always |
| 2 | intensity | 0..99 % (≥100 or <0 → 0) |
| 3 | pulse width | µs (1..511) → µs·10/2 = 0.2 µs units; out of range → 800 (160 µs) |
| 4 | waveform | 0 square, 1 sine, 2/3 trapezoid — **the app never sends it** |
| 6 | T period | always 0 |
| 7 | T1 ramp up | ms → ms·10000/1024 |
| 8 | T2 work | ms → ms·10000/1024 (0 → 9765 ≈ 1 s) |
| 9 | T3 ramp down | ms → ms·10000/1024 |
| 10 | T4 pause | ms → ms·10000/1024 |
| 11 / 13 | T1 / T3 intensity step | 1 |
| 12 / 14 | T1 / T3 width step | 0 |
Register 1 is also named PWM_RISE (0.1 µs, ≤1022) and 3 IMPULSE_PERIOD in the enum; the app uses only the meanings above.

The suit runs the T1→T2→T3→T4 cycle itself (EMSFIT modes: T1 = ramp·100 ms, T2 = on·1000, T3 = ramp·100, T4 = pause·1000).

## Sequences (EMSFIT)
1. Connect, notify on, then battery init, battery init 2, battery query.
2. Program: RESET; for each channel 1..8: frequency, STEP_NOR, intensity 0, width, T period 0, T1, T2, T3, T4,
   T1 int step 1, T1 width step 0, T3 int step 1, T3 width step 0; then SEL all off.
3. Start: SEL with the channels whose strength > 0. Strength change: intensity(ch); if it crosses 0 while
   running, SEL again. Pause: SEL all off. Leaving the screen: RESET.
4. Keep-alive: SYNC 6 every 4.5 s, battery query every 10 s.

## Replies
Battery: `36 00 01 08 01 HI LO C9` → raw = HI·256+LO, volts = raw·0.0024, % = (V−3.6)/0.48·100 (clamped).
The app also handles text lines `OK` / `ERROR` / `Not Started` (no meaning seen yet).
Nothing else is reported: no current, impedance or per-channel fault.

## XEMS → bodytech mapping
| XEMS | bodytech |
|---|---|
| Hz, µs | registers 0, 3 per channel (XEMS keeps them common) |
| strength per channel % | register 2 per channel (10 XEMS channels → 8: map from the owner) |
| input ramp / impulse / output ramp / pause | T1 / T2 / T3 / T4 |
| start / pause / stop | SEL mask / SEL all off / SEL all off + RESET |
| battery | STATUS query every 10 s |
| — | SYNC 6 s watchdog, must be kept alive |
