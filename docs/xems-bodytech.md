# Bodytech suit in XEMS — plain training (1.1.351-ai)

> «Модулация» (passive 1–2 kHz procedures, only in the automatic mode for a client on a bodytech suit, 1.1.372):
> `docs/xems-modulation.md`. The test mode, the impulse test and the Australian / Russian currents are gone (1.1.372).

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
| pause (cmd 3 flag 0) | SEL all off |
| start (F1) / pause or stop (F2) | run gate open / closed: closed = SEL off + every strength 0, and a cmd 3 (a parameter change re-sends the impulse) only keeps its values (1.1.354) |
| stop (TrainItem.reset) | `BtBridge.reset`: off, strengths 0, the full program again (as at connect; skipped when the suit never ran since) |
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
  (main limits of `docs/xems-safety-limits.md` stay upstream).
Global: waveform (the suit's own / square / sine / trapezoid) and a strength scale 50–150 %.
Defaults: EMSFIT labels and the nearest slider — C1 Кръст→Кръст, C2 Седалище→Седалище, C3 Рамене→Трапец, C4 Среден
гръб→Гръб, **C5 Ляв крак** (front-thigh slider), C6 Ръце→Ръце, **C7 Десен крак** (back-thigh slider), C8 Корем→Корем.
"По подразбиране" resets everything.
- **The legs (owner, 1.1.376):** on bodytech EMSFIT's "Гърди" (C5) and "Бедра" (C7) are the left and right thigh (each
  front + back). Each leg has its own slider: the row's front-thigh slider drives the left leg, the back-thigh slider
  the right one, and on a bodytech row their percents read **"Л 45%" / "Д 45%"** (`PartLook.legTags` ←
  `BtSettings.rowTag`: the tag comes from the channel names — "Ляв…" / "Дясн…" — so renaming or swapping in the
  settings moves it; mixed or other names = no tag). The muscle icons above are shared by every row and stay.
  A tablet that still holds the old untouched C5 Гърди→Гърди / C7 Бедра→Предно бедро is moved once on load
  (`BtSettings.legs`); an owner's own map is not touched. Which leg is C5 is still to be confirmed on a person.
- **Equal legs (owner, 1.1.377):** a program that gives front and back thigh different values would give the two legs
  different strengths, so on bodytech the legs get **the same strength — the higher of the two** (`BtTranslator.legValue`;
  the row's two leg bars and texts show it, `PartLook.legs`). A hand on **one** leg (its bar, or ± with only that leg
  picked — one slider changes alone) sets that leg to the finger's value and keeps the other where it is; from then on
  each leg is its row value × its own factor, so a program step or ± moves both in proportion and 0 stays 0. Stop
  (`reset`) = equal again. A program step that happens to change exactly one leg and nothing else reads as a hand.
  The second impulse's (yellow) look is not redrawn — the suit still gets the equal value.
