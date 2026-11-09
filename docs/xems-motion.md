# XEMS Motion — body pose from five XIAO nRF52840 Sense sensors

Owner, 2026-11-03: a separate test module first (not in the APK yet). Sensors on the wrists, the shanks just above the
ankles and the upper back (T1–T2, on the suit), board **bottom side to the body**. Zero point = standing upright, feet
together, arms at the sides, back vertical. From there: at every moment the pose, the angles, the speeds, the movement.
Sensors must find their own places (no setting per sensor).

Status: **phase 1 built and tested offline** — firmware, host core, test bench page, end-to-end simulation.

| Part | File |
|---|---|
| Sensor firmware (same on all five) | `motion/xems_motion/xems_motion.ino`, fusion `motion/xems_motion/fusion.h` |
| Build → `.uf2` + Bluetooth OTA zips | `sh scripts/motion/build-motion.sh` → `motion/xems-motion-sense*.uf2` |
| Host core: calibration, identification, pose, reps (JS, no deps) | `motion/viewer/motion-core.js` |
| Test bench (Chrome, Web Bluetooth, demo person) | `motion/viewer/index.html` |
| 3-D body (three.js r158 vendored, MIT), muscle zones = XEMS channels | `motion/viewer/body3d.js`, `motion/viewer/vendor/three-r158.min.js` |
| The VR workout's android (rigged), default figure | `motion/viewer/models/android.js` (credits: `motion/viewer/models/CREDITS.md`) |
| Offline end-to-end test | `sh scripts/motion-sim/run.sh` (scripted, pass/fail) · `sh scripts/motion-sim/run.sh mocap` (real people) |
| Real movements (CMU mocap, 9 clips, 80 s) | `motion/mocap/cmu.js` ← `python3 scripts/motion/cmu2json.py <dir with .asf/.amc>` |

## The app — "XEMS Движение" for Android (owner 2026-11-03: everything installable, as easy as possible)
Download: **https://radilovk.github.io/ems/motion/xems-motion.apk** (8 MB). Build: `sh scripts/build-motion-app.sh`
→ `motion/dist/xems-motion.apk`; source `motion/app` (version in `motion/app/VERSION`). The test bench page in a
WebView (assets: the same files as https://radilovk.github.io/ems/motion/viewer/, works offline) + what a browser
cannot:
- **Bluetooth without choosing**: every "XEMS Motion …" in range connects by itself on start ("Свържи сензорите"
  looks again); a dropped sensor is found again. Frames batched every 20 ms with the phone's receive time
  (`Ble.java` → `XemsApp.onFrames`). Android's WebView has no Web Bluetooth.
- **Firmware over the USB cable** (`Usb.java` + `Dfu.java`, the voice module's loader): plugging a XIAO in opens the
  app on "Фърмуер на сензор" (USB filter Seeed / Adafruit); one tap: the 1200-bps touch sends a running sensor to
  its bootloader (a factory-fresh one: the panel asks for RST × 2), then the serial DFU (≈ 20 s). Both firmwares
  ride in the APK (`assets/fw/sense|sense-plus`, from the OTA zips); Sense is the default, Sense Plus one tap.
  `Dfu.java` passes the voice module's bootloader simulation with this firmware (253 frames, the first 3 byte-equal
  to adafruit-nrfutil).
- **Recordings** to Downloads/XEMS Motion + Android's share sheet (both files at once).
- The client's **height** (−/+, remembered) sets the figure's and the solver's proportions.
- Phones in landscape (≈ 380 px high): compact layout, sensors as chips, everything on one screen.
Tested here: the page in app mode with a fake bridge feeding firmware-format frames (calibration → figure →
recording → share → firmware panel); the Java compiles to dex. Not yet on a real phone.

### 1.1 / firmware 2 — "nothing lights, nothing is found" (owner's first try, 2026-11-04)
Two separate causes, both fixed:
- **Firmware 1 was nearly invisible and fell asleep**: a 60-ms blue blink every 2 s while waiting, and deep sleep
  after 10 min unconnected and still — a sensor charged and left on the table was asleep. Firmware 2: green 1 s +
  white flash at every power-up; **blue every second** while waiting; green short when connected; its place colour
  after calibration; orange double blink = battery low; fast red = the motion chip does not answer (Bluetooth stays
  up so the app can say so — fw 1 locked up there). Sleep only after 30 min and never on the USB cable. On the cable
  it says INFO every 2 s (now with `imu=0|1`).
- **Android hears no Bluetooth device while Location (GPS) is off** (apps below target 31) — the app did not check.
  Now a banner names what is missing — Bluetooth off / Location off / no permission — with a one-tap button to
  Android's own switch, and while searching it shows "around: N Bluetooth devices, XEMS sensors: M" (N = 0 → the
  phone hears nothing; M = 0 → the sensors are not on). Searching repeats every 3 s until five sensors are online.
- **"Провери сензора"** (firmware panel, sensor on the cable): reads the sensor's INFO over USB → "Sensor 4A2F works ✓
  · firmware 2 · battery 81 % (4.02 V) · motion chip ✓", or says it is silent / in its bootloader / runs other
  software / has an older firmware → "Зареди". The LED legend is in the panel.

### 1.2 / firmware 3 — "loaded, but dark, and silent on the cable" (owner, 2026-11-04)
The probe found the sensor as a running app (USB up) but no INFO: the firmware started and never reached `loop()`.
The core's I2C (`Wire_nRF52.cpp`) waits for bus events with no time limit — a motion chip that does not answer the
expected way freezes the start, before the LED and before Bluetooth. Firmware 3: bus lines checked before I2C, the chip
given 60 ms to power up and found at 100 kHz with retries; a **4-s watchdog** (fed in `loop`) restarts a frozen start,
and the stage it froze in (kept in `GPREGRET2`) is skipped next time (the chip → the sensor runs without motion,
red blinking, `INFO … imu=0/froze hang=2`). **Start stages light up**: red start → yellow motion chip → blue
Bluetooth → green + white ready, each also printed on USB (`BOOT n …`) — "Провери сензора" names the stage it stops
in. Not yet confirmed on the owner's sensors; if it stops on Bluetooth, the SoftDevice is the next suspect.

### 1.3 / firmware 4 — "blue, red, blue, red" (owner, 2026-11-04)
Firmware 3's start stages showed it: the sensors reach Bluetooth (blue) and restart (watchdog, red) — the start of
Nordic's SoftDevice crashes. Most likely the boards have **no SoftDevice S140 7.3.0** in flash (some XIAO boards ship
without it; the core boots and USB works without it, which is why loading and the USB probe worked). Firmware 4 reads
the SoftDevice's info block (0x3004 magic `0x51B1E5DB`, FWID at 0x300C, S140 7.3.0 = `0x0123`) before touching
Bluetooth: without it the sensor keeps running without Bluetooth, blinks red/blue slowly and says `bt=0 sd=0000` on
USB; a Bluetooth start that froze last time (watchdog) is skipped too. The Bluetooth clock now comes from the chip's
RC oscillator (`build-motion.sh` patches the variant to `USE_LFRC`) — no dependence on the 32 kHz crystal.
**App 1.3**: "Зареди" checks the sensor first; with no SoftDevice (or a start stuck at Bluetooth) it loads **Seeed's
own package — SoftDevice S140 7.3.0 + bootloader 0.6.2** (from the board package, `assets/fw/*/sdbl.*`, serial DFU
mode 3) and then our firmware, one tap, progress across both. Seven seconds after any load it checks again and
starts the full load by itself if Bluetooth is still missing. `sh scripts/motion-sim/run-dfu.sh` checks both packages
against a simulated bootloader (first frames byte-equal to adafruit-nrfutil).

### 1.4 / firmware 6 — the real cause, from the documentation (owner, 2026-11-04: "read how it is done, don't guess")
- **Nordic S140 SoftDevice Specification**: once the SoftDevice is enabled, POWER and CLOCK are *restricted*
  peripherals — "a write to a protected peripheral register will result in a Hard Fault"; use the SoftDevice API.
  Firmware 3–5 wrote the start stage straight into `NRF_POWER->GPREGRET2` — right after `Bluefruit.begin()` (stage
  4) → Hard Fault → the core's handler spins → 4-s watchdog → restart: exactly the owner's red → yellow → blue loop.
  Firmware 6 writes it through `sd_power_gpregret_clr/set` while the SoftDevice runs (`markStage`), as Bluefruit's
  own DFU service does (`BLEDfu.cpp`). Firmware 5 also reads the reset reason with `readResetReason()` (the core's
  `init()` clears `RESETREAS`).
