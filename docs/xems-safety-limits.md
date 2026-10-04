# Absolute limits of the impulse (owner, 1.1.323-ai)

Every mode, every path to the suit: manual (+ / −, row ⚙, ⚙ Master, steppers, index buttons), music, interval
timer, impulse maps, Auto, AI. Not an adaptation — the same rules for everybody; only 60+ has its own ceiling.
Code: `ai/SafeLimits` (pure, the rules), `wearable/SafeGuard` (on the row), test `bash scripts/fit-sim/run.sh`
(SafeSim) and `run-auto.sh` (every Auto cycle inside the limits).

## The rules
| Rule | Value | Why |
|---|---|---|
| Frequency | 1–120 Hz; **60+ at most 85 Hz** | owner; Auto had 60+ ≤ 85 already |
| Depth | 50–400 µs; from 100 Hz at most 300 µs | high rate × wide pulse = pain / burn (Auto L4) |
| Fused impulse (≥ 20 Hz) | at most 6 s from 50 Hz, 10 s at 20–49 Hz; soft rise ≥ 0.3 s | WB-EMS impulse 4–6 s [E:R1]; no jolt |
| Pause (≥ 20 Hz) | the **shortest pause whose steady fatigue peak at the calibrated strength stays within a trained person's limit** (physiology §3.1, HIGH: τ 30 s, F_max = 1.15·τ/(1+e^(−4/τ))); the second impulse counts | one formula for every combination |
| Second impulse | **≤ 10 Hz**, under the main frequency, never stronger than the main impulse; 1 Hz main → off | the pause is for relaxing — a fused contraction there is no rest |

Shortest pause (s) for impulse 2…10 s (no second impulse):

| Hz | 2 | 3 | 4 | 5 | 6 | 8 | 10 |
|---|---|---|---|---|---|---|---|
| 30 | 1 | 1 | 1 | 1 | 1 | 2 | 2 |
| 50 | 1 | 2 | 2 | 3 | 3 | 4 | 5 |
| 85 | 2 | 3 | 3 | 4 | 5 | 7 | 9 |
| 100 | 2 | 3 | 4 | 5 | 6 | 8 | 11 |
| 120 | 2 | 3 | 4 | 5 | 7 | 9 | 13 |
(Impulses over 6 s at ≥ 50 Hz are cut to 6 s first.)

## Where
- `SoftRamp.phase` (every phase start, TrainItem.startPulse) → `SafeGuard.enforce(item)`: all four modes of the
  row's program; `SoftRamp.sendDuration` (every ON-phase send) → `SafeGuard.enforce(item, bean)`. The value is
  corrected **on the row** (the screen shows what the suit gets) and the trainer reads one line why
  ("Граница за безопасност: Пауза 1 → 4 s: при 100 Hz · 4 s по-кратка не е безопасна"), at most every 8 s.
- The engines apply the same rules before they write, so they never read the guard's correction as a trainer's
  change: Auto `AutoLimits.clampStep` (+ `run-auto.sh` checks every cycle), AI `AiSession.safe`.
- The 2nd-impulse stepper of the parameters dialog goes 1–10 Hz (`PauseSetting`).
- `scripts/compile-softramp-java.sh` builds `branding/smali/softramp` (before 1.1.323 it had no script).
