# XBody unit — internal protocols (decoded statically, no capture)

Source: `opt/xbody/xbody_control` (Newave 3.2.0, ARM, full DWARF) and `opt/xbody/xbody` (symbols, `-g0`), read
with pyelftools + Ghidra headless (`scripts/xbody/` has no script for it yet; method below). Verified against the
only real frame on the card: `emsc-poweroff.sh` sends `S4F003580` = payload `4F 00`, CRC `0x8035` ✓.

## Processes
```
xbody (Qt GUI)  ──TCP, GUIMsg──▶  xbody_control (XBGUIServer)  ──TCP localhost:1235, pc_emse──▶  emsc-tcpseriald
                ◀─SRVMsgStatus──                                                                 └▶ /dev/ttymxc3 115200 → stimulator board
```
- `xbody_control` runs the whole impulse / pause clock (`XBControl::ControlTimerEvent`, states IDLE → INIT →
  INITIAL_DELAY → START_STIMULATION → STIMULATION ⇄ START_PAUSE / PAUSE) and sends the board's **full state every
  50 ms** (`RefreshHardware`). It never reads anything back from the board (no read path in `XBHWCommunication`).
- Status to the GUI every 30 ms.
- Nothing comes back from the suit: no read path from the board, the GUI's "myopotential" test is a stimulation
  timer only (docs/xbody-xems-panel.md "Feedback"); `xems-xbproxy` logs any board bytes to find out on the unit.

## Framing (both sockets, `XBCommPacket::Encode`)
`'S'` + every byte of the message as two upper-case hex digits + `"\r\n"`. The message's last two bytes are
CRC-16/MODBUS (init 0xFFFF, reflected poly 0xA001) of the bytes before them, little endian.

## GUI → xbody_control
| Type | Len | Meaning |
|---|---|---|
| `0x0A` | 12 | training start (`TrainingIsActive = true`) |
| `0x0B` | 4 | training stop |
| `0x0C` | 44 | `GUIMsgStimulationParameters` (below) |

`GUIMsgStimulationParameters` (`TControl::refreshController` builds it): +0 type, +2 `Levels[10]` u16 (channel % ×10,
0–1000), +22 `MasterLevel` u16 (% ×10), +24 `ImpulseFrequency` u16 (Hz, 1–1000), +26 `ImpulseAmplification` u16
(100–1100, default 1100), +28 `ImpulseWidth` u16 (µs, 50–400), +32 `ImpulseDuration` u32 (ms, ≤ 10000),
+36 `PauseDuration` u32 (ms), +40 CRC.

## xbody_control → board: `pc_emse` (38 bytes)
| Off | Field | Value |
|---|---|---|
| 0 | MsgType | `'R'` (0x52) |
| 1 | Dummy1 | 0 |
| 2 | bits (u16) | bit 0 **stimulation on** (impulse phase), bit 1 training active, bit 14 pre-pulse request, bit 15 bi/uni-polar |
| 4 | packet_counter | u16 |
| 6 | tr | amplification (100–1100) |
| 8 | ti | impulse width µs |
| 10 | tp | `(int)(1000 / Hz)` — the board's period; the suit gets `round(1000 / tp)` = what the wired suit gets |
| 12 | PrepulseDuration | u16 |
| 14 | GapDuration | u16 |
| 16 | uems[10] | channel output = master% × channel% scaled to 0–50000 → **effective % = uems / 500** |
| 36 | CRC16 | MODBUS, LE |

Other board commands seen: `0x4F 0x00` = power off (`/etc/init.d/emsc-poweroff.sh`).

## Hardware channel ↔ XBody body part
`TControl::refreshController` fills `Levels[i]` from `TrainingSetting` fields (`TrainingSetting::bodyPartField`,
`translatableName` give the BodyPart enum: 0 legext, 1 legflex, 2 bottom, 3 abdomen, 4 waist, 5 shoulder, 6 back,
7 trapez, 8 chest, 9 arm, 10 calf, 11 optional, 12 master):

| uems | Body part (XBody name) | Owner's name |
|---|---|---|
| 0 | trapez | Трапец |
| 1 | back | Гръб |
| 2 | chest | Гърди |
| 3 | waist | Кръст |
| 4 | arm | Ръце |
| 5 | abdomen | Корем |
| 6 | bottom | Седалище |
| 7 | legext | Предно бедро |
| 8 | legflex | Задно бедро |
| 9 | optional | Прасец (owner: "optional" is the calf channel) |

`shoulder` and `calf` are GUI-only (not sent to this board); owner: shoulder is the trapezius.

**Measured** (2026-10-15, the real `xbody_control` + GUI in qemu, one zone raised at a time, frames recorded on
1235): legext 7, legflex 8, bottom 6, **abdomen 5**, waist 3, back 1, trapez 0, chest 2, arm 4 (optional 9 by
elimination). The static decode had abdomen / bottom swapped — the XEMS-suit wiring of mod v6 sent XBody's
"Корем" out on an XEMS suit's glutes (owner's report); fixed in mod v7.


## How it was read
- Types: DWARF of `xbody_control` (`XBControl`, `pc_emse`, `GUIMsgStimulationParameters`, `SRVMsgStatus`).
- Constants: `.rodata` at the addresses Ghidra shows (`50000.0`, `1000.0`, `0.1 × 500`).
- GUI side: Ghidra headless `-noanalysis` + a script that creates functions at the mangled symbols
  (`_ZN8TControl17refreshControllerEv`, `_ZN15TrainingSetting13bodyPartFieldENS_8BodyPartE`, …) and decompiles them.