- **IMU power** as Seeed's own library does it (`Seeed_Arduino_LSM6DS3`, `beginCore`): P1.08 output with **high
  drive (H0H1)**, no pull, HIGH, wait, then `Wire1`. No internal pull-ups on SDA/SCL before power-up (Nordic
  DevZone: I2C pins back-feed the unpowered sensor). The old "bus" line check is gone.

### 1.5 / firmware 7 — sleep without a button; the body's limits (owner, 2026-11-04)
**Sleep / wake** (no button on the sensors): *standby* = the motion chip only watches for a shake (AN5130 wake-up,
26 Hz low power, gyro off), Bluetooth heard every 2 s, LED dark. Into standby: "💤 Приспи" in the app (command
`sleep`; the app then stops reconnecting), or 5 min with no phone (never on the USB cable). Out: the phone connects —
**opening the app wakes every sensor** — or "☀ Събуди", or a firm shake (> 1 g, INT1 polled). 48 h in standby or an
empty battery → deep sleep (System OFF; the shake, the cable or RST wake it). Command `off` = deep sleep now.
A voice command can later send the same `sleep` (docs/xems-voice.md).
**Anatomy** (`armLimits`, `anatomyYaw`, `solveLegs` hip range in `motion-core.js`): what a human cannot do —
shoulder behind the body > 60° (hanging) / 45° (sideways) / 20° (overhead), across the body > 10–60°, elbow > 150°
or bending toward the little finger (hinge; ±110° of forearm turn allowed), hip flexion > 150°, extension > 35°,
abduction > 60°, adduction > 30°, a shin facing > 100° away from the chest, two shins > 110° apart. The estimated
upper arm moves to the nearest possible pose, its roll follows the elbow's hinge (no twisted elbow on the figure);
a measured sensor past a limit is a **measurement fault**: shin / back heading is pulled back (and re-anchored when
standing still), a wrist that stays impossible > 0.7 s is named on screen ("turned on its strap — put it back or
calibrate"). Test: `run.sh` injects a shin heading jump of 150° (named in 0.1 s, knees 4° off after) and a wrist
sensor turned 180° on its strap (named in 2.8 s); clean scripted and all CMU clips: 0 % false faults, errors unchanged.

### 1.6 — Trunk sensor place (owner, 2026-11-04: "let me say exactly where the fifth one is")
"5-и сензор" opens a side-view figure: any vertebra C7 … S1 on the back, or the breastbone / above / at / below the
navel in front (one tap; quick chips; how to find C7, T7, L4 by touch). `placeOf()` → spine height s (S1 0 … T1 1),
front/back, the point's offset. The solver no longer treats the trunk as one rigid block: real people bend the spine
with the lean — **pelvis → T1 bend ≈ a·lean + b**, fitted per level on all CMU clips (`scripts/motion/spine-fit.js`,
r 0.39 at S1 … 0.82 at T1) — so one sensor gives the pelvis (legs, hips, height) and the chest (shoulders, arms, head)
(`Body.spine`, `SPINE_FIT`). The sensor's own point is used for the shoulder lever (arm physics) and the pelvis height.
The balance re-anchoring of the height runs only for a sensor at T1–T2 (lower, the sensor's travel *is* the pelvis's;
the balance pulled it wrong in bends). The calibration expects the board normal forward for a front place.
Measured on real people (CMU, 9 clips, mean error °):

| place | knees | elbows | shoulders | trunk lean |
|---|---|---|---|---|
| T1 (upper back) | 12.2 | 18.4 | 15.9 | 0.7 |
| **T7 (between the shoulder blades) — recommended** | **9.3** | 19.2 | 15.9 | 2.7 |
| L3 (waist) | 8.7 | 22.4 | 15.7 | 8.6 |
| S1 (sacrum) | 11.6 | 23.4 | 15.7 | 10.6 |
| navel (front) | 12.8 | 22 | 15.5 | 9 |
| breastbone (front) | 14.1 | 18.8 | 15.5 | 2.0 |

The scripted test (rigid synthetic trunk) passes at T1 and T7; at L3 its rigid trunk disagrees with the real-people
spine model (trunk 6° vs limit 4°) — the CMU table is the reference there. `PLACE=T7 sh scripts/motion-sim/run.sh mocap`.

### 1.7 / firmware 8 — the suit's impulses kept out of the movement (2026-11-04)
The owner asked to start with what raises kinesiological accuracy and EMS sync most, at no AI-token cost. The
offline test got an EMS model (`EMS_HZ=85 EMS_G=0.5`: the body shaken at the impulse frequency, 4 s on / 4 s off).
With firmware 7 that broke the pose: lunge knees 7° → 20°, knee raise 4° → 19°, trunk 0.1° → 2.9° — the shake tilts
the gravity reference and is folded (every 4th sample sent) into the 0–26 Hz band the phone integrates. Firmware 8:
- the accelerometer through a **20 Hz low-pass** (2nd-order Butterworth, `fusion.h`) before the fusion uses it;
- each frame carries the **mean of its 4 samples** (gyro; acceleration averaged in the gravity frame) — no folding;
- flag b3 = a hit > 2.5 g inside the frame (kept for EMS sync / landings; as "landed now" for the foot it made jumps
  worse — not used by the solver).
Result with EMS: the scripted test equals the no-EMS one (lunge 8°, knee raise 5°, trunk 0.1°); CMU clips: knees
13.1° with EMS vs 12.6° without (fw 7 without EMS: 12.2°). `EMS_HZ=85 sh scripts/motion-sim/run.sh [mocap]`.

### 1.8 — "it squats by itself and never stands up" (owner, 2026-11-04)
The pelvis height comes from the back sensor's vertical travel (double integration). Two faults made it sink for good:
- **a deadlock**: "standing again ⇒ height 0" also required straight knees — but the knees come from that height;
  once it had sunk the knees were bent, the reset never came. Now only measured things decide it: trunk upright,
  both shins vertical, feet down, still ⇒ height → 0 (≈ 0.5 s).
- **the accelerometer's offset** (LSM6DS3TR-C: up to ±0.04 g). 0.03 g alone kept the "trunk still" test (vertical
  acceleration < 0.25 m/s²) from ever passing — no zero-velocity stops, the height ran away. Now: the offset along
  gravity is measured in the calibration's zero pose and learned on whenever a sensor is still (sensor frame, every
  sensor); "still" also comes from the sensor's own flag; the height's weight in the leg solution fades with the
  time since the trunk was last still (`wH`); it is bounded (−70 % of the leg … +0.6 m).
- **the mannequin "spread apart"** (it is drawn at the tracked feet, the android only by joint angles): standing still,
  upright, both shins vertical ⇒ the feet are under the hips — any step the foot tracker kept is pulled back.
Offline (`ACC_BIAS=0.03` = that offset on every sensor): scripted squats 34° → 16.5° knee error, standing shown as
squatting 2.9 % → 0.1 % of the time; CMU clips (knees, mean) 12.6° → 11.0° without the offset, ≥ 22° → 14.7° with it.
Tried and dropped: a leaky speed (ate real speed: squats 6° → 14°), "never above standing" (jumps, bends: 11° → 21°),
learning the offset from the speed left at each stop (lunges 7° → 13°).

### 1.9 — the principle for long use (owner, 2026-11-04: "simple, working for long; no small error may build up")
**Every pose is computed from the orientations of this moment.** Tilt of every sensor is drift-free (gravity);
nothing is integrated over a session. What needs memory has a short, self-resetting one:
- pelvis height: integrated only between still moments, its weight fading with the time since the last (1.8);
- feet: a step is integrated from still to still; standing quietly they are put back under the hips (1.8);
- upper arm: the learned corrector reads the forearm's direction, turn rate and push of this moment and the
  per-movement physics (restarts at every rest);
- heading (the one thing gravity cannot fix): ZARU on the sensor + anatomy limits + **re-zeroing at every quiet
  stand** — shins to ± 25° of the chest, a hanging forearm's twist to ± 20° of its zero pose (a hanging forearm's
  twist and heading drift are the same rotation, so not tighter: palms held back would be forced in).
Owner's screenshot (hand to the face): **a small wrist turn swung the whole arm** — the elbow-bend-direction rule moved
the upper arm round the forearm whenever the twist passed ± 110°, and the corrector weighed the twist strongly. The
rule now only reports (strap-slip fault), never moves the arm; the twist weighs half (CMU: elbow 19.2° / shoulder
17.1° vs 18.6° / 16.1°). **3-D artefacts**: the rig's upper arm and forearm are drawn by swing only (least turn from
the parent bone); the forearm's twist goes to the hand — no twisted elbow skin.
Long-session test `LAPS=5 ACC_BIAS=0.03 sh scripts/motion-sim/run.sh` (≈ 6 min, gyro bias drifting ~10× faster than
the real chip's): knees 6.7° → 6.2°, trunk 0.2° → 0.3° from the first lap to the fifth; elbows 9° → 16° (without the
forearm re-zero 20°). CMU clips: knees 11.0°, elbows 19.2°, shoulders 17.1°, trunk 0.7°, 0 false faults.

