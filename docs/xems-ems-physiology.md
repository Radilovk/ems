# EMS physiology — the knowledge the algorithms stand on

One place for what the AI, Auto, the session report and the next-training recommendation assume about the body.
Every formula in code that depends on these points links here. `[E]` = published evidence (list at the end),
`[D]` = our design estimate (tunable, to be validated on recorded sessions). Rewritten in 1.1.269-ai after the
"300 % fatigue in the warm-up" bug (§3.4).

## 1. What the frequency does

| Band | What the muscle does | Used for | Fatigue |
|---|---|---|---|
| 1–10 Hz | single twitches, full relaxation between them | warm-up (7 Hz), drainage (1 Hz), massage / relief (2–8 Hz), cool-down (4–5 Hz) | very low |
| 10–20 Hz | twitches start to sum (unfused tetanus) | metabolic B-segment (6 Hz), recovery pulse in the active pause | low |
| 20–30 Hz | fusion: a steady contraction from here | endurance-type work | moderate |
| 50–100 Hz | fused tetanus, near full force | strength (85 Hz), power (100 Hz) | high, fastest |

EMS recruits motor units non-selectively, synchronously and always the same ones (no rotation as in a voluntary
contraction), so a given force tires the muscle faster than voluntary work [E:R6, R7]. Higher frequency at the same
current = more force and more fatigue (high-frequency fatigue: conduction failure, faster metabolite build-up) [E:R4, R5].

**Warm-up = 7 Hz, almost continuous (10 s / 1 s), 350 µs, 60 → 90 % of the calibrated strength** — the WB-EMS
practice: blood flow and warmth without tiring the fibres the main part needs. AI (`AiPlanner`, TONE / FAT) and Auto
(`AutoCatalog.WARMUP_HZ`) both. Exercises in the warm-up are free movement; nothing is synced to the impulse.

## 2. Force–frequency curve (one function everywhere)

```
S(f) = f^2.5 / (f^2.5 + 15^2.5)            half of the tetanic force at ~15 Hz              [D, shape E:R4,R5]
forceWeight(f) = S(f) / S(85)              1 Hz 0.001 · 5 Hz 0.06 · 7 Hz 0.13 · 10 Hz 0.27 · 20 Hz 0.68 · 50 Hz 0.97
```

- Java: `AiPlanner.forceWeight` / `forceShare`. Report: `kF` in `branding/report/session-report.html`.
- Means "how hard the muscle contracts": the report's **EMS load S**, its modes ("strength work" needs strong
  contraction, so a 7 Hz warm-up at high mA is light tone, not strength), the muscle map, and the 30-day load per zone
  in the session record (`SessionRec.chLoad` → `mus` → `NextPlan` zone balance).

## 3. Fatigue

### 3.1 Model (Smart Session, `AiEngine.integrate`, planned in `AiPlanner.simulateDose`)
```
dF/dt = w(f)·ρ − F/τ          recovery runs all the time, during the impulse too
w(f)  = forceWeight(f) · (0.7 + 0.3·f/85)       7 Hz 0.10 · 20 Hz 0.53 · 50 Hz 0.86 · 85 Hz 1          [D]
ρ     = current / calibrated current;  active pause adds w(f_p)·ρ·σ_p
```
Steady state of a cycle (on, off): `f0 = (G(1−E1)E2 + P(1−E2)) / (1 − E1E2)`, peak `= f0·E1 + G(1−E1)` with
`G = w·ρ·τ`, `P = w_p·ρ·σ_p·τ`, `E1 = e^(−on/τ)`, `E2 = e^(−off/τ)`. For 4 s / 4 s at full strength: `τ / (1 + e^(−4/τ))`.

### 3.2 Recovery time constant τ
Phosphocreatine resynthesis after hard contractions has a half-time of ~20–35 s, shorter in trained people [E:R8];
τ = t½ / ln 2 → LOW 50 s, MID 40 s, HIGH 30 s [D].

### 3.3 Limit F_max and rest F_rec
Anchor: the standard WB-EMS session (20 min, 85 Hz, 4 s / 4 s, strength by RPE "hard") is sustainable for an
average client [E:R1]. So F_max = the 4/4 full-strength peak × tolerance: LOW 0.8 (needs rests already there),
MID 1.0 (holds it at the edge), HIGH 1.15 (holds 6 s / 4 s with long blocks) → 20.8 / 21.0 / 18.4. F_rec = F_max / 3.
Fatigue-driven blocks end **before** the cycle whose peak would cross F_max; continuous phases cap the output so their
steady peak stays ≤ 0.75 F_max (not below 0.3 of the calibrated strength) — `AiPlanner.continuousCap`.
"Tired" for the exercises (easier station) = F ≥ 85 % of F_max (`AiExercises.TIRED_FATIGUE`).

### 3.4 What was wrong before 1.1.269
Recovery only in the pause (`F *= e^(−off/τ)`), weight `√(f/85)` for every frequency, warm-up 85 Hz 4/4 up to 100 %
with no limit in continuous phases: the warm-up settled at 2–3 × F_max (300 %+ for LOW fitness with the double
impulse), the main part started "exhausted" (first block ended at once, long rest, easier exercises), a 6 s impulse
took blocks 30–50 % over the limit, and a 5 Hz cool-down or 2 Hz massage counted as contraction.
Simulation now (`scripts/ai-sim`, FatProbe): warm-up 12–17 %, main ≤ 100 %, massage ≤ 10 %, drainage ≈ 1 %.

## 4. Energy

