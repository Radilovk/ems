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
| Offline end-to-end test | `sh scripts/motion-sim/run.sh` |

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
   (or "Демо" without hardware), "Калибрирай", train; "● Запис" saves a CSV of all angles for analysis.
2. **Hub**: the back sensor also becomes BLE central for the four limb sensors (nRF52840 does both roles) → one link
   to the tablet, one clock for all five, solver ported to C on it (the core is plain math, written for that).
3. **XEMS integration** (Java port of `motion-core.js`, dx-safe): pose on the training screen, reps and ROM in the
   session report, impulse synchronised to the movement phase (contraction on the concentric part), form cues
   (trunk too far forward, left/right asymmetry), exercise recognition by templates (DTW, as in the voice module).
4. With recorded sessions: a small learned model for the inferred joints (upper arm, pelvis) on top of the same data.