### 1.10 — calibration from held poses; the shoulder in 3-D (owner, 2026-11-05)
**Calibration**: stand still (zero pose) → arms straight forward, palms facing, half squat — **hold 2 s** → stand up.
Each sensor's axis now comes from the two still poses (`Calibration.hold()`: exact, the fusion at rest), not from the
movement's path or speed; the moving average stays as the fallback (no hold → as before). 60 random mountings × 4
places (T1, T7, L3, breastbone), movement 0.7–1.3× speed: 60/60 right places. **Places are remembered per sensor**
(`xm-roles`): an unsure recognition takes the remembered ones; two taps on the result list swap two places by hand.
**Every recording now starts with the calibration's own raw samples** (`"cal":1` lines) — a real failure can be
replayed offline.
**3-D shoulder** (owner: "defects at the humerus / biceps"): (1) ~20 hip vertices of the model's skin were tied to the
hand / forearm bones (they hang beside the hip in the bind pose) — raising the arm dragged them up: long spikes from
the armpit to the hip. `fixArmSkin` gives such vertices (nearer a body bone than the arm) to the nearest body bone at
load. (2) The upper arm's swing is measured from a reference the arm can never reach (back across the body) — plain
swing from "arm down" was undefined straight overhead and flipped round it. (3) The clavicle follows the arm
(scapulohumeral rhythm ≈ 2:1 past 30°, ≤ 35°).

### 1.11 — the figure shows the calibration (owner, 2026-11-05: "a clip of exactly what to repeat")
No video file: the android itself performs the calibration on the stage (`Timeline.guide`, `GUIDE` in motion-core),
in step with the wizard — stands while it says stand, goes down to the half squat with arms forward and holds while
it says hold, stands up when it says up; "Повтори след фигурата". The wizard sits at the bottom of the stage (the
figure stays visible) and checks the user live: the two largest turns from the zero pose are the arms (≥ 60° →
"✓ ръцете напред"), the other three legs / trunk (≥ 8° → "✓ клекът"); "✓ задържането е записано" once held.

### 1.12 — phone screens (owner, 2026-11-05: "the screen does not scroll on a phone")
The side columns scroll on their own (the stage stays put); on a short landscape screen the left card no longer
squeezes its content (its inline `flex:1; min-height:0` overridden), the calibration panel is compact (≤ 70 % of the
height, scrolls). Checked at 780×360 and 915×412: every control reachable, no sideways page scroll.

### 1.13 / firmware 9 — battery; the arms learn the person (owner, 2026-11-05)
**Battery.** Phone: the figure is drawn 30×/s (was 60) and not at all while the app is hidden (the solver still runs
on every sample); Bluetooth looks at full power only while no sensor is connected, then balanced. Sensor (fw 9): the
CPU no longer asks the motion chip non-stop over I2C — the chip raises INT1 when a sample is ready (INT1_CTRL
gyro data-ready) and the CPU sleeps ~1 ms at a time in between (FreeRTOS tickless idle); a missing INT1 cannot
stall the stream (it reads anyway after 20 ms). Not measured on hardware yet.
**Self-learning arms.** "Запис за ръцете" (the two shank sensors on the upper arms) now learns on the phone: every
measured upper-arm pose next to what the corrector reads (`Body.onLearn`, kept when the arm moved ≥ 8°) becomes a
personal prototype (`ArmPrior.addPersonal`), stored in localStorage (`xm-arms-v1`, newest 8000) and searched with
the generic ones in every later session. Offline (`TEACH=1 LEARN_OUT=… / PERSONAL=…`): after one taught session of
the person's routine, their normal 5-sensor session — curls 15° → 4°, raises 10° → 4.5°, squats 9° → 3° (elbow);
movements never taught: unchanged (19.2°). Preferring the personal ones (×0.6) made untaught movements worse (23°)
— so they count as equals. One person per phone for now. Personal proportions (limb lengths) not done: the 5
sensors give orientations only; lengths need a reference (e.g. the camera) — later.

### 1.14 — the calibration poses that carry the most information (owner, 2026-11-05: "not just any — the best")
Each sensor's mounting has 3 unknown angles. Standing still (gravity) gives 2; a still pose with the segment turned
about a known body axis gives the third. More poses only help if they turn the segment about a DIFFERENT axis —
that is an independent second reading, and the person's imperfect copying averages out.
Measured (`node scripts/motion-sim/calinfo.js E`: 40 mountings, the person's arms off the instructed plane by up to
±E°, then forearm orientation vs truth over a normal session):

| poses | ±10° | ±20° | ±30° (mean / worst) |
|---|---|---|---|
| stand + arms forward & half squat (hold) | 3.0° / 20° | 4.8° / 31° | 6.7° / 42° |
| + **arms out to the sides (hold)** | 1.7° / 13° | 2.8° / 22° | 4.0° / 30° |

So the calibration is now: stand still → arms forward + half squat, hold → up → **arms out to the sides at
shoulder height, palms down, hold** → down (`Calibration.holdT`; the robot shows each step; skipped after 15 s
without the hold → the two poses alone). Legs and trunk: the squat already turns them about the lateral axis; their
errors are small (≤ 2°) — no extra pose earns its time there.
**Tried and dropped — a "cover everything" teaching program** (12 movements: every shoulder plane, bent / straight,
turned in / out, twisted; `TEACH=1` offline): learnt as personal arm poses it made movements outside it worse (CMU
elbows 19.2° → 23.4°). With 5 sensors one forearm reading fits many upper-arm positions; more varied examples blur
the choice. What helps is teaching the person's OWN exercises (1.13: their routine 15° → 4°).

### 1.15 — the owner's clip as the truth (2026-11-05)
A 127-s clip of clear movements + the app's angle recording (CSV, app 1.14). `scripts/motion/video-pose.py`
(MediaPipe Pose, heavy, 10 fps) gives the person's joint angles; `video-compare.py` finds the offset (the recording
started 25 s before the clip) and compares per movement block. MediaPipe itself is off by ~25–35° on knees (standing
reads 25–35°) and −16° on trunk lean, so only the arms are a fair truth. **Arms (app 1.14 vs clip)**: shoulder
elevation of horizontal arms 20–40° too low (T 61/52 → 38/31, forward 84/62 → 63/32, profile raise 74/71 → 56/32,
the right arm worse — its sensor had been reported turned on the strap); a hanging arm in a forward bend shown bent
(left elbow 28 → 91); mean |error| elbows 16–18°, shoulders 23°.
Fixes:
- **calibration teaches the arms** (`Body.learnCalibration`): the forward-raise / squat and the T hold are known
  straight-arm poses — replayed after every calibration as this session's personal prototypes (tag `cal`).
  Offline: squat with arms forward elbow 8.6° → 3.2°; nothing else changes.
- **a forearm hanging by gravity, quiet, is a straight arm** whatever the trunk does.
- **a forearm twisting about itself no longer moves the upper arm**: the physics' per-step turns drop the twist about
  the forearm axis, and the corrector's answer is taken in only as fast as the forearm's DIRECTION moves (still or
  only twisting → held). `node scripts/motion-sim/twist-test.js`: palms turned ±80° moved the drawn upper arm by
  60° (elbows bent at the sides) / 59° (arms forward) / 21° (arms out) — now 0° / 0° / 0°. CMU: elbows 19.4°,
  shoulders 17.3° (was 19.2 / 17.1); 6-min test: elbows lap 5 16° → 13°.
Tried and dropped: ignoring the twist entirely (curls 15° → 23°: people curl palm-up, the twist is a real cue — it
is its CHANGE that must not move the arm); weighting the physics more (CMU 19° → 27°); lowering the balance in deep
bends (CMU bends 13° → 17°). **Open**: a curl held still at the side (elbow 90°, forearm forward) can still be shown
as a straight arm forward (twist-test: 79°) — the forearm alone cannot tell them apart; the movement that led there
can (the physics alone gets it right, but then misses raises). Next with the owner's raw log (-raw.jsonl) replayed
against the clip.

