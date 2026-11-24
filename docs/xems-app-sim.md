# The app off-device (tools/app-sim)

Owner, 1.1.546: "find a way to test it yourself". The **real APK** runs on the JVM: `xems27.apk` → dex2jar →
Robolectric (Android 11 framework, native graphics), resources from the APK itself, a **simulated suit** over BLE
(FastBle scan + GATT FFF0, Robolectric's Bluetooth shadows), the app's clock under control (minutes in seconds), the
recognizer and the speech engine faked (`Voice`). Our Java is compiled on top (overlay) so a source change is tested
without a new APK; `OVERLAY=0` tests the APK exactly as shipped.

    sh tools/app-sim/run.sh                    # all Sim* tests → tools/app-sim/out/*.png, *.tree.txt
    sh tools/app-sim/run.sh -Dtest=SimVoice    # one
    OVERLAY=0 sh tools/app-sim/run.sh          # the APK as it is

Needs: the Android toolchain (`android-sdk/…/android.jar`), `build/decompiled/AndroidManifest.xml` (any build),
Robolectric's android-all in `tools/ui-shot/out/robo` (docs/xems-ui-shots.md). `tools/` is gitignored: add new
files with `git add -f`.

## Pieces (src/test/java/sim)
- `App` — licence open (all modules, the sim suits allowed), MainActivity, past the splash; `addClient` = "Добави",
  Demo + the suit, OK, connected.
- `Suit` — advertises FFF0 to the app's scans, answers the GATT connection, `lastWrite` = the last bytes sent.
- `Ui` — `idle` (app time), `real` (wall time, for the app's java.util.Timer), `shot` (screen + dialogs), `dump`
  (the view tree as text: ids, texts, bounds, alpha), `tap` by text / `tapId` / `tapAt`, `bars` (channel levels).
- `Blink.frames` — every 16 ms each control's alpha / visibility / background / text; A→B→A = a blink. The suit's
  status (a row rebind) once a second, as the real suit causes.
- `Voice` — "тренер" (opens the window), a phrase as the recognizer's result, what the tablet said aloud.
- `State.auto()` — AutoSession inside: engine state, each row's strength, zones, offsets.

## Tests
- `SimBoot` — the app starts, the training screen.
- `SimAi` — AI training: open, ▶ Старт, strength up, 60 s with the suit's status → **no control may blink**.
- `SimVoice` — "увеличи краката", "намали ръцете", "увеличи ръцете и намали дупето", "по-силно", "пауза",
  "продължи", a question → levels change on the bars, the tablet says words (no symbols), it listens again.
- `SimBar` — 🎙 off → on again; ✦ Чат opens, has a field, stays open.

## Found with it (1.1.546)
- The 2nd-impulse button under the row's pause key blinked in Auto / AI: AutoLook veils it, DoubleImpulse.face set
  its alpha back on every row refresh (the suit's status ~1/s) — 118 flips a minute. face() leaves it veiled.
- Voice steps counted from the 0 of a rest: "по-силно" / "увеличи краката" in a rest set the strength to 1 and zeroed
  the other channels; a channel at a 100 % share said "100 %" and did nothing. Now: from the row's working
  strength; above 100 % share the strength rises and the other channels keep their level; the level said is the bar's.
- "▶" / "⏭" were read aloud; "пауза" in a rest did nothing. Now words.
- 🎙 off could not be turned on, ✦ Чат did nothing: the bar's views have no Activity context (activityOf → null).
  `AiTrain.activity(v)` falls back to the training screen's activity.
- The chat hid itself after 10 s — removed (✕ only).
- AI "no connection" now and then: the licence's 10 s timeout under a 5–15 s model call. 30 s + one retry.

## Speed (1.1.548)
The overlay (our Java over the APK) is recompiled only when a source is newer; the tests run in 3 JVMs at once
(`forkCount 3`, each test its own JVM). All 7 in ~1.5 min. The engine-only checks (no UI) are in
`scripts/ai-sim/run-auto.sh` (seconds) — `ContinuousSim` there covers every program in the AI's continuous mode.

## Limits
No real radio (the suit's own replies are not simulated yet — only a rebind each second), no real microphone or
wake-word audio, no network to the licence server from here (the AI answers "no connection").
