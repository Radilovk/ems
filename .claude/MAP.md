# REPO MAP (generated — `python3 scripts/repo-map.py`; do not edit by hand)

Grep this file, don't read it whole: `grep -in <concept> .claude/MAP.md`.
Format: `path` (lines, build/compile info) — purpose. `NL` = line count.
Big file? `python3 scripts/repo-map.py outline <file>` → symbols with line numbers → Read offset/limit.

## scripts/
build:Ln = called at line n of build-apk.sh (sort by n = pipeline order); [VAR] = inside `if` on that env var
(BETA_MUSIC default 1, DESIGN_PIPELINE default 0, SKIP_JAVA_RECOMPILE default 0). NOT-IN-BUILD = dead/manual patch.
- `scripts/ai-sim/AiExSim.java` (158L) — Offline test of the Smart Session's exercises (AiExercises over AiEngine): whole sessions, synthetic pulse.
- `scripts/ai-sim/AiSim.java` (369L) — Offline scenarios for the Smart Session engine.
- `scripts/ai-sim/AutoSim.java` (454L) — Offline checks of the automatic mode (docs/xems-auto-mode-spec.md): every program × goal × client profile is planned an…
- `scripts/ai-sim/TemplateSim.java` (250L) — Offline test of the exercise templates (AutoTemplates) over every active program × profile × history.
- `scripts/ai-sim/run-auto.sh` (15L) — Offline test of the automatic mode (AutoCatalog / AutoPlanner / AutoLimits / AutoEngine / AutoTemplates) on the JVM.
- `scripts/ai-sim/run.sh` (9L) — Offline test of the Smart Session engine (branding/java/src/com/isaigu/gymapp/ai) on the JVM.
- `scripts/apply-active-pause-avatar-button.py` (2421L, build:L66) — Active pause avatar button: Hz-style control around the user icon (default mode only).
- `scripts/apply-active-pause-control-fixes.py` (1464L, build:L153) — Fix active-pause control routing, main-mode button styling, and mode-exit behavior.
- `scripts/apply-active-pause-fixes.py` (1368L, build:L64) — Fix active-pause Hz input and persistence (does not change training +/- or slider).
- `scripts/apply-active-pause-pulse-labels.py` (358L, build:L76) — Switch impulse/pause time labels when active pause mode is enabled.
- `scripts/apply-active-pause.py` (929L, build:L63) — Active pause (impulse change during pause) settings and training logic.
- `scripts/apply-ai-session.py` (168L, build:L112[BETA_MUSIC]) — XEMS Smart Session ("AI" button): install ai smali, hook device cycles, route ramp bytes.
- `scripts/apply-arms-channel-scale.py` (160L, build:L155) — Apply encode-time arms channel strength reduction (÷5 at 150 µs … ÷10 at 400 µs pulse width) (buwei5 / index 4).
- `scripts/apply-avatar-card.py` (145L, build:L123[BETA_MUSIC]) — Training slot: the client's photo is a button, not part of the slider.
- `scripts/apply-avatar-proportional-lock.py` (85L, build:L75) — Replace avatar column RelativeLayout with proportional AvatarClusterLayout.
- `scripts/apply-avatar-timer.py` (315L, build:L51) — Remove avatar wave fill; show interval seconds only while training is running.
- `scripts/apply-band-app.py` (59L, build:L124[BETA_MUSIC]) — Ship the XEMS band app inside the APK, both languages: band-app/xems-band.rpk (Bulgarian) → assets/xems-band.rpk, band-…
- `scripts/apply-beta-features.py` (95L, build:L94[BETA_MUSIC]) — BETA music sync core: install MusicSync smali + shared strings (player only, no mic).
- `scripts/apply-ble-scan-lifecycle.py` (151L, build:L89) — Stop background BleDeviceManager scan outside the device-connect flow.
- `scripts/apply-block-program.py` (102L, build:L111[BETA_MUSIC]) — Block program pulse hook (global runner; UI lives in IntervalTimerHelper).
- `scripts/apply-branding-train-layouts.py` (97L, build:L59[DESIGN_PIPELINE]) — Apply canonical train-screen layouts from branding/design/ at end of build.
- `scripts/apply-branding.py` (235L, build:L39) — Apply branding images to decompiled APK resources.
- `scripts/apply-bt-latency.py` (99L, build:L88) — Minimize Bluetooth command queue latency — write immediately after each ACK.
- `scripts/apply-client-search-fix.py` (91L, build:L45) — Make client-name search case-insensitive.
- `scripts/apply-dark-polish.py` (720L, build:L43) — Dark-theme-only UI polish: muscle bar, user list icons, device serial hide.
- `scripts/apply-defaults.py` (80L, build:L83) — Default Bulgarian + dark theme.
- `scripts/apply-design-config.py` (423L, build:L57[DESIGN_PIPELINE]) — Apply branding/design-config.yaml to train row layouts in branding/design/.
- `scripts/apply-design-workflow.sh` (4L, NOT-IN-BUILD) — Back-compat alias — use scripts/design-apply.sh
- `scripts/apply-diag-logging.py` (83L, build:L129[BETA_MUSIC]) — Install MusicDiagLog smali and hook crash handler + application init.
- `scripts/apply-double-impulse.py` (77L, build:L161) — The double impulse (2nd impulse / active pause) per mode: Основен, Кардио, Масаж — not Мускули.
- `scripts/apply-edit-parameter-scroll.py` (68L, build:L82) — Make the impulse/parameter settings dialog scrollable on smaller tablet viewports.
- `scripts/apply-exercise-assets.py` (54L, build:L113[BETA_MUSIC]) — Ship the exercise figures: branding/exercises/exercises.json → assets/xems/exercises.json, and the program pictures: br…
- `scripts/apply-form-theme.py` (96L, build:L48) — Fix dark-theme form fields: LineEditText underline + add-user layout text colors.
- `scripts/apply-guide-tab.py` (283L, build:L87) — Replace the Video tab with a comprehensive styled EMS training and app guide.
- `scripts/apply-hz-controls.py` (1119L, build:L52) — Hz indicator + shared slider/master controls for frequency during training.
- `scripts/apply-impulse-display.py` (42L, build:L49) — Show impulse strength as percent instead of milliamps on the training screen.
- `scripts/apply-interval-timer.py` (701L, build:L104[BETA_MUSIC]) — Interval timer: master button, draggable dial overlay, training sync hooks (settings sheet is Java/XemsUi).
- `scripts/apply-languages.py` (170L, build:L41) — Limit app languages to Bulgarian and English.
- `scripts/apply-list-theme.py` (46L, build:L44) — Fix connect-dialog list row colors set programmatically in adapters.
- `scripts/apply-live-settings.py` (132L, build:L95[BETA_MUSIC]) — Settings saved from ⚙ Master (right panel) or a row's gear do not interrupt the training.
- `scripts/apply-local-mode.py` (610L, build:L118[BETA_MUSIC]) — Local-only mode: users, programs, history and suits without xemsplus cloud sync.
- `scripts/apply-login-fix.py` (150L, build:L65) — Fix stuck loading spinner on login and post-login navigation.
- `scripts/apply-main-mode-button.py` (613L, build:L67) — Add 'Main' (Основен) as the 4th program mode button (useType=0) with muscle/cardio/massage.
- `scripts/apply-muscle-icons.py` (81L, build:L40) — Standardize and apply muscle group icons to decompiled APK resources.
- `scripts/apply-music-player.py` (596L, build:L99[BETA_MUSIC]) — BETA in-app music player: master button + floating overlay player with playlist.
- `scripts/apply-music-seek-fix.py` (177L, build:L100[BETA_MUSIC]) — Allow full 360deg touch on CircleSeekBar when wheel_scroll_only_one_circle=false.
- `scripts/apply-music-sync-controls.py` (176L, build:L98[BETA_MUSIC]) — Music sync: +/- ceiling, block manual slider, lock index/muscle controls.
- `scripts/apply-music-sync-pulse.py` (108L, build:L96[BETA_MUSIC]) — Remove PDU hooks — music-sync drives bean.strenth / slider directly.
- `scripts/apply-music-sync-slider.py` (76L, build:L97[BETA_MUSIC]) — Register circle slider + MA label with MusicSync when TrainViewHolder binds.
- `scripts/apply-music-training-sync.py` (207L, build:L105[BETA_MUSIC]) — Music-sync BLE hooks.
- `scripts/apply-part-strength.py` (134L, build:L158) — Selected muscle groups: + / − and the avatar slider change only their impulse strength.
- `scripts/apply-picker-colors.py` (40L, build:L46) — Client / program / device picker in the app's colours.
- `scripts/apply-plan-tab.py` (68L, build:L126[BETA_MUSIC]) — The "План" tab shows wearable/PlanScreen (appointments from the tablet's calendar, next client) instead of the vendor's…
- `scripts/apply-program-fit.py` (166L, build:L120[BETA_MUSIC]) — Saved program = the base of the manual mode; the diskette saves it, the gear works while training.
- `scripts/apply-quick-start.py` (111L, build:L121[BETA_MUSIC]) — Client list: ▶ quick start in every row, ↻ refresh next to the search (wearable/QuickStart).
- `scripts/apply-ramp-limits.py` (418L, NOT-IN-BUILD) — Input/output ramp in milliseconds (0-3000 ms); device encoding (ms+9)/10.
- `scripts/apply-ramp-setting.py` (77L, build:L119[BETA_MUSIC]) — Soft rise / fall (ramp) back in the program parameters dialog, in seconds (0.0–2.0 s).
- `scripts/apply-security-hardening.py` (124L, NOT-IN-BUILD) — Harden APK manifest and network config to reduce install / Play Protect warnings.
- `scripts/apply-session-report.py` (42L, build:L125[BETA_MUSIC]) — Ship the client report page: branding/report/session-report.html → assets/report/session-report.html, and the shareable…
- `scripts/apply-settings-ui.py` (230L, build:L84) — Settings screen: language + dark/light theme only.
- `scripts/apply-settings-username-theme.py` (64L, build:L81) — Dark-theme username label above avatar in operational settings dialog.
- `scripts/apply-slider-theme.py` (374L, build:L50) — Improve vertical slider track depth and thumb contrast via smali patches.
- `scripts/apply-soft-ramp.py` (61L, build:L122[BETA_MUSIC]) — Tablet-side impulse ramp (train.model.SoftRamp): the suit ignores the PDU ramp bytes.
- `scripts/apply-software-ramp.py` (603L, NOT-IN-BUILD) — Software ramp up/down by scaling amp (strength) like manual +/- during pulse phases.
- `scripts/apply-startup-permissions.py` (127L, NOT-IN-BUILD) — Batch runtime permissions at app start; skip duplicate prompts later in the app.
- `scripts/apply-suit-reconnect.py` (171L, build:L162) — The suit's Bluetooth link drops during a training → the row waits for it and binds it again.
- `scripts/apply-tab-theme.py` (152L, build:L47) — Improve bottom-tab icon contrast in dark mode only.
- `scripts/apply-theme-toggle.py` (112L, build:L85) — Install theme toggle via ThemeUtils (safe resource lookup, no hardcoded ids).
- `scripts/apply-train-index.py` (82L, build:L160) — The 2nd impulse (active pause) turns on from either of its buttons and starts at the main strength.
- `scripts/apply-train-info-column.py` (243L, build:L164) — Training row, column right of the avatar: name on its own line, time + status icons on one row, battery number readable…
- `scripts/apply-train-participant-ui.py` (878L, NOT-IN-BUILD) — Train participant UX: initial empty slot, add-user on last row bottom-right, sidebar intact.
- `scripts/apply-train-swipe-delete-fix.py` (81L, build:L127[BETA_MUSIC]) — Disable swipe-delete on empty train slots; guard delete handler against empty items.
- `scripts/apply-train-ui-refinements.py` (271L, build:L53) — Factory-style status icons and compact impulse/pause button labels.
- `scripts/apply-ui-theme.py` (633L, build:L42) — Apply comprehensive UI theme across all app screens.
- `scripts/apply-wearable-bridge.py` (486L, build:L109[BETA_MUSIC]) — Notify wearable sync: config modal + floating HR dial (interval-timer style).
- `scripts/apply-wearable-permissions.py` (48L, build:L110[BETA_MUSIC]) — Request BLUETOOTH_CONNECT + BLUETOOTH_SCAN at MainActivity startup (Huawei needs both).
- `scripts/apply-wearable-settings-connect.py` (388L, build:L146[BETA_MUSIC]) — Patch wearable smali for settings band connection test (full reconnect + status UX).
- `scripts/apply-xems-nav.py` (91L, build:L117[BETA_MUSIC]) — XEMS navigation (v1.1.64): page tabs → ☰ menu top-left, bottom bar → module tiles.
- `scripts/ble-sim/band.py` (163L) — Xiaomi Band 8 (FE95 / protobuf V1) simulator — independent of the XEMS Java code. Protocol mirrored from Gadgetbridge X…
- `scripts/ble-sim/run-dual.sh` (25L) — Two bands (Settings → Band → second band): the same simulated Band 9/10 as the client's band (ROLE=hr) and as
- `scripts/ble-sim/run-hr-policy.sh` (33L, build:L145[BETA_MUSIC]) — Offline HR demand policy test (settings/dial/AI vs idle link). No device, no Android SDK.
- `scripts/ble-sim/run-spp.sh` (17L) — Offline protocol test: real XiaomiBandSppClient (JVM, stubbed android.*) vs spp_band.py (Band 9/10 over SPP).
- `scripts/ble-sim/run.sh` (15L) — Offline protocol test: real XiaomiBandBleClient (JVM, stubbed android.*) vs Python Band 8 simulator.
- `scripts/ble-sim/snoop_decode.py` (306L) — Decode a Xiaomi Band 9/10 session (Bluetooth Classic / SPP) from an Android btsnoop_hci.log.
- `scripts/ble-sim/spp_band.py` (391L) — Xiaomi Band 9/10 simulator over Bluetooth Classic (SPP) — written for the XEMS test, independent of the Java client. By…
- `scripts/ble-sim/test_snoop_decode.py` (77L) — Offline test for snoop_decode.py: builds a btsnoop log (v2 auth + encrypted workout-like command, ACL split in two frag…
- `scripts/compile-avatar-cluster-java.sh` (49L, build:L70[SKIP_JAVA_RECOMPILE]) — Compile AvatarClusterLayout.java to smali (prebuilt fallback when SDK missing).
- `scripts/compile-channel-scale-java.sh` (57L, build:L71[SKIP_JAVA_RECOMPILE]) — Compile ChannelStrengthScale.java to smali (prebuilt fallback when SDK missing).
- `scripts/compile-interval-timer-java.sh` (112L, build:L102[BETA_MUSIC,SKIP_JAVA_RECOMPILE]) — Compile interval timer + block program classes from Java to smali.
- `scripts/compile-music-sync-java.sh` (211L, build:L92[BETA_MUSIC,SKIP_JAVA_RECOMPILE]) — Compile BETA music-sync classes from Java to smali (avoids hand-written branch bugs).
- `scripts/compile-wearable-java.sh` (191L, build:L107[BETA_MUSIC,SKIP_JAVA_RECOMPILE]) — Compile the wearable bridge + band UI, the Smart Session and the automatic mode (ai package) from Java to smali.
- `scripts/compile-xems-license-java.sh` (64L, build:L69[SKIP_JAVA_RECOMPILE]) — Compile XemsLicense*.java to branding/smali/widget/
- `scripts/compile-xems-local-java.sh` (83L, build:L115[BETA_MUSIC,SKIP_JAVA_RECOMPILE]) — Compile XemsLocal*.java to branding/smali/widget/
- `scripts/design-apply.sh` (96L) — Sync studio → validate → apply train design → optional APK build
- `scripts/design_config_schema.py` (116L) — Safe bounds and validation for branding/design-config.yaml.
- `scripts/exercise-paths.py` (166L) — SVG path data → absolute M / L / C / Z only, so the app draws it with android.graphics.Path and no SVG library.
- `scripts/fit-sim/FitSim.java` (144L) — Offline checks of ProgramFit: corrections on the saved base, hand changes as reference, save without corrections.
- `scripts/fit-sim/SearchSim.java` (30L) — Offline check of the client search: Cyrillic ↔ Latin phonetic matches (XemsSearch.matches).
- `scripts/fit-sim/run.sh` (15L) — Offline test of wearable/ProgramFit (saved program = base, hand changes as reference) and the
- `scripts/gen-card-art.py` (244L) — Client card figures from the illustrated art in branding/report/figures/.
- `scripts/gen-exercises.py` (94L) — branding/exercises/{programs,exercises}.json → ai/AutoTemplateData.java (the template data as plain Java, so the logic …
- `scripts/gen-program-art.py` (126L) — Program pictures for the tablet (ai/ProgramArt): branding/programs/src/*.webp (full resolution, transparent) → branding…
- `scripts/install_interval_timer_smali.py` (77L) — Install interval timer stack smali (helper, presets, block program) into decompiled APK.
- `scripts/layout-implement.py` (301L) — Generate Android layout XML from approved layout brief.
- `scripts/layout_brief_lib.py` (109L) — Shared layout brief load/validate (imported by CLI and implement).
- `scripts/layout_brief_schema.py` (55L) — Schema and required @id sets for collaborative layout briefs.
- `scripts/music-sim/MusicAutoTuneSim.java` (163L) — JVM checks for music → impulse auto-tune.
- `scripts/music-sim/run.sh` (12L) — Auto-tune checks on the JVM. No Android.
- `scripts/prune-languages.py` (73L) — Remove unused locale resource folders, keep only English and Bulgarian.
- `scripts/pull-diag-logs.sh` (69L) — Pull music/crash diagnostic logs from a connected device into diag-logs/ (repo root).
- `scripts/remove-active-pause-segments.py` (261L, build:L79) — Revert multi-interval active pause (caused login/training instability).
- `scripts/remove-active-pause-settings.py` (106L, build:L80) — Remove active pause controls from program settings; operational screen only.
- `scripts/remove-demo-mode.py` (262L, build:L86) — Remove all demo-mode smali patches and UI hooks from the decompiled APK.
- `scripts/remove-ramp.py` (458L, build:L77) — Remove ramp UI and always send zero ramp bytes to the device.
- `scripts/remove-segment-program-gear.py` (105L, build:L128[BETA_MUSIC]) — Remove per-program segment UI from gear dialog (block program is in interval timer).
- `scripts/remove-software-ramp.py` (60L, build:L78) — Remove software ramp hook that blocks sendPulse and causes training freeze on Play.
- `scripts/reorder-muscles.py` (84L, build:L38) — Reorder muscle group columns in train UI layouts (visual only, IDs unchanged).
- `scripts/repo-map.py` (329L) — Token-cheap navigation for agents: generated repo map + per-file outline.
- `scripts/serve-branding.sh` (15L) — Local web server for branding YAML maps and DEVELOPMENT.md reference.
- `scripts/setup-android-toolchain.sh` (41L) — Java → smali toolchain without the Google Android SDK (cloud sessions: dl.google.com is blocked).
- `scripts/test-apk-safety.sh` (118L) — Automated safety test: BETA build must not change login-critical code vs baseline.
- `scripts/ui-map.py` (126L, build:L56[DESIGN_PIPELINE]) — UI map utilities — validate layouts, explain structure, guide safe edits.
- `scripts/verify-active-pause-routing.py` (284L, build:L154) — Verify master slider and +/- routing stay aligned for active pause.
- `scripts/verify-apk-hrfix.py` (136L) — Verify v1.1.55-ble HR fix markers in built APK / smali.
- `scripts/verify-apk-shipped.py` (167L) — Fail when APK-shipping source changed but xems27.apk was not rebuilt and committed.
- `scripts/verify-arms-channel-scale.py` (67L, build:L156) — Verify arms channel strength scale hook is present in decompiled smali.
- `scripts/verify-beta-safety.py` (73L, build:L131[BETA_MUSIC]) — Fail the build if BETA music hooks touch login-critical classes.
- `scripts/verify-interval-timer-smali.py` (59L, build:L144[BETA_MUSIC]) — Fail the build if interval timer dialog smali is incomplete (NoClassDefFoundError at open).
- `scripts/verify-login-path.py` (89L) — Fail the build if login -> MainFragment -> NewTrainFragment path looks broken.
- `scripts/verify-music-sync-smali.py` (183L, build:L130[BETA_MUSIC]) — Music player → MasterStrengthControl.setMasterStrength (no PDU hook).
- `scripts/verify-no-missing-classes.py` (42L, build:L166) — Fail the build when app smali references a com.isaigu.gymapp class that no smali file defines.
- `scripts/verify-wearable-smali.py` (107L, build:L147[BETA_MUSIC]) — Verify wearable bridge smali, xiaomi BLE classes, and train hooks.
- `scripts/ble-sim/rt/**` — stubbed android.* + sim harnesses (SppHarness, HrPolicyHarness) for the JVM BLE tests

## Java sources → smali (compile:X = scripts/compile-X-java.sh; X* = catch-all find)

**ai/** (`branding/java/src/com/isaigu/gymapp/ai/`)
- `AiEnergy.java` (346L, compile:music-sync*,wearable) — Energy expenditure (kcal) — oxygen uptake, personalised with the user's data and the stimulation actually delivered to …
- `AiEngine.java` (1309L, compile:music-sync*,wearable) — XEMS Smart Session runtime (spec §5–§10).
- `AiExercises.java` (197L, compile:music-sync*,wearable) — The exercises of a Smart Session (pure Java; the stations come from {@link AutoTemplates}).
- `AiHrFilter.java` (129L, compile:music-sync*,wearable) — §7 — realtime HR validation, EMA smoothing, stimulation-artifact rejection, c_valid.
- `AiModel.java` (199L, compile:music-sync*,wearable) — XEMS Smart Session data model (docs/xems-smart-session-spec.md §1, §3, §4).
- `AiPersonal.java` (223L, compile:music-sync*,wearable) — The client's own profile beyond sex / age / weight / fitness / goal: focus zones and state (the client form's "Зони за …
- `AiPlanner.java` (439L, compile:music-sync*,wearable) — §2.1, §3 (DERIVE) and §4, §6 (PLAN): deterministic plan from the session input.
- `AiProfile.java` (202L, compile:music-sync*,wearable) — The client of a training slot as the AI session and the pulse module see them: sex, age and weight from the client reco…
- `AiRamp.java` (107L, compile:music-sync*,wearable) — Ramp bytes for the work-params PDU (device unit: 10 ms per step).
- `AiRestHr.java` (204L, compile:music-sync*,wearable) — §2 CALIB_REST_HR — resting HR over a 30 s window (median / SD of the whole window), with sample validation, stale handl…
- `AiScreening.java` (86L, compile:music-sync*,wearable) — §1.1, §1.2, G11 — input validation and pre-session questionnaire.
- `AiSession.java` (1097L, compile:music-sync*,wearable) — Android side of the Smart Session: owns the engine, feeds it band HR and device cycles, and writes its commands to ever…
- `AiText.java` (180L, compile:music-sync*,wearable) — Bulgarian-first UI text for the Smart Session (English when the system language is not bg).
- `AiUi.java` (2110L, compile:music-sync*,wearable) — Smart Session UI: sidebar "AI" button → full-screen card with a 6-step setup (goal · profile · check · resting HR · pla…
- `AiViews.java` (318L, compile:music-sync*,wearable) — Canvas-drawn widgets for the Smart Session UI (no resources needed).
- `AutoCatalog.java` (655L, compile:music-sync*,wearable) — The ready programs of the automatic mode (spec §5, §6): menu per goal × kind, what each program is, its zones, its phas…
- `AutoCues.java` (133L, compile:music-sync*,wearable) — What the hint card on the training screen says during an automatic session (pure Java): the cue for the pulse / the pau…
- `AutoEngine.java` (604L, compile:music-sync*,wearable) — Automatic mode runtime (spec §4, §7, §8): walks the plan cycle by cycle and gives each cycle's parameters, planned stre…
- `AutoHints.java` (292L, compile:music-sync*,wearable) — Hint card on the training screen during an automatic session: a small floating card at the top (not modal — the screen …
- `AutoHistory.java` (160L, compile:music-sync*,wearable) — How many sessions a client has had and when the last active one was — for the adaptation and recovery limits of the aut…
- `AutoLimits.java` (173L, compile:music-sync*,wearable) — Hard limits of the automatic mode (spec §4.1 L1–L10, §4.2 windows).
- `AutoLook.java` (202L, compile:music-sync*,wearable) — The training screen while automatic mode owns the suits (calibration and the run): every train row loses the controls t…
- `AutoModel.java` (283L, compile:music-sync*,wearable) — Automatic mode data model (docs/xems-auto-mode-spec.md): the wizard's answers, one device cycle (step), a phase with it…
- `AutoPlanner.java` (258L, compile:music-sync*,wearable) — Program + client → plan with its hard limits (spec §3 modifiers, §3.3 strength envelope, §3.4 dose, §5 zones).
- `AutoSession.java` (1481L, compile:music-sync*,wearable) — Android side of the automatic mode: owns the {@link AutoEngine}, writes each cycle to every participant row with that r…
- `AutoTemplateData.java` (102L, compile:music-sync*,wearable) — GENERATED by scripts/gen-exercises.py from branding/exercises/*.json — do not edit.
- `AutoTemplates.java` (416L, compile:music-sync*,wearable) — The exercises of an automatic session (pure Java; data in {@link AutoTemplateData}, from branding/exercises/).
- `AutoUi.java` (1220L, compile:music-sync*,wearable) — Automatic mode UI (docs/xems-auto-mode-spec.md §2): the "Авто" tile opens a sheet with four short steps — program · cli…
- `ExerciseFigure.java` (264L, compile:music-sync*,wearable) — An exercise figure that moves with the impulse: the frames of the exercise (assets/xems/exercises.json, from branding/e…
- `ProgramArt.java` (129L, compile:music-sync*,wearable) — The picture of a program by its kind and the client's sex: neon line art, so it always sits on a dark tile — in the lig…

**dialog/** (`branding/java/src/com/isaigu/gymapp/dialog/`)
- `BlockProgramEditor.java` (234L, compile:interval-timer,music-sync*) — Block list editor (opened from the interval timer): one card per block with steppers for cycles, strength, frequency an…
- `BlockProgramRunner.java` (297L, compile:interval-timer,music-sync*) — Global block program runner (interval timer extension).
- `BlockProgramStorage.java` (75L, compile:interval-timer,music-sync*) — Persists global block program in interval_timer SharedPreferences.
- `IntervalTimerHelper.java` (2178L, compile:interval-timer,music-sync*) — Master-panel interval timer: floating dial (AlertDialog overlay, never addView on decor) and a settings sheet built wit…
- `ModalInfoHelper.java` (107L, compile:music-sync*) — Themed info modal shared by music player and interval timer.
- `MusicDial.java` (331L, compile:music-sync*) — Compact music player — the same floating dial as the interval timer and the HR dial: 192 dp ring (track progress; drag …
- `MusicPlayerHelper.java` (2459L, compile:music-sync*) — 
- `MusicPlaylistEntry.java` (22L, compile:music-sync*) — 
- `MusicPlaylistStorage.java` (74L, compile:music-sync*) — Persists playlist URIs between sessions.
- `MusicTrackLabel.java` (114L, compile:music-sync*) — Resolve a human-readable track title from metadata tags or file name.
- `ParamDialogUi.java` (390L, compile:music-sync*) — The program parameters dialog (row ⚙ and ⚙ Master) in the look of the other XEMS menus: a rounded card, the four mode h…
- `PauseSetting.java` (161L, compile:music-sync*) — "Двоен импулс" in the program parameters dialog, per mode: Основен (under the pulse width), Кардио and Масаж (under the…
- `ProgramSegment.java` (69L, compile:interval-timer,music-sync*) — One block: X impulse cycles at MA / Hz / width (ON/OFF stay from the program).
- `RampSetting.java` (262L, compile:music-sync*) — Soft rise / fall of the impulses in the program parameters dialog (per user and from the master settings — both use Edi…
- `TimerPreset.java` (159L, compile:interval-timer,music-sync*) — Named interval / block timer configuration stored on device.
- `TimerPresetStorage.java` (89L, compile:interval-timer,music-sync*) — Local named timer presets (interval + block program).

**train/model/** (`branding/java/src/com/isaigu/gymapp/train/model/`)
- `SoftRamp.java` (215L, compile:music-sync*) — Soft rise / fall of the impulse, done by the tablet: the suit ignores the ramp bytes of the work-params PDU, so at the …

**train/utils/** (`branding/java/src/com/isaigu/gymapp/train/utils/`)
- `ChannelStrengthScale.java` (122L, compile:channel-scale,music-sync*) — Encode-time correction for per-channel impulse strength sent over BLE.
- `MasterStrengthControl.java` (346L, compile:music-sync*) — External control channel for master impulse strength (MA / circle slider).
- `MusicAutoTune.java` (348L, compile:music-sync*) — Picks music-sync settings from a track's own envelope so the impulse follows how the body reads it: separate hits versu…
- `MusicDiagLog.java` (151L, compile:music-sync*) — Persistent diagnostic log for music player and uncaught crashes.
- `MusicPlayerEngine.java` (751L, compile:music-sync*) — Decode audio file to loudness + rhythm envelopes, play via MediaPlayer, drive sync from playback position.
- `MusicSync.java` (1426L, compile:music-sync*) — Music player → {@link MasterStrengthControl#setMasterStrength(int)}.
- `MusicSyncBridge.java` (33L, compile:music-sync*) — Hooks from patched training UI into music sync.
- `MusicUriSource.java` (64L, compile:music-sync*) — Open SAF/content URIs reliably for decode and playback.
- `PartStrength.java` (259L, compile:music-sync*) — Selected muscle groups (channels) on the training screen: + / − and the avatar slider change the impulse strength of th…
- `ProgramLive.java` (205L, compile:music-sync*) — Hook: TrainItem.setTrainProgram (scripts/apply-live-settings.py) — the parameters saved from ⚙ Master (the right panel)…
- `SoundEnvelopeMapper.java` (71L, compile:music-sync*) — Perceptual (log/dB) loudness mapping for music → impulse strength.

**wearable/** (`branding/java/src/com/isaigu/gymapp/wearable/`)
- `BandAppInstall.java` (303L, compile:music-sync*,wearable) — The XEMS app on the band (Band 9 / 10) installs and updates itself: once the band is connected over the classic link an…
- `BandLaunch.java` (107L, compile:music-sync*,wearable) — Open the XEMS app on the band from XEMS: the Settings button (and {@link BandRemote} at the start of a workout).
- `BandMacFinder.java` (191L, compile:music-sync*,wearable) — Finds the band's MAC when the Mi Fitness log gave only the key: the tablet's paired and connected Xiaomi bands first, t…
- `BandPairing.java` (717L, compile:music-sync*,wearable) — The one place a band is paired: read the key + MAC from the newest Mi Fitness log (a key without a MAC → the band is fo…
- `BandRemote.java` (1091L, compile:music-sync*,wearable) — XEMS on the wrist without installing anything: the band's own music screen becomes the training remote.
- `BandWorkout.java` (114L, compile:music-sync*,wearable) — The band owner's training also runs as a native workout on the band: XEMS starts, pauses, resumes and finishes it, the …
- `CardPublisher.java` (129L, compile:music-sync*,wearable) — The client's card goes up the moment a training is saved — no timer, no opened report needed.
- `ClientPrograms.java` (129L, compile:music-sync*,wearable) — The client's own settings per program ("Иван · Test"): written by the row's diskette and by the row's ⚙ save, loaded wh…
- `ClientRow.java` (435L, compile:music-sync*,wearable) — One row of the client list (Потребители), made for the trainer's glance: photo, the two names, the goal, then compact i…
- `EmsBleCoexist.java` (39L, compile:music-sync*,wearable) — Pause EMS suit BLE scan while the band HR session is active (same radio).
- `HrChartView.java` (298L, compile:music-sync*,wearable) — Live HR chart: faint zone bands, the HR line in zone colours with a soft fill, the rest / limit / ceiling lines, a puls…
- `HrDemandPolicy.java` (65L, compile:music-sync*,wearable) — When the band should measure heart rate (realtime 8/45).
- `HrGuard.java` (286L, compile:music-sync*,wearable) — Pulse module driver: feeds {@link HrGuardCore} with band HR and the running program, and writes its factors to the runn…
- `HrGuardCore.java` (528L, compile:music-sync*,wearable) — Pulse module: heart-rate driven control of the impulse output, without any extra input.
- `HrHistory.java` (126L, compile:music-sync*,wearable) — Heart-rate samples of the last hour (ring buffer) for the HR panel: chart, averages and time in zones.
- `ManualDefaults.java` (84L, compile:music-sync*,wearable) — The manual mode's starting values: a client who comes into a training slot and has no settings of their own yet (no Nex…
- `NextClient.java` (645L, compile:music-sync*,wearable) — The next client from the calendar: shortly before the appointment, when nothing runs on the tablet, asks the trainer an…
- `NextPlan.java` (746L, compile:music-sync*,wearable) — A client's settings for the next training: what was used last time (kept when a training ends) and a recommendation fro…
- `NotifyHaForegroundService.java` (123L, compile:music-sync*,wearable) — Keeps direct BLE HR alive while the dial is connected (Huawei battery saver).
- `NotifyWearableBridge.java` (738L, compile:music-sync*,wearable) — Wearable HR bridge — direct BLE only (auth key + MAC).
- `PlanScreen.java` (1013L, compile:music-sync*,wearable) — The "План" tab: today's (or the week's) appointments from the tablet's calendar, each with its client, held ✓ / missed …
- `ProgramFit.java` (817L, compile:music-sync*,wearable) — Personalisation of the manual mode against the SAVED program ("Test" or any other): <ul> <li>The saved program is the b…
- `QuickStart.java` (259L, compile:music-sync*,wearable) — Client list (Потребители): <ul> <li>▶ at the end of every row: the client's last program (their saved one, else the las…
- `ReportBridge.java` (531L, compile:music-sync*,wearable) — window.XemsReport in the report page.
- `ReportScreen.java` (86L, compile:music-sync*,wearable) — Client history and training reports: a full-screen page (assets/report/session-report.html) drawn from the recorded ses…
- `Schedule.java` (516L, compile:music-sync*,wearable) — The studio's appointments from the tablet's own calendar (Acuity → Google Calendar sync, or any calendar the tablet sho…
- `SearchPad.java` (580L, compile:music-sync*,wearable) — Our own search keyboard for the client searches (Потребители, the client / program / device picker), made for a tablet …
- `SessionInts.java` (41L, compile:music-sync*,wearable) — Growable int array for the per-second session columns.
- `SessionRec.java` (385L, compile:music-sync*,wearable) — One training of one client, one sample per second: what the suit got (main strength, the ten channel shares, Hz, µs, im…
- `SessionRecorder.java` (446L, compile:music-sync*,wearable) — Records every training on the tablet, one sample per second per slot, for the client report.
- `SessionStore.java` (151L, compile:music-sync*,wearable) — Recorded trainings on the tablet: files/xems_sessions/index.json (one summary per training, all clients) and s_&lt;id&g…
- `SessionUploader.java` (162L, compile:music-sync*,wearable) — Sends what the client's training analysis needs (the summary + the per-second record from files/xems_sessions, gzip-com…
- `SuitReconnect.java` (425L, compile:music-sync*,wearable) — The suit's Bluetooth link dropped during a training: the row stays (client, program, time left, all settings), paused a…
- `TrainIndex.java` (155L, compile:music-sync*,wearable) — The index buttons around the avatar (MA, Hz, 2nd-impulse MA, 2nd-impulse Hz): <ul> <li>a selection clears itself 5 s af…
- `WearableBandPicker.java` (215L, compile:music-sync*,wearable) — Pick the band from the phone's paired (bonded) Bluetooth devices — no scan, no location permission.
- `WearableBleDiagLog.java` (191L, compile:music-sync*,wearable) — Ring-buffer + file log for direct BLE HR (pull via adb: externalFilesDir/diag-logs/wearable-ble.log).
- `WearableBlePermissions.java` (180L, compile:music-sync*,wearable) — Runtime BLUETOOTH_CONNECT + BLUETOOTH_SCAN (Android 12+) — required for GATT connect/discover.
- `WearableConfig.java` (440L, compile:music-sync*,wearable) — Persisted settings for direct BLE wearable sync.
- `WearableHrPanel.java` (324L, compile:music-sync*,wearable) — The "i" of the HR dial: what matters during a session, drawn — the HR now with its zone, the HR chart (5 / 15 min / all…
- `WearableLivePanel.java` (340L, compile:music-sync*,wearable) — "Band data" panel: every live field from 8/47, event rate, share the raw recording.
- `WearableSettingsSection.java` (663L, compile:music-sync*,wearable) — Settings → Band: the only place where the band MAC and auth key are entered.
- `WearableSyncHelper.java` (1349L, compile:music-sync*,wearable) — Wearable sync UI: config modal + floating HR dial (same pattern as interval timer).
- `WearableUi.java` (238L, compile:music-sync*,wearable) — Shared text, colors and small view builders for the band UI (no new resource IDs).

**wearable/xiaomi/** (`branding/java/src/com/isaigu/gymapp/wearable/xiaomi/`)
- `MiFitnessLogImport.java` (697L, compile:music-sync*,wearable) — Reads the band's auth key (and BLE MAC when present) out of the log files the Mi Fitness app writes (Profile → About → …
- `XiaomiBand.java` (183L, compile:music-sync*,wearable) — Picks the link for the configured band.
- `XiaomiBandAckTimeoutTask.java` (16L, compile:music-sync*,wearable) — Band never ACKed a command (separate file for d8 compatibility).
- `XiaomiBandAppLink.java` (258L, compile:music-sync*,wearable) — Messages between the XEMS app on the band (quick app, system.interconnect) and XEMS here.
- `XiaomiBandAuthStartRunnable.java` (17L, compile:music-sync*,wearable) — Deferred auth start after CCCD writes complete.
- `XiaomiBandAuthTimeoutTask.java` (15L, compile:music-sync*,wearable) — 
- `XiaomiBandBleClient.java` (1167L, compile:music-sync*,wearable) — Direct BLE client for Xiaomi Band 8 (encrypted V1 protocol on service 0xFE95).
- `XiaomiBandCrypto.java` (182L, compile:music-sync*,wearable) — Crypto helpers for Xiaomi encrypted BLE V1 (ported from Gadgetbridge / miband-7-pro-monitor).
- `XiaomiBandFraming.java` (110L, compile:music-sync*,wearable) — Xiaomi V1 BLE framing layer (service 0xFE95).
- `XiaomiBandGattCallback.java` (154L, compile:music-sync*,wearable) — Top-level GATT callback (separate file for d8 compatibility).
- `XiaomiBandInstaller.java` (209L, compile:music-sync*,wearable) — Installs a quick app (.rpk) on the band over the link XEMS already holds (Band 9 / 10, SPP).
- `XiaomiBandKeepaliveTask.java` (16L, compile:music-sync*,wearable) — Periodic stall check — never resends START (that kills the measurement window).
- `XiaomiBandLink.java` (59L, compile:music-sync*,wearable) — One live link to a Xiaomi band, whatever the radio: BLE (FE95, Band 8 and older) or Bluetooth Classic SPP (Band 8 Pro /…
- `XiaomiBandMessages.java` (210L, compile:music-sync*,wearable) — Protobuf commands shared by the BLE and SPP links (Command{type=1, subtype=2, …}).
- `XiaomiBandMtuFallbackTask.java` (16L, compile:music-sync*,wearable) — onMtuChanged never arrived — discover services anyway (separate file for d8).
- `XiaomiBandPostAuthInit.java` (55L, compile:music-sync*,wearable) — Post-auth init: clock → device info → user profile → worn/battery → realtime HR.
- `XiaomiBandProto.java` (149L, compile:music-sync*,wearable) — Minimal protobuf helpers for Xiaomi encrypted BLE V1.
- `XiaomiBandRealtimeStartRunnable.java` (16L, compile:music-sync*,wearable) — Deferred realtime START after HR config (separate file for d8 compatibility).
- `XiaomiBandReconnectTask.java` (16L, compile:music-sync*,wearable) — Reconnect after unexpected GATT drop while realtime is armed.
- `XiaomiBandRemote.java` (58L, compile:music-sync*,wearable) — The band's own screens talking back to XEMS: the music screen asks for the current "track" and sends its buttons.
- `XiaomiBandRfcommPort.java` (183L, compile:music-sync*,wearable) — RFCOMM (Serial Port Profile) socket to the band.
- `XiaomiBandSppClient.java` (964L, compile:music-sync*,wearable) — Xiaomi band over Bluetooth Classic (RFCOMM / SPP): Band 8 Pro, 9, 9 Pro, 10, 10 Pro.
- `XiaomiBandSppFrames.java` (247L, compile:music-sync*,wearable) — Byte framing of the Xiaomi link over Bluetooth Classic (RFCOMM / SPP).
- `XiaomiBandSppPort.java` (9L, compile:music-sync*,wearable) — Byte pipe to the band.
- `XiaomiBandSppTask.java` (73L, compile:music-sync*,wearable) — Main-thread steps of the SPP link (named class: no lambdas / anonymous classes for dx).
- `XiaomiBandStatus.java` (157L, compile:music-sync*,wearable) — What the band says about itself besides heart rate: battery, charging, worn / not worn, asleep, firmware and model.
- `XiaomiBandWorkout.java` (79L, compile:music-sync*,wearable) — A workout the band records itself (HR, calories, time), started from the phone — the band keeps it in its own history a…
- `XiaomiBandWriteQueue.java` (237L, compile:music-sync*,wearable) — Serialized GATT writes with band-ACK gating for encrypted commands.

**widget/** (`branding/java/src/com/isaigu/gymapp/widget/`)
- `AvatarClusterLayout.java` (163L, compile:avatar-cluster,music-sync*) — Proportional avatar cluster lock.
- `MusicImpulseMeterView.java` (237L, compile:music-sync*) — Two live bars for the music player: music level (after rhythm mix) and the impulse strength actually sent to the suit, …
- `MusicVisualizerView.java` (217L, compile:music-sync*) — Radial music visualizer: rays from the play-button ring toward the seek ring (never past it).
- `TimerRingView.java` (348L, compile:interval-timer,music-sync*) — XEMS dial ring (interval timer, HR dial): a 60-segment LED ring on a soft face.
- `XemsClientMatch.java` (55L, compile:music-sync*,xems-license) — Finding a client on the tablet list by e-mail, else by the phone's last 9 digits (profiles and dossiers).
- `XemsClientSync.java` (398L, compile:music-sync,xems-local) — The clients' own profiles (filled in the studio's booking PWA) → the tablet's client list.
- `XemsDossier.java` (437L, compile:music-sync*,xems-license) — The client dossier on the server (stage 1): the studio's client list is kept on the licence server, one record per pers…
- `XemsFullscreen.java` (109L, compile:music-sync*) — Full screen: status and navigation bars hidden; a swipe from the edge shows them for a moment ("sticky immersive"), the…
- `XemsGuard.java` (108L, compile:music-sync*) — Safety net for XEMS add-on code called from the app (hooks, handlers, drawing).
- `XemsIcon.java` (220L, compile:music-sync*) — Line icons drawn in code (one stroke weight, rounded caps) so the menu and the control panel look like one family and s…
- `XemsLang.java` (44L, compile:music-sync*,xems-license,xems-local) — The app's own language (Settings → language: "bg" / "en", prefs setting_share/language), not the tablet's system langua…
- `XemsLicense.java` (441L, compile:music-sync,xems-license) — Which XEMS modules this installation may use.
- `XemsLicenseClient.java` (593L, compile:music-sync,xems-license) — Talks to the XEMS license / update server (HTTPS, JSON).
- `XemsLicenseSection.java` (330L, compile:music-sync*) — Settings → "Access & license": what is unlocked, the user key, this device's id (for support / the server) and the upda…
- `XemsLicenseToken.java` (319L, compile:music-sync,xems-license) — License token issued by the XEMS license server (no Android classes: unit-testable).
- `XemsLocalApi.java` (288L, compile:xems-local) — The tablet as the app's backend: ApiMgr's calls for customers, programs and training history land here instead of xemsp…
- `XemsLocalAvatar.java` (737L, compile:xems-local) — Client photo: picked from the gallery, cropped square, 320 px JPEG in the app's files (files/avatars).
- `XemsLocalGate.java` (248L, compile:xems-local) — Hidden doors of the tablet build.
- `XemsLocalSection.java` (360L, compile:xems-local) — Settings card "Tablet and data": the mode (admin setup / user), the profile key, the suits, export / import of the tabl…
- `XemsLocalStore.java` (1141L, compile:xems-local) — Local-only data layer: users, programs, training history and suits stay on the tablet.
- `XemsLocalUserForm.java` (962L, compile:xems-local) — New / edit client form — one screen, mostly taps: name, sex, age / height / weight wheels, phone; goal, fitness and con…
- `XemsModuleInfo.java` (453L, compile:music-sync*) — The "i" of every XEMS module: what it is, what it gives (value first), how to work with it.
- `XemsNav.java` (813L, compile:music-sync*) — Main navigation (v1.1.64).
- `XemsPanel.java` (320L, compile:music-sync*) — The right control panel, redrawn: ■ Stop — square, top ▶ Start / ❚❚ — tall + — tall − — tall ⚙ Master — square, bottom …
- `XemsSearch.java` (225L, compile:music-sync*,xems-local) — Client-list search (Потребители tab, the training picker).
- `XemsUi.java` (659L, compile:music-sync*) — XEMS UI kit — one look for every module (interval timer, player, HR, AI).

## band-app (Xiaomi Vela quick app, Band 10)
- `band-app/src/app.ux` (465L) — 
- `band-app/src/manifest.json` (56L) — band app id, versionName/versionCode (must match app.ux APP_VERSION + BandAppInstall.VERSION), page list
- `band-app/src/common/auto-route.js` (45L) — Jump from the home dial into the live session — once per session.
- `band-app/src/common/body-map.js` (3L) — Generated by scripts/gen-body.py — colour boxes under the muscle stencils (x, y, w, h, zone).
- `band-app/src/common/train-touch.js` (147L) — Train screen touch helpers — shared by pages/train and band-app/test.
- `band-app/src/common/ui.js` (195L) — Shared look and helpers for the XEMS band pages.
- `band-app/src/pages/ai/index.ux` (653L) — band screen: Smart Session (AI) — live HR, strength, double impulse, hold-to-stop
- `band-app/src/pages/index/index.ux` (564L) — home: one vertical scroll — heart rate, then a big card per module (Start first).
- `band-app/src/pages/music/index.ux` (451L) — band screen: music remote — play/pause, prev/next, impulse ceiling
- `band-app/src/pages/pulse/index.ux` (430L) — band screen: heart rate, auto control on/off, last 3 minutes chart
- `band-app/src/pages/summary/index.ux` (526L) — band screen: session summary after training
- `band-app/src/pages/timer/index.ux` (398L) — band screen: interval timer remote
- `band-app/src/pages/train/index.ux` (1213L) — Start: scroll list + hold-to-slide overlay for per-channel strength.
- `band-app/test/app-screen.test.mjs` (29L) — Verifies screen wake policy: no setKeepScreenOn during training.
- `band-app/test/auto-route.test.mjs` (41L) — 
- `band-app/test/home-layout.test.mjs` (32L) — 
- `band-app/test/stability.test.mjs` (68L) — Start of a workout without a burst on the band: states arriving together redraw the pages once (latest state), and a su…
- `band-app/test/train-layout.test.mjs` (60L) — 
- `band-app/test/train-touch.test.mjs` (136L) — Unit tests for train screen touch/layout logic (Node, no emulator).
- `band-app/test/visibility.test.mjs` (73L) — Screen off → XEMS sends only the pulse; screen on → full state at once.
- `band-app/scripts/check-art.py` (66L) — Image budget for the band app — keeps the look rich without making the band slow.
- `band-app/scripts/gen-all-btn.py` (58L) — Green/red bar for Start screen (main − / +). Vela clips images, not stacked CSS fills.
- `band-app/scripts/gen-art.py` (198L) — Baked artwork for the band app: light layers for CSS circles (badges, buttons), glows behind rings.
- `band-app/scripts/gen-bg.py` (71L) — Screen backgrounds for the band app (212 × 520): near-black with a soft glow of the module's colour at the top (a secon…
- `band-app/scripts/gen-body.py` (150L) — The muscle figure for the band (summary page, screen 2), from the same art as the client card.
- `band-app/scripts/gen-home-preview.py` (80L) — Render the card-menu home (212×520) from layout constants — no emulator.
- `band-app/scripts/gen-icons.py` (161L) — Generate v4 band icons — white glyphs on transparent PNG.
- `band-app/scripts/gen-lang.py` (47L) — Make the English band app from the Bulgarian source: copy the project, replace every Bulgarian phrase from scripts/en.j…
- `band-app/scripts/gen-pages.py` (37L) — Stamp scripts/common.css into each page under src/pages/*/index.ux.
- `band-app/scripts/gen-train-preview.py` (329L) — Render train screen preview PNG (212×520) from layout constants — no emulator.
- `band-app/scripts/natural.py` (81L) — Natural colours for the band app (5.9.45): undoes the parts of the neon palette (scripts/neon.py, 5.9.39) that read as …
- `band-app/scripts/neon.py` (98L) — Neon palette for the band app (5.9.39): one table old → new, applied to every page, the shared CSS/JS and the art gener…
- `band-app/scripts/run-emulator-test.sh` (18L) — Quick train screen previews (212×520 PNG) — no emulator required.
- `band-app/scripts/test-band.sh` (40L) — Closest-to-device automated checks without Band 10 hardware.
- `band-app/scripts/setup-emulator.mjs` (36L) — Create a Vela VVD sized like Band 10 (212×520 logical).

## server (Cloudflare Worker license server)
- `server/src/admin.js` (609L) — admin panel HTML/JS (licenses, suits/MAC, APK releases)
- `server/src/card.js` (93L) — Shareable client card: validation of what the tablet sends, the link id, and the page itself.
- `server/src/catalog.js` (39L) — Каталог на модули и функции — източник на истина за абонаменти.
- `server/src/clients.js` (106L) — One pushed record: {key (tablet id), cid?, ek?, pk?, t, deleted?, data?}; null when unusable.
- `server/src/crypto.js` (146L) — ECDSA P-256 token signing compatible with Android XemsLicenseToken (DER signatures).
- `server/src/ems.js` (136L) — MAC адреси, които влизат в жетона (активни + чакащи дистанционно сдвояване).
- `server/src/history.js` (75L) — A training id is its start time in ms: digits only, else null.
- `server/src/index.js` (1047L) — Worker entry: routes /v1/license/activate|refresh, /v1/app/update, releases, admin API, rate limits
- `server/src/limits.js` (28L) — Caps and rate-limit settings — stay safe on Workers free tier.
- `server/src/plans.js` (28L) — Plan presets → mods / feat arrays (applied at license creation).
- `server/src/profile.js` (83L) — Client profiles from the booking PWA → the studio's tablets (validation, studio code, cheap limiter).
- `server/src/report.js` (42L) — The bridge the report page expects (window.XemsReport), made from one fetch of /v1/history/<cardId> (the id comes from …
- `server/src/utils.js` (102L) — Shared helpers for license server (testable, no Worker bindings).
- `server/test/card.test.js` (98L) — 
- `server/test/catalog.test.js` (29L) — 
- `server/test/clients.test.js` (68L) — 
- `server/test/crypto-verify.test.js` (24L) — 
- `server/test/crypto.test.js` (68L) — Generate a test P-256 key pair in PEM format compatible with importPrivateKey
- `server/test/ems.test.js` (15L) — 
- `server/test/history.test.js` (95L) — D1-shaped wrapper over node:sqlite with the real migration.
- `server/test/plans.test.js` (30L) — 
- `server/test/profile.test.js` (53L) — 
- `server/test/report.test.js` (14L) — 
- `server/test/utils.test.js` (99L) — 
- `server/migrations/0001_init.sql` (63L) — 
- `server/migrations/0002_ems_devices.sql` (7L) — 
- `server/migrations/0003_ems_devices_catalog.sql` (16L) — 
- `server/migrations/0004_client_cards.sql` (14L) — 
- `server/migrations/0005_client_card_lookup.sql` (7L) — 
- `server/migrations/0006_client_inbox.sql` (13L) — 
- `server/migrations/0007_studio_code_xbody.sql` (3L) — 
- `server/migrations/0008_session_records.sql` (13L) — 
- `server/migrations/0009_clients.sql` (21L) — 
- `server/scripts/seed-release.sh` (25L) — Register current APK as a release on the license server.

## Branding YAML maps (top-level keys)

`branding/design-config.yaml` (26L): L1 row: · L3 columns: · L9 avatar: · L20 mode_buttons: · L23 sliders: · L25 active_preset: phone

`branding/design-presets.yaml` (90L): L4 active_preset: phone · L6 presets:

`branding/train-controls-map.yaml` (399L): L9 version: 1 · L10 app: xems-pro · L11 updated: 2026-09-19 · L13 architecture: · L22 global_controls: · L92 row_controls: · L257 program_data_bean: · L322 gear_dialog: · L334 parallel_apis_existing: · L357 train_control_bridge_proposed: · L377 new_ui_element_recipe:

`branding/ui-map.yaml` (237L): L5 version: 1 · L6 app: xems-pro · L13 build_pipeline: · L44 screens: · L83 train_row: · L164 config_to_xml: · L185 safe_edit_rules: · L198 agent_checklist: · L207 coordination: · L220 visual_reference:

## Docs (headings with line numbers → Read offset/limit)

`AGENTS.md` (5L)
  - L1 # Agents

`CLAUDE.md` (85L)
  - L1 # XEMS — agent guide
  - L8 ## Token protocol — always
  - L26 ## How it fits together
  - L42 ## Invariants (breaking one = broken release)
  - L55 ## UI standard (owner's requirement — every screen, every level: tablet, band, report, card, PWA)
  - L63 ## Deeper context (read only the section you need — headings/lines are in MAP)
  - L82 ## Keeping the map true

`band-app/CLAUDE.md` (27L)
  - L1 # band-app — Xiaomi Vela quick app (Band 10, 212×520)

`band-app/docs/native-first.md` (24L)
  - L1 # Интеграция с Band 9/10
  - L5 ## Слоеве
  - L11 ## Бърз вход в приложението
  - L19 ## Какво кодът не прави

`band-app/docs/screen-preview.md` (75L)
  - L1 # Извеждане на кадри от екрана на band приложението
  - L5 ## Кратко
  - L21 ## Какво прави
  - L31 ## Режими
  - L39 ## Кога да го ползваш
  - L45 ## Какво **не** е
  - L54 ## Поддръжка при промени в UI
  - L61 ## Версии на train екрана
  - L68 ## Интеграция в тестовете

`band-app/docs/ui-versions.md` (88L)
  - L1 # Band train screen — UI версии
  - L5 ## Home меню (не се пипа без изрично решение)
  - L10 ## v2 — стабилен play layout (baseline)
  - L21 ## v3 — естетика (текуща, върху v2)
  - L33 ## Модулни екрани — v4 (5.9.34)
  - L46 ## Графика — v5 (5.9.35)
  - L58 ## Старт — v4 (5.9.36)
  - L73 ## Графика — v6 (5.9.37)
  - L83 ## Colours: natural (5.9.45)

`band-app/test/README.md` (46L)
  - L1 # Band app testing (closest to Band 10 without hardware)
  - L3 ## Layers
  - L17 ## Quick run (CI / agent)
  - L23 ## Train screen preview — **canonical method for UI frames**
  - L40 ## Not automatable without hardware

`branding/CLAUDE.md` (11L)
  - L1 # branding/ — resources patched into the APK

`branding/DEVELOPMENT.md` (252L)
  - L1 # XEMS Pro — ръководство за разработка
  - L6 ## Канонични файлове
  - L27 ## Build pipeline
  - L37 ### APK винаги с кода (задължително)
  - L52 ### Ред на скриптовете (важен)
  - L64 ### Login стабилност
  - L73 ## Train row — структура
  - L90 ### Промяна на размери (без Design Studio)
  - L107 ### Текущи tuned стойности (avatar/index)
  - L116 ### Пропорционално мащабиране (AvatarClusterLayout)
  - L128 ## Правила за безопасни промени
  - L130 ### Може
  - L137 ### Не прави
  - L146 ## Каталог на контроли
  - L160 ## Добавяне на нов UI елемент
  - L162 ### Прост случай (smali-only)
  - L173 ### Сложен случай (Java + smali)
  - L188 ### Interval timer (1.1.00+)
  - L202 ### Паралелен достъп (external control)
  - L214 ## Координация с потребителя (агенти)
  - L229 ## Agent checklist
  - L243 ## Локални инструменти

`branding/UI-PITFALLS.md` (248L)
  - L1 # UI и функции — чести грешки и правилен подход
  - L12 ## 1. Промяната не се вижда в APK
  - L28 ## 2. CircleSeekBar (кръгов слайдер)
  - L32 ### 2.1 Ръчен seek не стига до края на песента
  - L43 ### 2.2 Различно поведение train vs player
  - L52 ### 2.3 Rotation на seek bar
  - L56 ### 2.4 Скок при разклащане на пръста (кръгът около аватара)
  - L65 ## 3. Floating overlay (AlertDialog)
  - L69 ### 3.1 Crash при показване / Activate
  - L76 ### 3.2 Бутони не реагират („безотговорни“)
  - L84 ### 3.3 Бутони около циферблата (timer)
  - L95 ### 3.4 Hide vs Close vs File picker
  - L105 ## 4. Music player — sync и state
  - L107 ### 4.1 Play → Pause → Play без импулси; MA ceiling пада
  - L116 ### 4.2 Hide player — настройки остават
  - L122 ### 4.3 Master ♫ двойно натискане
  - L128 ## 5. Interval timer — логика
  - L141 ## 6. Train list — swipe delete
  - L154 ## 7. Resource IDs (@id)
  - L170 ## 8. Координация music ↔ training ↔ timer
  - L182 ## 9. Smali patch — добри практики
  - L193 ## 10. Design pipeline vs factory UI
  - L205 ## 11. Шаблон за нова UI функция
  - L221 ## 12. Бърз указател по симптом
  - L237 ## Референции в кода

`diag-logs/README.md` (42L)
  - L1 # Diagnostic logs (music player)
  - L5 ## Important: use the correct APK
  - L14 ## Pull logs from phone
  - L32 ## Files

`docs/ble-hr-fix-v1.1.48.md` (48L)
  - L1 # BLE пулс v1.1.49-hrfix (и v1.1.48)
  - L3 ## Проблем
  - L10 ## Промени в `XiaomiBandBleClient` (build `v1.1.49-hrfix`)
  - L20 ## Сборка
  - L28 ## Верификация в лога
  - L44 ## Референция

`docs/ble-hr-fix-v1.1.53.md` (26L)
  - L1 # BLE пулс v1.1.53-ble — защо Band 8 прекъсваше след START
  - L3 ## Намерени бъгове (потвърдени със симулатора `scripts/ble-sim`)
  - L15 ## Тест

`docs/music-sync-ble-pacing-v1.1.54.md` (47L)
  - L1 # Music sync: BLE pacing + measured look-ahead (v1.1.54-sync)
  - L3 ## Problem
  - L13 ## Fix
  - L37 ## Rebuilding smali without the Android SDK

`docs/music-sync-rhythm-v1.1.55.md` (62L)
  - L1 # Music sync: unified scale, rhythm mix, floor/softness, new player UI (v1.1.55-sync)
  - L3 ## Algorithm
  - L29 ## Player UI (`apply-music-player.py` layout, `MusicPlayerHelper`)
  - L44 ## Build notes
  - L52 ## v1.1.56-sync: microphone mode removed

`docs/session-report/README.md` (71L)
  - L1 # Session report — design assets
  - L14 ## Implementation (1.1.156-ai)
  - L33 ## Share / export (1.1.157-ai)
  - L42 ## Personal context (1.1.158-ai)
  - L52 ## Languages (1.1.160-ai)
  - L58 ## One training, shown at the end (1.1.162-ai)

`docs/xems-ai-session-implementation.md` (219L)
  - L1 # XEMS AI (Smart Session) — реализация v1.1.58-ai
  - L6 ## 1. Архитектура
  - L22 ### Връзки с приложението
  - L35 ## 2. Съответствие със спецификацията
  - L58 ## 3. Хардуерни отклонения
  - L68 ## 4. Интерфейс
  - L89 ## 5. Активен режим: паузи и почивки (v1.1.58)
  - L114 ## 6. Основният екран по време на AI сесия
  - L135 ## 7. Гривна: една връзка за всички модули
  - L142 ## 8. Тестове
  - L163 ## 9. Сглобяване
  - L170 ## Двоен импулс (активна пауза) — v1.1.68
  - L199 ## Действия по време на сесията (v1.1.68)

`docs/xems-auto-mode-spec.md` (424L)
  - L1 # XEMS Автоматичен режим — спецификация v1.0 (реализирано в 1.1.156-ai, опростено в 1.1.162-ai)
  - L24 ## 1. Място в менюто
  - L32 ## 2. Стъпки (4 + на живо; отчетът е в клиентския картон)
  - L59 ## 3. Входни данни и формули
  - L61 ### 3.1 Профил
  - L72 ### 3.2 Модификатори (прилагат се към всяка програма)
  - L88 ### 3.3 Сила: какво е „лимит“
  - L103 ### 3.4 Доза
  - L109 ## 4. Твърди лимити (проверяват се на всеки тик)
  - L111 ### 4.1 Абсолютни — за всички програми
  - L129 ### 4.2 Обвивка във времето E(t) и прозорци на параметрите
  - L144 ## 5. Зони (10 канала)
  - L167 ## 6. Програми
  - L169 ### 6.0 Йерархия на избора
  - L193 ### 6.1 Общо стягане и оформяне (активна)
  - L203 ### 6.2 Сила и бързина (активна)
  - L217 ### 6.3 Седалище и бедра (активна)
  - L227 ### 6.4 Талия и корем (активна)
  - L238 ### 6.5 Кардио-метаболитна (активна, само Отслабване)
  - L249 ### 6.6 Дренаж (пасивна) — вълна по канали
  - L265 ### 6.7 Антицелулит (пасивна)
  - L277 ### 6.8 Болки в гърба и кръста (пасивна)
  - L293 ### 6.9 Следродилно възстановяване (пасивна)
  - L306 ### 6.10 Регенерация и релакс · Пасивен метаболизъм (пасивни)
  - L315 ### 6.11 Здрав гръб и стойка · Здрави мускули 50+ (активни, Здраве)
  - L325 ## 7. Опции по програма
  - L347 ## 8. Какво човекът може по време на сесия
  - L358 ## 9. Реализация
  - L401 ## 10. Подсказки (1.1.157-ai)

`docs/xems-client-data.md` (49L)
  - L1 # XEMS — какви данни къде живеят
  - L6 ## 1. Само на таблета
  - L17 ## 2. Споделяне (треньорът изпраща файл; след това файлът е при получателя)
  - L28 ## 3. Уеб — клиентският картон (`/c/<id>` на сървъра)

`docs/xems-client-list.md` (40L)
  - L1 # Списък с клиенти, търсене, избор (1.1.243-ai)
  - L6 ## Редът на клиента
  - L15 ## Обновяване
  - L19 ## Търсене — наша клавиатура (`SearchPad`)
  - L25 ## Клавиатурата според полето (1.1.244-ai)
  - L30 ## Меню
  - L34 ## Тъмна тема и фонове

`docs/xems-client-sync.md` (106L)
  - L1 # XEMS — синхрон клиент ↔ таблет ↔ сървър (1.1.202-ai)
  - L5 ## Досие на клиента на сървъра (етап 1)
  - L16 ## Кой е собственик на кои данни
  - L26 ## Картонът в приложението на клиента (1.1.247-ai)
  - L35 ## Сливане на профил на таблета (`widget/XemsClientSync`)
  - L48 ## Състояние → тренировката (`ai/AiPersonal`, `wearable/NextPlan.condition`)
  - L77 ## Разходи (Cloudflare Workers + D1 + KV) — принципи
  - L103 ## Кодът на студиото

`docs/xems-exercise-templates.md` (94L)
  - L1 # Exercise templates — Auto shows an example, the Smart Session (AI) follows them
  - L3 ## Mode definitions (owner's decision, 1.1.250-ai)
  - L17 ## Data
  - L27 ## Logic (`ai/AutoTemplates`, pure Java)
  - L45 ## Smart Session (`ai/AiExercises`, driven by `AiSession`)
  - L54 ## Auto (`AutoHints`)
  - L58 ## Energy, load and muscle map
  - L70 ## Program pictures (`ai/ProgramArt`)
  - L83 ## Figure colour
  - L86 ## Tests
  - L92 ## Not yet

`docs/xems-license-api.md` (179L)
  - L1 # XEMS — лиценз, отключване на модули и обновяване (клиент v1.1.85)
  - L5 ## Модули
  - L24 ## Настройка на таблет (админ) и потребителски режим
  - L32 ## Отключване
  - L44 ## Данни, които клиентът праща (входни данни за сървъра)
  - L59 ## API (HTTPS, JSON, UTF-8)
  - L63 ### 1. Активиране
  - L83 ### 2. Опресняване (веднъж на 24 h, във фон)
  - L96 ### 3. Проверка за нова версия
  - L113 ### 4. Клиентски картон (линк за клиента)
  - L151 ## Жетон (подписан от сървъра)
  - L167 ## Какво остава за сървъра
  - L174 ## Проверки (без Android)

`docs/xems-part-strength.md` (43L)
  - L1 # Избрани мускулни групи: сила на импулсите само за тях (v1.1.85)
  - L16 ## Как го постига (`train/utils/PartStrength`)
  - L29 ## Къде е вързано (`scripts/apply-part-strength.py`, последен в `build-apk.sh`)
  - L36 ## Проверки

`docs/xems-plan.md` (60L)
  - L1 # XEMS — „План“ и следващ клиент (1.1.188-ai)
  - L8 ## Откъде идват часовете
  - L15 ## Разпознаване на клиента (по ред)
  - L22 ## Кога пита
  - L31 ## Кой костюм
  - L35 ## Настройките
  - L49 ## Изглед (приоритет на вниманието)
  - L57 ## Статус в таба

`docs/xems-program-fit.md` (77L)
  - L1 # Записана програма, персонализация, запис с дискетата (1.1.238-ai, 1.1.239-ai)
  - L6 ## База = записаната програма
  - L13 ## Ръчна промяна = отправна точка
  - L21 ## Дискетата и ⚙ на реда → профилът на клиента (1.1.239-ai)
  - L31 ## Диалогът с параметрите
  - L44 ## Двоен импулс по режими (1.1.240-ai)
  - L55 ## Одит 1.1.241-ai (поправено)
  - L66 ## ⚙ на реда и ⚙ Master
  - L73 ## Превключвател „Персонализация“

`docs/xems-pulse-control.md` (163L)
  - L1 # Пулс модул: управление на импулсите по пулса (v1.1.59)
  - L8 ## Граници
  - L18 ## Решение (всяка секунда)
  - L40 ## Калории (`AiEnergy`)
  - L44 ### 1. Покой
  - L47 ### 2. По пулса
  - L54 ### 3. От стимулацията — по канали
  - L91 ### Защо максимум, а не сбор
  - L94 ### Гориво и край
  - L98 ### Проверка (`scripts/ai-sim`, 20 мин, 4/4 s, пулс в покой)
  - L108 ### Известно отклонение
  - L111 ## Кръгът на ♥
  - L116 ## Лог
  - L120 ## Циферблат: „i“ и ↻ (v1.1.70)
  - L144 ## Баланс на каналите по ширина на импулса (`ChannelStrengthScale.balance`)

`docs/xems-server-spec.md` (292L)
  - L1 # XEMS сървър — задание за доразработка (лицензи, функции, обновяване)
  - L7 ## 1. Цел
  - L15 ## 2. Какво е готово в клиента (XEMS ≥ 1.1.84)
  - L45 ## 3. Каталог: модули и функции
  - L78 ## 4. Устройство (предложение)
  - L93 ## 5. База данни (минимум)
  - L143 ## 6. Заявки (подробно в `xems-license-api.md`)
  - L145 ### 6.1 `POST /v1/license/activate`
  - L157 ### 6.2 `POST /v1/license/refresh`
  - L169 ### 6.3 `GET /v1/app/update?app=xems&channel=stable&code=209&device_id=…`
  - L177 ## 7. Подпис на жетона
  - L221 ## 8. Издания (обновяване)
  - L235 ## 9. Админ панел (минимум)
  - L249 ## 10. Сигурност
  - L260 ## 11. Пускане: стъпки
  - L271 ### Примерна проверка с curl
  - L285 ## 12. Отворени решения

`docs/xems-smart-session-spec.md` (602L)
  - L1 # XEMS Smart Session — формална спецификация v1.1
  - L14 ### Йерархия на решенията (строга)
  - L25 ### Тежести в арбитъра (ниво C)
  - L38 ### Режими на работа
  - L49 ## 1. Входни данни
  - L73 ### 1.2 Анкета (задължителна, всяка сесия)
  - L90 ### 1.1 Допустими комбинации (твърдо правило)
  - L104 ## 2. Измерване на HR в покой (състояние `CALIB_REST_HR`)
  - L131 ### 2.1 Доверие в пулса c_HR(t)
  - L149 ## 3. Производни физиологични величини
  - L151 ### 3.1 Максимален пулс
  - L158 ### 3.2 Резерв и относително натоварване (Karvonen)
  - L166 ### 3.3 Коридори по програма (в единици x)
  - L189 ## 4. Шаблони на програмите
  - L191 ### 4.1 Сегмент, цикъл, фаза
  - L216 ### 4.2 Общи твърди стойности
  - L225 ### 4.3 Шаблони (стойности по подразбиране)
  - L277 ### 4.4 Ограничения на PASSIVE за TONE/FAT
  - L289 ## 5. Защитни ограничения (SAFETY_GUARDS)
  - L312 ### 5.1 Допълнителни граници при SOLO [D]
  - L326 ## 6. Динамика: изход, доза, умора
  - L330 ### 6.1 Ток на изхода по канал k
  - L341 ### 6.2 Доза (заряд)
  - L353 ### 6.3 Модел на умората (генерира блоковете и почивките)
  - L372 ### 6.4 Генериране на блоковете (BlockMode = FATIGUE_DRIVEN)
  - L387 ## 7. Обработка на пулса в реално време
  - L399 ### 7.1 Показатели на блок j (основна фаза)
  - L414 ## 8. HR контролер
  - L422 ### 8.1 Грешки
  - L429 ### 8.2 Действия (ред на прилагане — от най-мекото)
  - L461 ### 8.3 Дисциплина на контура
  - L472 ### 8.4 Откриване на NON_RESPONDER
  - L482 ### 8.5 Упражненията в ACTIVE режим
  - L495 ## 9. Автомат на състоянията
  - L528 ## 10. Отчет след сесията
  - L540 ## 11. Калибриране на [D] параметрите
  - L556 ## 13. Покритие на сценариите
  - L585 ## 12. Източници

`docs/xems-suit-reconnect.md` (27L)
  - L1 # Прекъсната връзка с костюма — повторно свързване (1.1.246-ai)
  - L6 ## Поведение
  - L17 ## Стоково (преди)
  - L21 ## Кукички

`docs/xems-ui-kit.md` (179L)
  - L1 # XEMS UI kit — таймер, плейър, пулс, AI, навигация (v1.1.66)
  - L5 ## Принцип
  - L21 ## Интервален таймер
  - L50 ## Плейър — компактен режим (v1.1.63)
  - L61 ## Плейър — пълен режим
  - L74 ## Пулс
  - L78 ## Принцип „само необходимото“ (v1.1.66)
  - L90 ## Език
  - L94 ## Главен панел (`widget/XemsPanel`)
  - L105 ## Меню ☰
  - L109 ## Цял екран (`widget/XemsFullscreen`)
  - L113 ## Пулс модул по подразбиране
  - L118 ## Навигация (v1.1.64)
  - L138 ## Съкратено
  - L149 ## v1.1.69
  - L159 ## Плавно нарастване и спад (v1.1.69, `dialog/RampSetting`, `ai/AiRamp`)

`docs/xiaomi-band-integration.md` (630L)
  - L1 # Интеграция XEMS ↔ Xiaomi Smart Band 8 / 10
  - L13 ## 1. Цел
  - L23 ### Препоръчан път: Notify for Xiaomi
  - L34 ## 2. Поддържани устройства
  - L43 ### Хардуер (и двата модела)
  - L53 ### Достъп от XEMS
  - L66 ## 3. Архитектура
  - L84 ### Принципи
  - L93 ## 4. Предварителни изисквания (потребител)
  - L95 ### 4.1A Notify for Xiaomi (препоръчано)
  - L113 ### 4.1B Gadgetbridge (алтернатива)
  - L121 ### 4.2 Pairing (Gadgetbridge път)
  - L128 ### 4.3 Активиране на Intent API в Gadgetbridge
  - L146 ### 4.4 Package names на Gadgetbridge
  - L159 ## 5. Notify for Xiaomi Intent API (референция)
  - L166 ### 5.1 Live пулс — получаване
  - L178 ### 5.2 Live пулс — старт / стоп
  - L195 ### 5.3 Акселерометър (уникално за Notify)
  - L211 ### 5.4 Други полезни events
  - L222 ### 5.5 Команди за свързване / sync
  - L230 ### 5.6 adb примери (debug)
  - L247 ### 5.7 Notify vs Gadgetbridge
  - L260 ## 5B. Gadgetbridge Intent API (алтернатива)
  - L262 ### 5B.1 Live пулс — broadcast
  - L276 ### 5B.2 Live пулс — старт / стоп
  - L287 ### 5B.3 Синхронизация на здравни данни
  - L309 ### 5B.4 BLE свързаност (опционално)
  - L317 ### 5B.5 adb примери (debug)
  - L336 ## 6. XEMS модул: `NotifyWearableBridge`
  - L340 ### 6.1 Отговорности
  - L352 ### 6.2 Жизнен цикъл (Notify)
  - L369 ### 6.3 Mapping към EMS API
  - L386 ## 7. Правила за контрол (v1)
  - L388 ### 7.1 Адаптивен пулс
  - L401 ### 7.2 SpO₂ безопасност (след sync)
  - L410 ### 7.3 Debounce / hysteresis
  - L420 ## 8. Имплементация (Android / smali)
  - L422 ### 8.1 BroadcastReceiver (Kotlin референция — Notify)
  - L442 ### 8.2 Старт на сесия (Notify)
  - L458 ### 8.3 Регистрация (динамична)
  - L467 ### 8.4 Настройки в XEMS (UI)
  - L482 ## 9. Фази на разработка
  - L484 ### Фаза 1 — Live HR (MVP, Notify)
  - L492 ### Фаза 2 — SpO₂ и sync
  - L498 ### Фаза 3 — UX
  - L504 ### Фаза 4 — Бъдеще
  - L512 ## 10. Band 8 vs Band 10 — dev бележки
  - L526 ## 11. Тестване
  - L528 ### 11.1 Checklist (Notify)
  - L539 ### 11.3 Checklist (Gadgetbridge + XEMS v1.1.34+)
  - L576 ### 11.4 Известни проблеми
  - L595 ## 12. Ограничения и извън обхват
  - L606 ## 13. Референции
  - L623 ## 14. Changelog на документа

`docs/xiaomi-band-native-workout.md` (86L)
  - L1 # Native band workout started from the phone (Band 10)
  - L11 ## Sequence Mi Fitness sends (type 8 = Health, over the v2 protobuf channel)
  - L44 ## Sport types seen
  - L51 ## Band behaviour
  - L58 ## Open questions
  - L64 ## Sport codes (second capture, 2026-09-27 04:00–05:48)
  - L76 ## Third capture (06:10–06:16) and the mapping XEMS uses (1.1.159-ai)

`docs/xiaomi-band10.md` (299L)
  - L1 # Xiaomi Smart Band 9 / 10 — връзка през класически Bluetooth (v1.1.65)
  - L5 ## Защо е нужен втори път
  - L11 ## Избор на връзката
  - L25 ## Протокол по SPP
  - L57 ## Нови данни и за какво служат
  - L72 ## Какво още може, но не е направено
  - L85 ## Ограничения
  - L92 ## Офлайн тест
  - L110 ## Диагностика
  - L114 ## Управление от гривната (v1.1.71, `wearable/BandRemote`)
  - L144 ## Приложение XEMS на гривната (v1.1.72, `band-app/`)
  - L281 ## Две гривни: пулс на клиента + управление за треньора (1.1.208-ai)

`docs/xiaomi-band8-direct-ble.md` (325L)
  - L1 # Xiaomi Smart Band 8 — директна BLE връзка в XEMS (техническа документация)
  - L13 ## 1. Защо директна BLE връзка
  - L31 ## 2. GATT
  - L48 ## 3. Рамкиране (transport layer)
  - L64 ### Правило за ACK (коренът на бъга до v1.1.52)
  - L77 ## 4. Удостоверяване и криптиране
  - L107 ## 5. Команди (protobuf `Command{type=1, subtype=2, …}`)
  - L132 ## 6. Поток и състояния в `XiaomiBandBleClient`
  - L156 ### Диагностичен лог
  - L177 ## 7. Бъгове, поправени в v1.1.53-ble
  - L188 ## 8. Офлайн тест: `scripts/ble-sim/`
  - L210 ## 9. Какви данни дава Band 8
  - L225 ### Акселерометър и жироскоп
  - L242 ### Какво конкретно има по пътя „без други устройства“
  - L257 ### Запис на суровите данни (от v1.1.54-ble)
  - L282 ## 9a. Интерфейс (от v1.1.55-ble)
  - L300 ## 10. Сглобяване
  - L318 ## 11. Референции

`server/CLAUDE.md` (11L)
  - L1 # server — XEMS license server (Cloudflare Worker + D1)

`server/README.md` (64L)
  - L1 # XEMS License Server (Cloudflare Worker)
  - L13 ## OTA обновяване (GitHub)
  - L20 ## API
  - L31 ## Тестове
  - L38 ## Deploy
  - L58 ## Разходи