### 1.16 — the owner's raw log replayed against the clip; 7 sensors (2026-11-05)
`node scripts/motion/replay.js <raw.jsonl> <out.csv> [--old | --keep-places]` replays a real recording through
today's solver (the calibration redone from its own samples with the wizard's rules, or kept), FORE=1 adds what the
wrist sensors themselves say. On the owner's log (place: breastbone): **the wrist sensors and the calibration are
right** — the forearm's elevation from the sensor matches the clip's arm (straight raises: 74–77° vs 74–79°); **the
error is all in the GUESSED upper arm** (shown 33–56° with a bent elbow). Tried on the real signals: the per-movement
physics alone (k ≈ 0 every time: it reads every raise as a curl — elbows 70–95°), without the trunk sensor's
acceleration (same), the centripetal radius a/ω² (0.07–0.4 m for straight arms, should be ~0.55 — too noisy), a pull
toward a straighter arm (CMU elbows 19° → 31°). None removes it: with 5 sensors the upper arm is not measured.
(The offline recalibration also swapped the wrists here — the recorded places kept: `--keep-places`.)
**7 sensors** (`ROLES7`: + both upper arms, outer side, mid upper arm): the upper arm is measured. Offline, CMU:
squats with arms forward elbow 41° → 3.5°, shoulder 40° → 2°; arms overhead 30° → 2.8°; bends 23° → 2.8°; punches
18° → 2.6°; scripted: every arm error 1.6–5°. The app calibrates 7 places by itself when 7 sensors are on line
(LED: upper arms yellow / blue) and keeps looking for up to 7 (10 more looks once 5 are on line). Android allows ~7
Bluetooth LE connections at once — 7 is its practical limit.

### 1.17 — 5 sensors minimum, 6 at most; better computation, not more sensors (owner, 2026-11-05)
The owner fixes the hardware: wrists, ankles, upper back (T1) and — optionally — one low on the back (lumbar). No
upper-arm sensors (the 7-sensor mode stays in the code for the offline tests only).
**The arm physics' speed made drift-free.** On the owner's real raises the integrated wrist speed still read
1.6–3.8 m/s with the arm stopped at the top (≈ 0.2 g left over during the fast turn), so the physics read every raise
as a curl. The k fit now removes a constant + a straight line in time from the mismatch per axis (`DRIFT=0` = old).
Physics alone, scripted: raises 14° → 4.9°, laterals 14° → 1.9°, squats 17° → 3.4°. Blended with the corrector by its
own confidence (`PHYS_W`), offline improves (scripted 8.6° → 4–5°, CMU elbows 19.3° → 16.4°) but the owner's real log
gets 2° worse — kept OFF (`PHYS_W=0`) until more real recordings with video decide it.
Checked and NOT the cause on the owner's log: arrival-time bursts (frames arrive at 15-ms connection events, 0 / 15 /
30 ms apart — re-timing by the frame counter changed nothing offline, `BURST` model), the gyro scale (integrated vs
orientation change 1.04–1.09).
**The 6th sensor (lumbar)** — `ROLES6`, role `pelvis`, LED yellow: recognised (the two back sensors told apart by how
far each turned in the squat: the chest leans further than the pelvis tilts) and recorded, but **not used by the
figure yet**: offline (CMU) with the measured pelvis, jumps / punches / knee-to-elbow improved (18 → 11°, 13 → 6°,
17 → 13°) but deep squats and bends got worse (7.5 → 20°, 13 → 29°), average 10.8° → 12.2°; its vertical travel as
the pelvis height was far worse (up to 90°). `USE_PELVIS=1` / `usePelvis` switches it on for tuning. The scripted
person's pelvis now tilts 0.35 × the chest's lean (as real people) for these tests.

### VR legs — the sensors as the VR game's legs (1.18, owner 2026-11-06: "like a native controller: fast, exact")
Researched first: a third-party sensor cannot become a system controller on a standalone Quest (no driver path);
trackers of the same kind (SlimeVR) reach standalone games only when the GAME takes their data over the network
(OSC/UDP — VRChat, VRWorkout). Direct Bluetooth from a Quest app is Android-possible but not supported by Meta for
custom devices (reconnection trouble reported) — a later step after an on-device test. Chosen: **the phone bridges
over the Wi-Fi to our own game, and the game predicts like Meta does for its controllers.**
```
sensors (208 Hz, filtered on the chip) → BLE 7.5 ms → phone: the solver → UDP (Wi-Fi, DSCP EF) → XEMS Studio (Quest)
   → knees / feet under the headset's own head, turned with its heading, scaled to the player, predicted to "now"
```
- Finding: the game asks "XEMS-LEGS? <port>" once a second (UDP broadcast → 47811); the phone (`VrLink.java`)
  answers by sending every solved pose to that port (unicast). No pairing; a headset silent for 5 s is forgotten.
- Message (JSON, ~260 B, ~50/s): `{v:1, t, eye, H, L:{kl,kr,fl,fr}, V:{…}, air:[l,r]}` — knees and feet (mid-foot)
  relative to the head in the body's frame (forward, left, up; m), their speeds (m/s), the phone body's height.
- Game (`vr-workout/scripts/game/motion_link.gd`, used by `body.gd`): source 0 for knees and feet, before a controller
  strapped to an ankle and Meta's estimated legs; positions = headset head + the vectors turned by the body heading
  (the head's, smoothed over 0.8 s — a head turn alone does not swing the legs) × (player's standing head height /
  0.956 H) + speed × age (network age from the fastest packet seen + 20 ms; ≤ 60 ms); the hit speed is the sensors' own.
  `body.legs_src` = sensors · controller · estimate · none. The browser (WebXR) version has no UDP — the Quest app only.
- The page shows "🥽 VR играта получава краката ✓" while a headset is linked.
- **1.21 (owner 2026-11-07: "the leg sensors don't catch"):** the phone app holds a Wi-Fi **multicast lock** while it
  runs (`MainActivity.vrLock`, permission CHANGE_WIFI_MULTICAST_STATE) — many phones' Wi-Fi drops broadcast packets
  to save power without one, so the game's "XEMS-LEGS?" never arrived and no legs were sent. Also needed: the Quest
  **app** XEMS Studio (not the browser page), phone and headset on the same Wi-Fi without client isolation (guest
  networks block it), the phone app open with the sensors calibrated.
Not yet measured on the devices: the total latency (expected ≈ 25–35 ms before prediction).
**Checked, both ends for real** (`sh scripts/vr-legs/run.sh`; in CI on every build with `GODOT=…`, the build stops if
it fails): (1) the phone's own `VrLink.java` (plain Java) heard the game's broadcast question and streamed 147 poses in
4 s to a stand-in game — 0 lost, ≈ 1 ms on one machine; (2) the game's own `motion_link.gd` + `body.gd` (Godot 4.4.1
headless, `vr-workout/test/legs_test.gd`) against a stand-in phone: knees and feet come from the sensors, knee_l
within 2 cm of where it must be. The game says it out loud: "Сензорите за краката са свързани ✓ …" (and when lost,
during play), and the hands status line shows "крака: сензори ✓".

### VR legs — the sensors as a gamepad, straight into the game (fw 10, app 1.22, owner 2026-11-07)
Owner: "no dependence on networks — direct and reliable", and only the **two shin sensors**. So no phone and no Wi-Fi:
each sensor is **also a Bluetooth HID gamepad** — the Quest pairs it once in its own Bluetooth settings like any
controller and reconnects it by itself. The game reads it as a joypad (`Input.get_joy_axis`).
```
shin sensor (208 Hz fusion) ──BLE HID, 104 Hz──► Quest 3 (system Bluetooth) ──joypad axes──► XEMS Studio: PadLegs
```
- Report (ID 1, 13 B): 8 buttons (always 0 — they make Android call it a gamepad) + 6 axes × 16 bit: X Y Z Rx =
  qx qy qz qw (w ≥ 0), Ry = vertical acceleration without gravity, Rz = turn speed (spare). The stock Bluefruit
  gamepad has 8-bit axes (≈ 1° steps) — hence our own descriptor. The game reads only axes 0..3: Godot on Android
  maps unknown pads through its "Default Android Gamepad" (a0–a3 = the sticks, unchanged; a4/a5 = triggers, rescaled).
- Advertising: flags + gamepad appearance + HID + the data service = 29 / 31 B (TX power dropped). The phone app still
  works (same data service) — but one connection at a time: while the Quest holds a sensor the phone cannot.
- The legs in the game (`vr-workout/scripts/game/pad_legs.gd`, first choice in `body.gd`, before the phone link):
  hips under the headset (eye height → proportions), shins measured, the knee a hinge on the shin's own side axis —
  bent back from the shin until the foot is on the floor (squat, lunge); a foot above the floor even with the thigh
  upright is in the air (kick) and the thigh goes halfway between shin and upright.
