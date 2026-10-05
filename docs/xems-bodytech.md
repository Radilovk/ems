# Bodytech suit in XEMS — plain training (1.1.350-ai)

A bodytech suit (EMSFIT 5.1 hardware, BLE service `FE50`, name `EMS08-…` / `TZLJ…` / `ADT…`) trains from the stock XEMS
row: same screen, same ＋/− and sliders, same programs, ramp, double impulse, timer, battery, reconnect.
**Not covered on purpose:** music sync, pulse (band) control, Auto mode, Smart Session (AI) — only the plain training.
Protocol: `bodytech/PROTOCOL.md`. Probe app (hardware tests): `bodytech/probe/`.

## How it works
Everything the row says to its suit already goes through one place: `CommandSender` → `BleDeviceManager.write(device,
frame, cb)`, the XEMS frame `0x53 | len | cmd | pdu | sum`. For a bodytech suit that frame is turned into bodytech
frames and written one at a time (each after the ACK of the one before); the callback fires after the last, so the
row's own pacing (`isBusy`, SoftRamp, safety limits, reconnect) works unchanged.

| piece | where | job |
|---|---|---|
| `BtTranslator` | `branding/java/src/…/bodytech` | pure logic, one per suit: XEMS cmd → bodytech frames (tested offline) |
| `BtBridge` | same | glue: which suit, frame queue + ACK pacing, SYNC keep-alive, battery reply, fast link |
| `BtSettings` | same | the owner's map (SharedPreferences `xems_bodytech`) |
| `BtSettingsSection` | same | Settings → "Костюм bodytech": the map, waveform, strength scale |
| `BtProto` | same | frame encoders (verified byte for byte against EMSFIT) |
| `scripts/apply-bodytech.py` | build | installs the smali + 6 hooks + the Settings card; `verify-bodytech.py` checks them |

Hooks: `BleDeviceManager.getConfig` (FE50/FE51 for a bodytech suit), `BleDeviceManager.write`,
`CommandReceiver.onReceiveData` (battery), `CommandSender.sendDuration / sendActivePause / sendPause` (which phase:
main / second impulse / pause), `SettingFragment.onCreateView` (Settings card).

Which suit: its advertisement lists service `FE50` (XEMS suits list `FFF0`); else the vendor names; a suit seen once as
bodytech is remembered (`xems_bodytech_suits`).