- **Whole left / right legs, no chest, no calf (owner, 1.1.379):** bodytech has two whole legs on separate electrodes —
  no front / back thigh, no chest, no calf. Everywhere in the bodytech interface the front-thigh slider is **"Ляв крак"**
  and the back-thigh slider **"Десен крак"** (`BtSettings.SLIDERS`; channel names too — the 1.1.376 "Ляво / Дясно
  бедро" are renamed once on load). Chest and calf (`BtSettings.hidden`) are not offered in the settings, cannot be
  set, and a channel still on one of them moves to the free leg (`BtSettings.legs`).
  - **A bodytech row:** the chest and calf columns are hidden (INVISIBLE, so the columns stay under the shared header);
    the two leg columns carry Л / Д (`PartLook.columns`).
  - **The header** (muscle icons + labels above all rows, `PartLook.header`): when every row on the screen with a suit
    runs a bodytech one, chest and calf go and the leg columns read "Ляв крак" / "Десен крак" with the same leg icon.
    Any XEMS suit on the screen → the stock header (its rows need front / back thigh).
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

## Feel a channel (1.1.372)
The same sheet has one line on top: hold **▶** on a channel and the plain impulse (85 Hz, 360 µs, the owner's waveform)
runs on that muscle at the chosen level (chips 1–30 %, − / + up to 99 %) — to find which electrode is which
(`BtTest`). The free impulse test (Hz 1–10 000, width, bursts, STEP_NOR gain, the plain / Australian / Russian
protocols, 1.1.347–1.1.361) was for choosing what to work with and is removed (owner, 1.1.372).

## Full parameters from the row's gear (1.1.350) — no limits
The gear on a bodytech row offers two things: **Настройки на програмата** (stock) and **Пълни параметри**.
"Пълни параметри" (`BtFull`) sets, for the selected channel, separately for the **main** and the **2nd impulse**: Hz
(1–1000), width (50–511 µs), waveform (square / sine / trapezoid / trapezoid 2 / "Авто" = the global one), plus the channel's
strength (0–300 % of the slider, ≤ 99 % on the suit). "Авто" = as the program says. Chips for quick values, − / + with fine
steps low and coarse high, "Копирай на всички канали", "Върни на Авто".
- **"Без ограничения" (on by default)**: the owner's per-channel Hz / width rule in the training exactly as set, whatever
  the program or the XEMS limits say (they act on the XEMS values, the translator applies these after them). Off: they can
  only lower the program's value (the old rule).
- The waveform is sent per channel when the impulse changes (main ↔ 2nd) and put back to square when a channel returns to "Авто".
- Not limited by the app anymore: only by the suit's own ranges. The effect on the body of > 120 Hz, wide pulses and the
  waveforms is the owner's to judge (start low).

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

## What still limits (not the app)
Strength 99 % (the suit reads 100 as 0) · Hz ≤ 1000 (above it a 511 µs pulse is longer than the period — the output turns into
a steady current) · width ≤ 511 µs (the vendor's encoder: a longer value falls back to 160 µs). Everything else is the owner's.

## Second impulse without limits (1.1.353)
On a bodytech row the second impulse is not capped: any Hz (also ≥ main, stepper to 1000 in the parameters dialog), strength as set, also at main strength 0. `SafeGuard.free2(item)` (MAC is bodytech) → `SafeLimits.apply(…, free2)` / `pauseSend(…, free2)`; `BtGear.freeSecond` lifts the `PauseSetting` stepper. XEMS suits keep ≤ 10 Hz.

## Own device names (1.1.353)
Device list (both connect dialogs): long-press a row (or tap its "i") → own name; `bodytech/DeviceAlias`, tablet only (`xems_device_alias`, by MAC), never synced. Hook: `scripts/apply-device-alias.py`.

## Sound signals (1.1.360)
`BtBeep`, tablet speaker, bodytech suits only. Start (F1 opens the gate) = one long HIGH tone (1319 Hz, 400 ms);
pause (F2, the row's stop button) = one long LOW tone (880 Hz, 400 ms); stop (TrainItem.reset after a run, the suit
is reprogrammed) = the low tone twice as long (800 ms); link problem (a write refused, or the link gone while started;
at most every 5 s) = three short low tones. Bell-like: sine + soft 2nd / 3rd harmonic, 8 ms attack, exponential decay
(a square wave was tried and was unpleasant). One PCM buffer on an AudioTrack.

## Start waits for the program (1.1.371)
Programming the suit (connect, stop = `TrainItem.reset`, a new link) is ~108 frames ≈ 3 s. ▶ pressed meanwhile used to start
the row's clock at once while the frames still queued, so the first impulse was lost (or its rise ran out unseen).
Now `BtLoad.hold` (hook: `TrainItem.start` start) holds the start: the row shows "Зареждане на програмата… N %"
with a bar (`BtLoad.mark`, hook: `TrainViewHolder.updateUI` end) and the training starts by itself when the program is
in. ▶ again keeps waiting; stop (`BtBridge.reset`) calls the wait off; so do a lost link and 20 s.
`BtBridge.loadPercent(device)`: the program batch is marked when queued (`BtTranslator.programmed()` turned true) and
ends with a marker item; frames ACKed / in all = the percent. XEMS suits never wait.

## Pulses together (1.1.381, Settings → Костюм bodytech → «Импулси заедно», on by default)
The suit has no galvanic isolation. Owner, on a person: a channel pulsing **alone** leaks into its neighbours (a
strong channel even into one at 0); channels pulsing **together** do not — equal strength on the legs (1.1.377) removed
the leaks, and 1.1.380's pulse slots (each channel in its own place of the period — the opposite) brought them back,
so they are gone. Probe 0.5–0.7 (`bodytech/PROTOCOL.md`) saw the overlap as the thing that matters; the person in a
real training showed which way: overlap = good.
With the switch on, BtTranslator.reconcile:
- every working channel gets one Hz (the lowest any of them is held to — a channel's own Hz from Параметри ▾ then
  sets all of them); off = each channel on its own Hz, as before;
- channels are started by ONE SEL: from all-off at an impulse start (as before), and again — all off, all on — when a
  channel joins or leaves or the Hz changes while they run (before, one SEL added a channel out of step with the rest).
Tests: `bash bodytech/xems/test/run.sh` (BtTranslatorTest «sync: …»).