- **Calibration without a button:** stand tall and still 1 s (zero) → the game says "Сега леко клекни веднъж" → the first small
  knee bend: both shins tilt about the body's left–right axis = each sensor's heading, and its sign against the board
  normal (top away from the leg, outer side) = left / right. Every later still upright second takes the zero again
  (no compass: the heading creeps).
- Checked offline: `vr-workout/test/pad_test.gd` (Godot headless, in `scripts/vr-legs/run.sh`): two sensors with
  arbitrary heading and mounting → L/R found, squat shin 35.0° (true 35°), feet on the floor, kick foot up and ahead,
  side tilt 15° — all exact. **Not yet on the devices:** that Horizon OS passes a generic BLE gamepad to an immersive
  app (Quest 3 supports Bluetooth gamepads; Godot reads them the standard Android way), the real latency.
- Known limit of two shin sensors: a knee lifted with the shin still vertical (a high-knee "chamber") looks like
  standing — the shin alone does not show it; the spare Ry (vertical acceleration) is there to add it.

### 1.19 — kicks: knee up, the shin snaps out — measured and drawn (owner, 2026-11-06)
A front kick is two motions: the thigh raised (chamber) — not measured, solved — and the shin snapping out — measured
by the shank sensor itself. Offline the scripted person now does front kicks (`kick` block, left then right:
chamber → strike → chamber → floor, `kickPath`). First result: the lifted foot 9.3 cm off on average but **48 cm at
the strike**, its knee 12.9° — the foot tracker threw away any foot more than 0.8 m from where it started or higher
than 0.7 m ("implausible"), exactly where a kick goes, and put the foot back on the floor. Now the limits are a kick's
reach (0.65 × height ahead and up): **foot 5.1 cm (worst 10 cm), knee 5.8°**, kicks counted 2 / 2 (was 4 / 2); every
other movement unchanged (CMU knees the same or better).
**Drawn in the game:** the phone now also sends the hips and where each foot points (the shin sensor's own forward
axis — it turns with the shin, so a kick points the boot up); the game orients the shin guard and the boot by it (was:
the player's forward) and draws the **thigh** (the shin guard again, hip → knee) whenever the sensors give the hip.
`body.hip_pos`, `body.foot_dir`; checked by `legs_test.gd` (CI).

### 1.20 — the trunk's "forward" from the sensor's own face, not from the squat (owner, 2026-11-07)
Owner (breastbone): after calibrating, leaning forward showed as leaning back. The trunk sensor's heading came from how
it turned in the calibration's half squat — a chest kept upright or leaning back there (people copy the squat
differently) turns "forward" round. Now the trunk sensor's heading comes from its **board normal in the still zero
pose** (it lies flat: out of the back = backward, out of the chest = forward; the hardware's normal convention from
the limb sensors). `node scripts/motion-sim/trunkcal-test.js`: chest leaning back 0 / 25 / 35° in the hold, then a 40°
forward bend — T1, T7, breastbone: was up to 11–13° off, now ≤ 1° every time. (`TRUNK_BY_MOVE=1` = the old way.)
**The owner's second clip** (arms only, 90 s, CSV) vs MediaPipe: mean |error| shoulders 28 / 20°, elbows 31 / 24°.
Arms overhead read as a "goal post" (shoulders 158/138 → 91/77, elbows 24/30 → 116/130); elbows bent at the chest read
as straight arms forward (elbow 95 → 21–49°); one arm up 138 → 55°. Same cause as before: the wrist sensors are right,
the GUESSED upper arm is wrong. Next: the raw log (-raw.jsonl) of this session + the clip → teach this person's arms
from the video (MediaPipe's upper arm as the truth) — no extra sensors.

### 1.23 / firmware 11 — the arms "had nothing to do with my movements": the gyro offset was never learnt (2026-11-07)
The owner was right, and the 2-angle comparison (shoulder elevation, elbow) had hidden the worst of it. Compared as
3-D DIRECTIONS in the trunk frame (`video-pose.py` now also writes each arm segment's direction; `replay.js DIRS=…`
writes the figure's): the forearm — the MEASURED part — was off by 40° on average (median 35°); arms forward in profile
70°. Per 10 s the left forearm's heading error grew steadily, +5…+20° → **+87° after 2 min** (≈ 0.6 °/s): a drift.
Cause: the sensor learns its gyro offset only while "still" (2 °/s, 0.025 g, 0.3 s) — on a living body never met: in
the owner's whole session the wrists were still **0 %** of the time, the breastbone 0.3 %, the shins 7–8 %. The offset
was never learnt; the heading ran away.
Firmware 11 (on top of fw 10's gamepad): (1) the app says **"zero"** in the calibration's still stand — the gyro's mean over 1.5 s IS its offset
(spoilt and dropped if anything turns > 15 °/s); (2) a second, looser level — QUIET (5 °/s, 0.04 g, 6 °/s from the
offset) — lets the offset be learnt and tracked while the body only sways; the strict STILL (rotation freeze, the
phone's "still" flag) is unchanged (loosening it froze slow leg motion: lunges 7° → 20°). Offline with tremor
(`TREMOR=1`, 2–4 °/s, 3 laps ≈ 4 min, `sh scripts/motion-sim/tremor-test.sh`): elbows lap 1 / 2 / 3 were 25 / 19 / 20°
with knees 25 / 22 / 41° → now 6 / 7 / 11° and 8 / 8 / 7°; normal tests, EMS and CMU unchanged (CMU knees 10.9 → 10.6°).

### 1.24 / firmware 12 — the VR legs bottom-up (owner, 2026-11-08: "direction, position, turning, knee strike, kick — very unrealistic, also when bending")
The gamepad legs (PadLegs, 1.18) hung everything from the head: hips always straight under it, feet under the hips,
and a lifted foot's thigh guessed ("halfway between shin and upright"). So a bend squashed the legs into a squat and
slid the feet forward after the head; a knee strike (shin upright, thigh up) looked like standing; a heel curl raised
the thigh; looking aside for a second while standing turned both legs to the head. Rebuilt (`pad_legs.gd`):
- **feet planted** — anchors on the floor where each foot stands (set at every still upright moment, re-set where a
  foot lands, slid along only when the hips get further than a leg can reach = a step);
- **hips solved** between the planted legs (anchor → measured shin → a thigh's length) and the headset (the trunk's
  length): a hinge puts them back, a squat down and back; the hips face where the legs face, not the head;
- **lifted foot at its measured height** — the shin's vertical acceleration (axis 4 / Ry, Android's left trigger,
  decoded back and checked: 0 g at rest, seen moving) integrated twice; offset learnt in the still stand (truth 0),
  speed reset at every still moment, a landing's jolt held off 0.2 s, height let down when still; the knee bends so
  the ankle is at that height (nearest to the last bend); fw 12 sends Ry from the 20 Hz low-passed acceleration (the
  suit's impulses no longer alias into it). Without the axis the legs fall back to the old guess for lifted feet;
- **heading per leg** — a still stand re-zeroes the tilt and keeps each leg's own heading, pulled to the body's over
  ~20 s (snapped only if > 60° off);
- **boot flat** on the floor while planted (it tilted with the shin).
Offline vs scripted truth (`python3 scripts/vr-legs/legs_proto.py`; thigh +4 %, shin −3 % vs the model, accel noise
0.02 g + 0.01 g offset), knee error cm mean / worst, old → new:
squat 13.0 / 35 → 1.3 / 1.3 · bend 39.6 / 97 → 1.3 / 1.3 · knee strike 8.3 / 60 → 2.3 / 17 · front kick 8.8 / 65 →
2.4 / 13 · heel curl 6.3 / 48 → 2.3 / 17 · back kick 1.7 / 8 → 3.6 / 27 · walking in place 8.2 / 43 → 2.4 / 7. The
worst moments are the instant a foot leaves / touches the floor (≈ 0.1 s). Robust to 3–5× the noise and offset
(0.06–0.1 g; mean 2–5 cm). The same in Godot through the real PadLegs (CI, knee mean / worst cm): squat 1.5 / 1.6, bend
1.8 / 2.1, knee strike 2.2 / 17, front kick 2.1 / 19, heel curl 3.4 / 18, back kick 3.1 / 27, walking 2.3 / 12; a look
aside while standing turns the legs 3.7° (was: the full look). First CI run caught a real bug the prototype could not:
a slow bend or a slow knee raise (shins hardly turning, head still high) was taken for a still stand and re-zeroed the
feet mid-movement (bend 8.7 cm) — a stand now also needs a still head, upright shins and a quiet vertical acceleration.
Next (literature, 2026-11-08): HMD-Poser (CVPR 2024) uses exactly this kit — headset + two lower-leg IMUs — with a
small learned motion prior + the head's position; on real hardware ≈ 8.5 cm lower-body error. A learned prior on top
of this physics is the way to go further; AMASS is non-commercial only, CMU's own files are the candidate. In CI: `vr-workout/test/pad_truth_test.gd` (the same movements through the real
PadLegs, fake gamepads incl. the trigger form of axis 4) + "a look aside keeps the legs".

### 1.25 — the VR legs checked on real people; a learned prior (owner, 2026-11-08: "improve it — real improvements")
The 1.24 numbers were scripted movements. On **real people** (CMU motion capture through the game's own solver,
`scripts/vr-legs/legs_eval.py`: the headset = the true eyes, the shins = the true shins + noisy vertical acceleration)
1.24 was **worse than the old model** — knee 37.8 cm mean vs 22.7: in continuous exercise there is never a quiet
moment, the double-integrated height crept, feet were taken for lifted (22–31 % of the time, ≈ 50 cm off there).
Fix = a **learned prior** for what geometry can't tell (literature: HMD-Poser, CVPR 2024 — the same kit, headset + two
lower-leg IMUs): `scripts/vr-legs/legs_prior.py`, a small network (63 → 64 → 64 → 7, numpy, ≈ 8.6 k weights) on
**378 CMU takes** (free for any use; mocap.cs.cmu.edu), one network for both legs (the right mirrored). Input over the
last 0.6 s (5 moments): both shins in the body's frame, their turn speed, their vertical acceleration as measured (never
integrated — nothing to drift; trained also without it, flag), the headset's height and velocity. Output: foot on the
floor, thigh direction, hip centre from the eyes. Physics stays on top (planted feet, the measured shin, lengths, the
hips pulled toward the prior's).
**On 4 people it never saw (32 takes), knee mean: old 22.7 cm · physics alone (1.24) 37.8 · with the prior 15.8**
(without the acceleration 15.7 — the shins and the headset carry it). Best: squats / exercise 8–12 cm; weakest:
martial-arts stepping (135: 18–25 cm, the old model 14–21 there). Reference: HMD-Poser on real hardware ≈ 8.5 cm
lower-body error with the hands as input too.
**v2 (2026-11-08): 886 CMU takes (up to 10 per person, 1.6 M frames) + the hands as input** (the controllers / hand
tracking, from the eyes in the body's frame; trained also without them, flag) — on the same 32 held-out takes knee
**14.8 cm** (v1 16.0; hands lost 15.6; no acceleration 15.0; old model 22.9); over all 41 held-out takes 16.6 (old 22.3).
In the game: `legs_prior.gd` (inference, ~17 k multiply-adds a frame) + `legs_prior_weights.gd` (generated, consts:
compiled in, nothing to load); `test/prior_test.gd` = the same 2 s of a held-out take through Python and GDScript give
the same answers. Retrain: `python3 scripts/vr-legs/cmu_legs.py <cmu dir> <npz dir>` → `legs_prior.py train` →
`legs_prior.py gd` → `gen_prior_test.py`.

### 1.26 — the arm corrector retrained on 9× the people's movement (owner, 2026-11-08: "use CMU for the arms too")
`models/armdb.js` rebuilt from the old rows (108 CMU takes + 40 synthetic EMS sessions) **+ 851 more CMU takes** (up to
10 per person, 144 people; the arm test people 13, 14, 86 left out): 866 k rows → 128 k prototypes (EPS 0.3). The
search cell by forearm direction 0.35 → 0.25 (`ARM_CS`): half the work for the same answers. On the 9 CMU test clips
(`run.sh mocap`) **elbow 19.4° → 15.5°, shoulder 17.3° → 12.9°**; tremor test lap 3 elbow 11.4 → 13.3° (passes);
EMS script tests pass. Cost: 1.2 ms a query on a desktop (was 0.7), file 5.6 → 16 MB. (A 164 k-prototype set gave
14.7° / 12.6° at 1.8 ms — not worth it on a phone.) App 1.25.

### 1.27 — the VR legs measured with a controller; where the shin sensor should sit (owner, 2026-11-09)
**Calibration with the headset's cameras, no extra hardware:** the cameras track the controllers to millimetres, so a
controller is the tape measure. After the stand + knee bend the game asks for four trigger touches with the
controller's tip — left knee, left shoe tip, right knee, right shoe tip (`PadLegs.start_measure / touch`,
`game.gd _legs_measure`). Gives the person's own shin (knee down the measured shin direction to the ankle's height;
the thigh from it), each foot's direction (ankle → shoe tip: a strap sitting turned, the toe-out — the heading pull
keeps it), where the feet stand (the anchors at every still stand). Saved on the headset (`user://legs_cal.json`),
measured again only for another height (> 6 cm). Test (`pad_test`): a shin 10 % longer than the model's, feet 10°
out, a wider stance → shin 0.477 m (true 0.477), ankles 0.0 cm, feet 0.0° off.
Offline what calibration and the headset camera are worth (`legs_eval.py`, 40 held-out CMU takes, knee mean): now
16.6 cm · own lengths 15.9 · a printed marker on the shoe seen by the camera (in view 6–16 % of the time — people look
ahead, the feet are ~70° below the gaze) 14.5–15.7 · both 13.8. More while kicking low spheres (the player looks at
them); the knee rather than the shoe is in view then — a knee marker is the next step (owner: later).
**Sensor just below the kneecap instead of above the ankle?** Same angles (the shin is one rigid bone); the
acceleration would then follow the knee. Retrained and checked (`SENSOR_AT=knee`): knee 15.1 cm vs 14.8 — no gain.
Keep them above the ankle (bony, outer side = how left / right is told, no EMS calf electrode under the strap).