## Translation (XEMS → bodytech)
| XEMS | bodytech |
|---|---|
| cmd 1: 10 sliders (`buwei`) | kept; applied by the cmd 3 that always follows it (one coherent step) |
| cmd 3 flag 1: Hz, width (pdu[4]·50 µs) | per working channel: Hz register, width register (only when changed) |
| strength of slider *s* | channel *c* with `slider(c) = s`: `strength × global gain × channel gain`, ≤ 99 % |
| channel works | its strength > 0 → bit in the SEL mask (written last) |
| pause (cmd 3 flag 0), stop (F2) | SEL all off |
| second impulse (`sendActivePause`) | channels set to "Основен" are silent, "Втори" work; Hz = pause Hz |
| battery (cmd 5) | STATUS query; the reply becomes the percent the row shows |
| — | first command after connect: SEL off, battery init, RESET, per-channel program, SEL off (≈ 3 s) |
| — | SYNC 6 s every 4.5–5 s while the link is up (the suit's watchdog) |

The suit's own cycle is programmed as one continuous burst (T1 = T3 = T4 = 0, T2 = 100 s): the tablet runs
impulse / pause / ramp itself (SoftRamp), as it does for the XEMS suit; every phase is a SEL / strength change.

## Owner's settings (Settings → Костюм bodytech)
Per channel C1–C8 (▲ ▼ moves the channel in the sheet; the sheet is two columns, four channels each):
- **name** (free text, up to 24 characters; empty = "C<n>");
- **slider** (muscle) or "Няма" — several channels may share one slider;
- **works in the impulse**: both / main / second. With the double impulse on, a channel can work in the main one only,
  in the second only, in both, or (slider "Няма") in none;
- **Параметри ▾**: strength % of this channel on top of the slider (0–150), pulse width µs, Hz of the main impulse and
  Hz of the second impulse. "Авто" = as the program says. Width and Hz can only **lower** the program's value
  (the limits of `docs/xems-safety-limits.md` stay upstream; main ≤ 120 Hz, second ≤ 10 Hz here too).
Global: waveform (the suit's own / square / sine / trapezoid) and a strength scale 50–150 %.
Defaults: EMSFIT labels and the nearest slider — C1 Кръст→Кръст, C2 Седалище→Седалище, C3 Рамене→Трапец, C4 Среден
гръб→Гръб, C5 Гърди→Гърди, C6 Ръце→Ръце, C7 Бедра→Предно бедро, C8 Корем→Корем. "По подразбиране" resets everything.
Changes are saved at once and used by the next command the row sends.

## Test of a channel and the left → right order (1.1.346)
- **▶ on each channel card (hold)**: only that channel works, at the test level (1–30 %, start at 1–3 %), so the owner
  feels which muscle it is and names / maps it. Release, close the sheet, or 1.5 s without a renewal = off. Refused while a
  training runs on the suit. The suit must have been connected from Тренировка before (the bridge knows it from its first
  command); the sheet says "no suit" otherwise.
- **Подреди ляво → дясно** sorts the channels by where their slider sits in the training row (calf, front thigh, back
  thigh, glutes, abs, lower back, back, trapezius, chest, arms); channels without a slider go last. The slider chips of
  every channel are listed in the same order.
- The training row's header icons are shared by all rows and stay the XEMS muscle icons: a channel appears under the
  slider (icon) it is mapped to. The channel names are the owner's labels in this sheet.

## Test of the impulse: Hz 1–1000, width 50–511 µs, waveform (1.1.347)
The same sheet has "Тест на импулс": Hz (1–1000, presets 1 … 1000 and − / +), width (50–511 µs), waveform (the suit's own /
square / sine / trapezoid / trapezoid 2) and the level. Hold **▶** on a channel to feel it on that muscle.
- The level goes up to **99 %** (the suit reads 100 as 0). A charge cap holds it lower as Hz × width grows beyond 85 Hz × 360 µs
  (`BtTranslator.testCap`; 400 Hz × 360 µs → 21 %, 1000 Hz × 511 µs → 5 %). The sheet shows the cap; a switch
  "Таван по заряд" turns it off (then 99 % at any Hz / width). Level chips 1 … 99 and − / + (1, 2, 5 steps).
- The waveform goes back to the owner's setting (square when "the suit's own") when the test ends or another channel
  is tested. The effect of Hz > 120, width > the program's and the waveform on the body is **not known yet** (frames are ACKed,
  nothing reads back) — this test is how to find out.
- Since 1.1.350 the values proven in the test can be used in training through "Пълни параметри" (see above).

## Full parameters from the row's gear (1.1.350) — no limits
The gear on a bodytech row now offers three things: **Настройки на програмата** (stock), **Пълни параметри**, **Тестов режим**.
"Пълни параметри" (`BtFull`) sets, for the selected channel, separately for the **main** and the **2nd impulse**: Hz
(1–1000), width (50–511 µs), waveform (square / sine / trapezoid / trapezoid 2 / "Авто" = the global one), plus the channel's
strength (0–300 % of the slider, ≤ 99 % on the suit). "Авто" = as the program says. Chips for quick values, − / + with fine
steps low and coarse high, "Копирай на всички канали", "Върни на Авто".
- **"Без ограничения" (on by default)**: the owner's per-channel Hz / width rule in the training exactly as set, whatever
  the program or the XEMS limits say (they act on the XEMS values, the translator applies these after them). Off: they can
  only lower the program's value (the old rule).
- The waveform is sent per channel when the impulse changes (main ↔ 2nd) and put back to square when a channel returns to "Авто".
- Not limited by the app anymore: only by the suit's own ranges. The effect on the body of > 120 Hz, wide pulses and the
  waveforms is the owner's to judge (use the test mode first).

## Test mode from the row's gear (1.1.348)
On a row whose suit is a bodytech one the gear (⚙) first asks **"Настройки на програмата"** (the stock dialog) or **"Тестов режим"**.
Rows with an XEMS suit open the stock dialog at once. Test mode (`BtTestMode`) is a screen apart from the training: the
impulse test above (Hz 1–1000, width 50–511 µs, waveform, level with the charge cap) and the eight channels left → right
with name and slider, each with a hold ▶, on **that row's suit**. Nothing is saved into the program; closing the screen
or releasing ▶ switches the output off; refused while a training runs on the suit. Hook: `TrainViewHolder$1.onNoDoubleClick`
→ `BtGear.open` (the stock dialog is replayed through the gear's own click once, past the hook).

## What bodytech has that the XEMS suit has not (and what is used)
| bodytech | used |
|---|---|
| Hz, width, strength, waveform are registers **per channel** (XEMS: one Hz / width for all) | per-channel width, Hz (main / 2nd), strength; waveform global |
| 8 independent channels on a SEL mask | per-channel "works in main / 2nd impulse / none" |
| the suit can run ramps and pauses itself (T1–T4, int / width steps) | **not used**: effect unproven on a person; the tablet's SoftRamp does it |
| no feedback except battery | the held channel test is the only way to learn the muscle map |
| 8 channels, not 10 sliders | owner's map; several channels may share a slider |

## Safety
- Strength ≤ 99 % per channel, a channel is on only when its slider gives it strength, width 50–511 µs.
- Upstream limits (`docs/xems-safety-limits.md`, `XemsGuard`) act on the XEMS values before they reach the translator.
- An output nobody renewed for its phase length + 3 s is switched off by the keep-alive tick (impulse → `pulseContinue`,
  second impulse → `pulsePause`, never longer than the time left).
- Any write failure or a new GATT connection: state forgotten, next frame is SEL all off, then the program again.
- If the app dies, SYNC stops and the suit's watchdog should stop the output — **not yet measured** (probe step "Watchdog").

## Not verified on a person yet
1. That T1 = T3 = T4 = 0 with T2 = 100 s really gives a steady burst (suit register semantics).
2. Strength feel: XEMS % → bodytech % is 1 : 1 × gain. Start at low strength (or gain 50 %).
3. The watchdog stop time without SYNC.
4. Phase switch speed with the double impulse (each change is a few frames at ≈ 30 ms).

## Tests
`bash bodytech/xems/test/run.sh` (translator + settings, JVM) · `bash bodytech/probe/test/run.sh` (frames vs EMSFIT) ·
`python3 scripts/verify-bodytech.py` after a build.
