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
