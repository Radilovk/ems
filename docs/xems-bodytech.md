# Bodytech suit in XEMS — plain training (1.1.344-ai)

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
| strength of slider *s* | channel *c* with `slider(c) = s`: `strength × gain / 100`, ≤ 99 % |
| channel works | its strength > 0 → bit in the SEL mask (written last) |
| pause (cmd 3 flag 0), stop (F2) | SEL all off |
| second impulse (`sendActivePause`) | channels set to "Основен" are silent, "Втори" work; Hz = pause Hz |
| battery (cmd 5) | STATUS query; the reply becomes the percent the row shows |
| — | first command after connect: SEL off, battery init, RESET, per-channel program, SEL off (≈ 3 s) |
| — | SYNC 6 s every 4.5–5 s while the link is up (the suit's watchdog) |

The suit's own cycle is programmed as one continuous burst (T1 = T3 = T4 = 0, T2 = 100 s): the tablet runs
impulse / pause / ramp itself (SoftRamp), as it does for the XEMS suit; every phase is a SEL / strength change.

## Owner's map (Settings → Костюм bodytech)
Per channel C1–C8: name, slider (muscle) or "Няма", impulse (both / main / second). Defaults: EMSFIT labels and the
nearest slider — C1 Кръст→Кръст, C2 Седалище→Седалище, C3 Рамене→Трапец, C4 Среден гръб→Гръб, C5 Гърди→Гърди,
C6 Ръце→Ръце, C7 Бедра→Предно бедро, C8 Корем→Корем. Several channels may share a slider. Also: waveform (the suit's
own / square / sine / trapezoid) and a strength scale 50–150 %. Changes are saved at once and used by the next command.

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