- Oxygen cost per second rises with the firing rate and levels off above fusion: `kf(f) = (f/(f+25)) / (85/110)`,
  7 Hz ≈ 0.28 of 85 Hz (twitches cost more per unit of force than a tetanus, Ca²⁺ handling) [D].
  Java `AiEnergy.freqFactor`; report `kf` → the **metabolic stimulus M** (calories, the heart-rate estimate without a
  band) and the goal zone of drainage / massage, whose effect is circulation, not contraction (goal `basis: "M"`).
- kcal = max(heart-rate branch, current + exercise branch) — `AiEnergy` class comment (VO2 from %HRR [E:R9]).

With a fresh scale measurement (docs/xems-scale.md "Where the scale's data goes") the muscle mass is measured
(skeletal muscle kg → muscleScale; muscle per channel from the segments) and the resting burn comes from lean mass
(Katch–McArdle 370 + 21.6·lean) instead of the weight.

## 5. Pulse width and dose
350 µs (300–400) reaches deeper fibres at a tolerable current [E:R2]; dose Q = 2·ρ·pw·f·t (biphasic) — §6.2 of the
Smart Session spec. Dose is the budget; fatigue (§3) decides the blocks.

## 6. Between sessions
WB-EMS stresses the same motor units every impulse; after a hard session creatine kinase peaks on day 2–4 and can
reach very high values in the unaccustomed [E:R3]. Guidelines: ≥ 4 days between sessions, the first sessions
(adaptation) clearly lighter, ~20 min, strength by RPE, plenty of fluid [E:R1].
`NextPlan.recommend`: < 48 h → −30 % and shorter; 2–4 days → −15 %; next appointment within 4 days → −5 %
(docs/xems-plan.md). Report `persona()`: the first 4 sessions ×0.85…1.
Measured recovery (scale, docs/xems-scale.md "EMS use"): swelling raises Z100/Z20 against the client's own
baseline → ×0.85 from +1.2 %, ×0.7 from +2.5 %; drier legs (Z20 +5 %) → ×0.85. [D] The stronger of the
time rule and the measurement wins (Auto too since 1.1.311-ai). Since 1.1.311-ai: baseline from the same time of day
(±3 h, else thresholds ×1.5); weight ≥ 2 % under the week's median → ×0.85 (water lost, any scale); on a
one-frequency scale drier legs alone do not cut.

## 7. Heart rate
- Resting HR (`AiRestHr`): measured for as long as its reliability needs, 10–45 s — the median of n samples with
  spread σ is good to ±1 bpm when n ≥ (1.25σ)²; a trend faster than 3 bpm / 30 s (still settling) extends it;
  not rested in the last 10 min → at least 20 s; at 45 s a fair result is taken, else the trainer accepts.
  Runs hidden while the AI sheet is filled; shown only if it is not done when the plan is needed.
- AI does not start without the band's pulse: it is what confirms the work and steers the session.
- Isometric EMS contractions raise HR through the pressor reflex more than VO2, so the HR branch over-reads at high
  strength (`AiEnergy`, known bias).

## 8. Where it is used
| Knowledge | Code |
|---|---|
| force–frequency, fatigue model, τ, F_max, continuous cap, block end | `ai/AiPlanner`, `ai/AiEngine` |
| warm-up 7 Hz | `AiPlanner.WARMUP_HZ`, `AutoCatalog.WARMUP_HZ` |
| muscle work per zone | `wearable/SessionRec.chLoad`, report `chDose` |
| EMS load S / metabolic M, modes, goal zones | `branding/report/session-report.html` (`kF`, `kf`, `GOALS`) |
| energy | `ai/AiEnergy`, report `kcal` |
| rest between sessions | `wearable/NextPlan` |
| rest after an Auto set: τ·ln(F / F_rec), 15 s floor tetanic | `ai/AutoEngine.enterRest` (docs/xems-auto-mode-spec.md §11) |
| pulse module lever order (k(f) above / below fusion, pressor reflex) | `wearable/HrGuardCore.ladder` (docs/xems-pulse-control.md) |
| resting HR | `ai/AiRestHr`, `AiUi.screenRest` |
| tests | `scripts/ai-sim/run.sh` (REST_HR, PAUSE, scenarios), `run-auto.sh` |

## Not yet
Validate τ, F_max, w(f) and kf on recorded sessions (CR10 answers, HR recovery, repeated sessions) — the [D] values.

## References (from the literature the team works with; check the exact source before quoting outside)
- R1 Kemmler W. et al. (2016, updated 2023). Recommendations for effective and safe whole-body electromyostimulation
  (WB-EMS). *Front. Physiol.* / *Ger. J. Sports Med.*
- R2 Maffiuletti N.A. (2010). Physiological and methodological considerations for the use of NMES. *Eur. J. Appl. Physiol.*
- R3 Teschler M., Kemmler W. et al. (2016). Very high creatine kinase CK levels after WB-EMS. *Eur. J. Appl. Physiol.*
- R4 Kesar & Binder-Macleod (2006). Effect of frequency and pulse duration on human muscle fatigue. *Exp. Physiol.*
- R5 Gregory et al. (2007). Impact of varying pulse frequency and duration on torque production and fatigue. *Muscle & Nerve.*
- R6 Gregory & Bickel (2005). Recruitment patterns in human skeletal muscle during electrical stimulation. *Phys. Ther.*
- R7 Bickel, Gregory, Dean (2011). Motor unit recruitment during NMES: a critical appraisal. *Eur. J. Appl. Physiol.*
- R8 Haseler, Hogan, Richardson (1999). Skeletal muscle phosphocreatine recovery in exercise-trained humans. *J. Appl. Physiol.*
- R9 Swain & Leutholtz (1997); ACSM — %HRR ≈ %VO2R.