### AI (Gemini) — where it fits and where not
Not for the live figure: a cloud model answers in 0.5–3 s, needs the network, costs per call and does not return
reliable joint angles — the figure must follow the body in < 50 ms. "Natural" comes from local models learned from
real people (the arm corrector `armdb`, the spine model, the anatomy limits). Gemini fits **after a set**: a compact
angle summary (no raw data) through the license Worker (key on the server, client's consent) → the exercise's name,
the count and a short technique comment in Bulgarian. Not built yet.

## Design in one picture
```
 sensor ×5 (208 Hz)                     host (tablet / laptop, 52 Hz)
 LSM6DS3TR-C → fusion.h ──BLE 20 B──►  Calibration ─► segment orientations (measured: trunk, 2 forearms, 2 shanks)
 gyro bias, ZARU, gravity              (zero pose +     │
 → orientation + raw motion             one squat)      ├─ legs: knee hinge + chains meet at the pelvis + balance
                                                        │        + foot tracking (steps, lifted foot)
                                                        ├─ arms: per-movement shoulder/elbow share from wrist accel
                                                        └─► skeleton, angles, speeds, reps, phases
```
Principle: **measure what the sensors see exactly, derive the rest from physics** (hinge joints, closed leg chain,
balance, rigid-body acceleration) — no learned model needed to start, every number explainable.

## Hardware and placement
XIAO nRF52840 Sense: IMU **LSM6DS3TR-C** (gyro ±2000 °/s, accel ±16 g, no magnetometer), BLE 5, LiPo charger.
- **Wrists** — like a watch, back of the wrist, just above the wrist bone. Measures the forearm incl. pronation.
- **Shanks** — **outer side**, 3–5 cm above the ankle bone (over the fibula: bony, little wobble). Outer side matters:
  it is how left/right is told apart (below).
- **Back** — between the shoulder blades, T1–T2, fixed to the suit. Measures the upper trunk; also the shoulders'
  acceleration reference for the arms.
- No magnetometer is a feature here: the suit's currents and metal would make one useless. Heading comes from the
  calibration movement and is kept by the drift guards below.

## Sensor firmware (`fusion.h`, `xems_motion.ino`)
- 208 Hz, direct registers (no library). Mahony filter: gravity corrects tilt with a weight that falls to zero when the
  accelerometer feels more than gravity (jump, landing, EMS contraction jolt).
- **Gyro bias**: learned in the first 0.5 s of stillness (LSM6DS3 zero-rate offset is up to ±10 °/s), then tracked
  whenever still (warming on the body). **ZARU**: while still, rotation is not integrated at all → heading can't creep.
- BLE name `XEMS Motion XXXX`; data service `6E400101-…`, one 20-byte frame per sample (seq, flags, quaternion xyz Q15
  with w ≥ 0, bias-free gyro °/s×16, raw accel mg) — fits the default MTU, no negotiation. 52 Hz default, `rate 100`.
  Text commands over Nordic UART (`info`, `rate`, `led <color> [blink]`, `bias`, `level`, `sleep`), list at the top of
  the `.ino`. 10 min with no connection and no movement → deep sleep, a shake wakes it.
- Flash: double-tap RESET, drop `motion/xems-motion-sense.uf2` (Sense Plus: `-sense-plus`) on the drive.

## Calibration (≈ 6 s, one tap) — finds places, headings, zero
1. **Zero pose**, 2 s still: per sensor its orientation q0 (and the gyro bias settles).
2. **One slow half-squat with the arms raised forward**, back up, stop. Every segment turns about the same body
   axis (left–right), so each sensor's rotation axis, seen in its own frame, gives:
   - its **heading** ψ (6-axis sensors have no common north — this aligns them),
   - its **place**: the board normal (bottom to the body) is horizontal in the zero pose; on the back it is
     perpendicular to the squat axis, on wrists and shanks (outer side) parallel to it. Arms turn ~90°, shanks ~30–40°.
     The sign of normal·axis gives left/right. All 120 assignments are scored, the cheapest wins; a hardware with the
     normal the other way round is caught by the back sensor (its normal must point backward).
   Each sensor then blinks the colour of its place (back white, L wrist red, R wrist green, L shank magenta,
   R shank cyan). Wrong placement / too little movement → a plain message, repeat.
3. Segment orientation from then on: `R_seg = Rz(ψ) · q(t)·q0⁻¹ · Rz(−ψ)` (shanks × the ~3° forward lean of a balanced
   upright stance).

## Pose solver (`Body.solve`, per back-sensor sample, < 1 ms)
- **Measured directly** (sensor accuracy, ~1°): trunk lean / side bend / twist (vs. the legs), forearm and shank
  orientation, all angular speeds.
- **Legs**: the knee is a hinge on the shank's own axis, so each thigh has one unknown, the knee angle κ. The two
  chains ankle → shank → thigh must meet at the pelvis, and the centre of mass (Winter segment masses, arms included)
  must stand over the supporting feet. A 2-D grid + refine finds κL, κR. Symmetric squat → balance decides the depth;
  lunge / knee raise → chain closure decides. A thigh pointing down-and-back from the knee is penalised (the mirror
  solution of the balance).
- **Feet**: the ankle point (sensor + lever arm, incl. angular acceleration) is integrated only during a movement and
  reset to zero velocity when calm; leftover velocity at the stop is drift and is removed from the step. Small or
  slow-drifting "steps" are discarded. Gives step-outs (lunge) and a lifted foot (knee raise, z > 8 cm = in the air).
- **Arms**: the upper arm has no sensor. Per movement (still → still) it turns by a share k of the forearm's turn:
  k = 0 curl, k = 1 straight-arm raise. Every k predicts a different path of the wrist around the shoulder; the
  measured wrist acceleration (minus the shoulders' acceleration from the back sensor) picks the best k (1-D search).
  Applied to the whole movement from its start, carried into the next repetition. Arm hanging still → straight.
- **Repetitions**: the angle that moves most in the last 2.5 s (both-sides angles preferred) is "the exercise";
  hysteresis 70 % / 30 % of its range counts a rep, gives ROM and the out / back durations; a new exercise counts
  from 0.

## Offline test (`sh scripts/motion-sim/run.sh`, ≈ 10 s)
A scripted person (stand, calibration, 3 squats with arms forward, 3 curls with supination, 3 front raises with
pronation, 3 lateral raises, a lunge, a knee raise held 2.5 s, trunk twists with bent arms) wears the five sensors with
random mounting spin, random heading and random place. Raw IMU at 208 Hz with ±8 °/s gyro bias, bias drift and noise
→ the firmware's own `fusion.h` (compiled with g++) → quantised BLE frames → calibration → solver → vs. truth.
Result 2026-11-03 (mean error):

| | knee | elbow | shoulder | trunk | wrist pos. |
|---|---|---|---|---|---|
| squat | 5.0° | 3.3° | 3.3° | 0.3° | 2.1 cm |
| curl / front raise / lateral | 2.8° | 1.4° / 3.9° / 3.0° | 2.2° / 3.6° / 3.3° | ≤ 0.2° | 1.7–3.9 cm |
| lunge / knee raise | 4.5° / 4.3° | | | | |
| twist with bent arms | 4.8° | 12.8° | 12.3° | 0.1° | 13.6 cm |

All five places found, all repetitions counted. Weak spot found: static bent-arm holds entered together with a trunk
twist (the arm guess has no movement to learn from) — the hanging-straight reset fixes it at the next rest.

## Real movements — CMU motion capture (owner 2026-11-03: "precise movement templates")
Source: **CMU Graphics Lab Motion Capture Database** (mocap.cs.cmu.edu, optical, 120 fps, free for any use; NSF
EIA-0196217). `cmu2json.py` cuts the exercise parts (subjects 13, 14, 86): squats with arms forward, deep squats,
overhead raises, jumping jacks, trunk twists, toe touches, punches, squat jumps, knee-to-elbow — keeps the body bones,
60 fps, int16 → `motion/mocap/cmu.js` (650 KB, a script so the page works from file://).
`motion-core.js` `Mocap` replays it with the ASF/AMC forward kinematics (CMU y-up → W), every segment in the same
frame convention as the solver, the floor at 0, facing +x. Marker noise out (Gaussian σ 33 ms) and a C2 cubic B-spline
between frames (positions; rotations: cumulative B-spline on SO(3)) — so the simulated accelerometer sees a real
body's smooth acceleration, not frame-boundary spikes. `Timeline` = the scripted calibration in the clip person's size
→ 1.5 s blend → the clip.

Test (`run.sh mocap`, each clip after its own calibration, firmware fusion, noise and bias as above), mean error:

| clip | knee | elbow | shoulder | trunk | reps found / true |
|---|---|---|---|---|---|
| squats, arms forward | 3.9° | 17.9° | 21.7° | 0.8° | 3 / 2 |
| deep squats (to 155°, onto the toes) | 8.1° | 4.4° | 3.8° | 0.4° | 1 / 2 |
| overhead raises | 5.2° | 14.8° | 11.7° | 0.6° | 4 / 4 |
| jumping jacks | 9.1° | 13.8° | 14.8° | 1.4° | 3 / 3 |
| trunk twists | 13.9° | 20.2° | 14.6° | 0.4° | 3 / 4 |
| toe touches (trunk 110°) | 15.1° | 24.6° | 29.3° | 0.9° | 5 / 5 |
| punches | 10.2° | 43.4° | 24.9° | 1.0° | 1 / 3 |
| squat jumps | 22.8° | 18.1° | 17.1° | 0.9° | 4 / 4 |
| knee to elbow | 25.9° | 13.3° | 12.5° | 0.3° | 3 / 3 |

Read it as: **trunk ≈ exact everywhere; knees good in squat-type work; arms ±15–25° (inferred, no upper-arm
sensor) and weak for fast punches; single-leg / airborne moves (knee-to-elbow, squat jumps) the weakest.** The CMU
people stand relaxed (knees ~25° bent, elbows ~30°) while the solver's zero pose is straight — part of the error is
that. What the real data changed in the solver (2026-11-03):
- **Pelvis height from the back sensor**: its vertical travel, integrated per movement with zero velocity at rest
  (`trackHeight`) — vertical is the accurate axis of a tilt-corrected IMU. Squat depth no longer rests on balance
  alone (balance has two answers at the bottom, people rise onto their toes): scripted squat knee 5° → 2°, CMU
  squats 14° → 4°, toe touches 74° → 15°.
- Feet: the sensor's sideways offset in the lever arm, a "step" must look like one (≤ 0.9 m, ≤ 2.5 s, ends slow),
  provisional position shown only while plausible.
- Arms: the upper arm follows the forearm step by step (no wrap past 180° overhead); the shoulder share k is fitted
  on the wrist's **velocity** (integrated from rest), far less noisy than its acceleration.
- `logm` fixed for tiny rotations (< 0.06° returned garbage — hit slow arm movements).

## The figure: the VR workout's android (owner 2026-11-03: "use the model we had, don't make a new one")
The XEMS VR workout's coach — **"White Android Robot - ModelAI3D vs SupaVoxel" by Cedric Ricci, CC BY 4.0**
(Sketchfab) — taken back from git history (`vr-workout/assets/coaches/android.glb`, commit fb827d3e: 1.5 M → 45 k
triangles, 1 K textures, rigged by `vr-workout/convert/autorig.py`; removed from the VR app in 68ceae06; the 300 k /
4 K version of 5c73cef6 is 42 MB, too heavy for the tablet page). Packed as `models/android.js` (the .glb in base64,
5.8 MB) and read with three.js's GLTFLoader turned into a classic script (`vendor/gltf-loader-r158.js`, generated:
file:// pages cannot load ES modules or fetch files). Its rest pose is our zero pose (upright, arms down, faces +Z,
left = +X), so every bone simply gets `segment rotation since the zero pose × its rest world rotation`
(`RiggedFigure`): thigh / calf / upper arm / forearm from the solver, pelvis and spine share the trunk's turn
(50 / 65 / 85 / 100 %), a foot on the floor stays flat, a lifted one follows its shank; the pelvis goes where the solver
has it and the feet stand on the floor. In "Демо" a second, translucent orange android is the real person. The
mannequin with the XEMS muscle zones ("Манекен") stays as the second style — the zones are what the impulse sync will
light up.

## The 3-D body (owner 2026-11-03: "a 3-D model that moves in sync with the body")
`body3d.js` — WebGL (three.js r158, vendored so the tablet needs no internet; `three.min.js` works from file://, ES
modules would not). A mannequin built from lathe-shaped segments (thigh, calf, chest… radius profiles per segment),
joint balls, head, hands, feet, and the five sensors as small boxes where they sit, lit in their place colour after
calibration. Posed every frame from `pose.R` (segment rotations, new in `Body.solve`) and `pose.J` (joints), segment
length = the real joint distance, so it is exactly what the solver says. Soft shadow on the floor, drag to orbit,
two fingers / wheel to zoom, front / side / 3-D views, "Робот" switches to the Android-style robot (Google, CC BY 3.0).
**Muscle zones are separate meshes named by the XEMS channel under them** (Гърди, Корем, Гръб, Кръст, Глутеус,
Трапец, Предно / Задно бедро, Прасец, Ръце): `fig.setChannels({ 'Предно бедро': 0.8, … })` makes them glow — the hook
for the impulse sync. In "Демо" the real person is a translucent orange body standing on the same spot ("Истина").
Without WebGL the page falls back to the flat drawing.

Solver changes from watching it (2026-11-03): at rest and upright the static balance re-anchors the pelvis height
(the back sensor's travel drifts slowly between rests); standing still, the feet as tracked are compared with each
foot put back beside the other and the clearly better fit wins (a misread step no longer locks a knee straight — a
real lunge keeps its feet because its shanks cannot close the chain otherwise).

## Precision today — what to trust (5 sensors)
| measured directly (≈ 1–2°, < 20 ms) | derived from physics (good) | inferred (approximate) |
|---|---|---|
| trunk lean / side bend / twist, forearm and shank angles, all angular speeds, back-sensor height travel | knees and hips in squat-type work (2–8°), pelvis height, steps | upper arms → elbow / shoulder (12–25°), knees in jumps and one-leg moves |
For the impulse sync, drive timing from the measured signals (trunk, shanks, forearms and their speeds — the phase
of a squat is the shank / trunk angle and its sign of speed); use the inferred joints for display and ROM.

## Arms: the learned corrector (owner 2026-11-03: "make the arms as accurate as the legs")
One wrist IMU does not see the upper arm. The legs are anchored (floor, balance, the back sensor's height); arms have
no such anchor. What was built (`models/armdb.js`, `scripts/motion/armdb.js`, `ArmPrior` in motion-core.js):
- The arm physics (per-movement shoulder share fitted on the wrist velocity) runs untouched.
- A **corrector learnt from data** then gives the arm pose: nearest neighbours (44 k prototypes, 15 numbers each) over
  *what the wrist sensor sees* (forearm direction and twist in the trunk frame, its turn rate, the wrist's push) **and
  what the physics concluded** (its upper-arm direction) → the real upper arm. Trained by running the whole chain
  (sensors → solver) over 108 CMU takes of other people (punches, martial arts, dance, stretches, reaching, squats; 44
  min) and 40 synthetic EMS sessions (raises, curls, presses, flies, rows, holds, punches, squats with arms forward;
  random speed, range, elbow bend, wrist turn, size). The physics estimate as an input lets it learn *when the physics
  is right* (clean raises and curls) and when not (punches, jacks, mixed moves). Right arms are mirrored to left.
- Result (mean elbow / shoulder error): XEMS script 2–14° / 2–17° (curl the worst); real people (CMU test clips)
  **18° / 16°** (before: 19° / 17° physics only; a prior without the physics input 12° / 10° on people but 21° on the
  EMS script). Best clips 7–10°; worst: arms held forward while squatting (≈ 40°) — a held arm forward straight and
  one bent 35° give the same wrist signal, and the training people did both.
- So the arms are **not yet as exact as the legs**; the honest limit of one wrist sensor is ≈ 10–20° on the elbow.

### Tested: dead reckoning of the elbow from the zero pose (owner's idea, 2026-11-03)
"Every movement starts from a known position — follow it from there." Built behind `ARM_DR=1` (motion-core.js): the
wrist sensor's acceleration relative to the shoulder, minus the forearm's own turn about the elbow, is the elbow's
acceleration; integrated from the calibration pose, held on the sphere |elbow − shoulder| = upper-arm length,
velocity zeroed when the arm is still. With perfect sensors it follows: curl ±4°, front raise exact to the top, then
starts to drift. With the real fusion (tilt error 1–2°, up to 3° in fast moves → 0.2–0.5 m/s² of gravity leaking
into the acceleration, integrated twice) the elbow is off by 40° and more after a second of movement — the reason a
phone cannot measure distance with its accelerometer. Letting the gyro carry more during movement (lower gravity
gain in fusion.h, `KP_MOVE`) made the tilt worse (1.3° → 3.5°), so it stays 0.5. The legs survive the same physics
because every step on the floor and every still moment resets them and the balance checks the height; the arm has
no such reset in mid-air. The arm physics in use *is* this idea in its drift-proof form: per movement from rest, one
unknown (the shoulder's share), fitted on the integrated wrist velocity.

### Teacher recordings — exact arms with the same 5 sensors (built 2026-11-03)
The owner has 5 XIAOs. For **recording sessions** they go: back, both wrists (as always) and **the two leg sensors on
the upper arms** (outer side, middle of the upper arm, bottom side to the body). Page: "Запис за ръцете: вкл." →
calibrate (the same zero pose + arms forward; the wrist is told from the upper arm on the same side because it is
swung harder) → "● Запис" → the arm exercises, 1–2 min each → the `…-raw.jsonl` file.
`scripts/motion/train-recordings.js`:
- `train <armdb.js> <out> <raw.jsonl…>` replays a recording through the solver exactly as in normal use (back + wrists
  → arm physics → the corrector's inputs) and adds the **measured** upper arm as the answer → a new `armdb.js`;
- `eval <armdb.js> <raw.jsonl…>` — how far the normal 5-sensor arms are from the measured ones on a recording (use a
  recording that was not trained on);
- `sim <out> <clip ids>` — a simulated recording (CMU person, teacher layout) to test the chain.
Simulated proof (CMU person 86): 19 s of teacher recording of "squats with the arms forward" (other repetitions)
took that test clip from **40° to 9°** on the elbow; with 4 more minutes of his other moves the 9 test clips went from
18° / 16° to **13° / 11°** (elbow / shoulder). The arms learn exactly what is recorded — so record the XEMS exercises,
several people, and the video next to it for the visual check (start with 3 jumps to sync).

## Limits with five sensors (honest)
- **No pelvis sensor**: trunk and pelvis are one segment; lumbar flexion and hip flexion are not separated, hip
  angles come from the leg solve. **A 6th sensor on the sacrum (suit belt) is the single best addition** — it makes
  hips direct and the squat depth independent of the balance assumption.
- Upper arms are inferred (per-movement), exact only in single-joint movements; mixed ones are approximate.
- Balance is assumed quasi-static: jumps and fast throws distort the leg solve during flight (the measured segments
  stay right).
- Foot tracking is per step; long walking drifts (not an EMS case; re-anchors at every calibration).

## Roadmap
1. **Now — test bench**: flash five XIAOs, open `motion/viewer/index.html` in Chrome (tablet or laptop), "＋ Сензор" ×5
   (or "Демо": the XEMS script or real CMU people, the robot vs. the truth), "Калибрирай", train; "● Запис" saves a CSV of all angles for analysis.
2. **Hub**: the back sensor also becomes BLE central for the four limb sensors (nRF52840 does both roles) → one link
   to the tablet, one clock for all five, solver ported to C on it (the core is plain math, written for that).
3. **XEMS integration** (Java port of `motion-core.js`, dx-safe): pose on the training screen, reps and ROM in the
   session report, impulse synchronised to the movement phase (contraction on the concentric part), form cues
   (trunk too far forward, left/right asymmetry), exercise recognition by templates (DTW, as in the voice module).
4. With recorded sessions: a small learned model for the inferred joints (upper arm, pelvis) on top of the same data.
