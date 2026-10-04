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
  in the session record (`SessionRec.chLoad` → `mus`).

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

### 3.5 The impulse moves with the fatigue (Auto, 1.1.322 — `ai/AutoDynamics`)
- **Frequency down inside a set.** In a sustained voluntary effort the motor units fire slower as the muscle tires
  while the force holds ("muscle wisdom"); a fatigued muscle relaxes slower, so it fuses at a lower rate.
  Progressively lower stimulation frequency kept the force of a fatiguing NMES bout better than a constant one
  [E:R16]. Auto: `hz = start − (start − floor)·g`, `g = clamp((F/F_max − 0.25)/0.65)` — a fresh muscle (long rest)
  starts at the top, the floor is reached at 90 % of F_max; the floor of ≥ 50 Hz work is never under 50 Hz.
- **Depth never down.** Pulse width decides how many motor units are recruited [E:R2, R7]; less width = fewer
  fibres, not less fatigue. At the end of a set (g > 0.6) +≤ 20 µs to reach fibres that have not worked yet.
- **Pause up, impulse : impulse.** The pause grows by ≤ 2 s with g; an approach with a second impulse gives it
  1 s of the impulse when g > 0.7 (low-frequency active recovery).
- **Another approach per set** (strength + active rest, pure strength, volume, metabolic, endurance tone): the
  hard ones while the muscle is fresh and early in the session, the light ones when the HR is high, late or
  tired; the order differs every training. Alternating high- and low-frequency work lets the high-frequency
  fatigue recover while the work goes on [D — no study shows that variety itself beats the standard 85 Hz 4/4].
- **Passive recovery in sectors** (massage → pump 2 Hz, tone-massage 8 Hz + 3 Hz, drainage 1 Hz): changing
  frequency keeps the sensation from fading (habituation) and alternates pumping and massage [D].

## 4. Energy

Three layers: what the muscle spends **while** the impulses run, what is paid **after**, and what is still unknown.

### 4.1 During — frequency, force, fibres
- **Below fusion (≤ ~10 Hz):** ATP per twitch does not depend on the rate, so energy per second rises about linearly
  with the frequency; whole-body VO2 climbs up to ~8–12 Hz and then flattens (healthy men, quadriceps, 1–12 Hz:
  ~2.4× rest at 5 Hz) [E:R10].
- **Above fusion (> ~30 Hz):** force saturates; extra pulses add little force. The cost per second is then set by the
  force and by how much muscle is fired. At equal current a higher frequency means more force → more ATP per second.
  Our `kf(f) = (f/(f+25))/(85/110)` has this shape (7 Hz ≈ 0.28, 85 Hz = 1; ≈ 3.5× between them) [D].
- **Per unit of force it is different:** with short pulses (0.05 ms) at 25 Hz a unit of force costs ≈ 2× the
  phosphocreatine of a voluntary one; wide pulses at 100 Hz (1 ms) cost about the same as voluntary in "responders"
  [E:R11]. Equal-force low vs high frequency alone did not change the metabolic changes in another study [E:R12].
  So "high frequency = 3–4× the energy" holds **per second at the same current** (more force), not per unit of force.
  Not found in the literature: a measured 3–4× anaerobic ratio — the owner's figure; kept as a tunable [D].
- **Fibres:** EMS fires fibres non-selectively, at fixed places, synchronously [E:R6, R7]. The same units work all the
  time → they tire sooner and go glycolytic. High-frequency stimulation empties glycogen in all fibre types, most in
  type II (IIa most) [E:R13]. Muscles: surface current reaches the superficial / large muscle better than the deep one
  (`AiEnergy.CH_DEPTH`, `CH_MASS`) [D].
- **Aerobic and glycolytic share.** Part of the ATP of the evoked contraction is covered without oxygen (PCr,
  glycolysis). It does not show as oxygen uptake while it happens; the body pays it back afterwards. We split the
  evoked ATP: aerobic (counted as VO2, as before) and glycolytic: `g(f) = 0.15 + 0.15·forceWeight(f)` — 0.17 at 7 Hz,
  0.30 at 85 Hz. The glycolytic O2-equivalent of a second is `evoked VO2 · g/(1−g)` [D — the owner's 3–4× is a
  per-second ratio between low and high frequency; with kf and g together we get ≈ 7× in glycolytic ATP, still to be
  validated].

### 4.2 After — the interest the body pays
| Part | What is repaid | When | In the code |
|---|---|---|---|
| Fast | ATP, phosphocreatine (50 % in ~30 s, all in 2–3 min), O2 of myoglobin and blood, the O2 deficit of the rising HR | minutes | `closeEpoc`: (VO2_end − rest) · τ, τ = 40 s (AI session only) |
| Slow, glycolytic | lactate (~65 % oxidised, ~25 % back to glycogen by gluconeogenesis), glycogen | ~10–60 min | the glycolytic debt: litres O2-equivalent × 5.0 kcal/L, in the total from the moment it is made (`AiEnergy.getKcal`) |
| Slow, other | temperature, catecholamines, ion balance | minutes–hours | **not modelled** (no size from the sources) |
| Muscle damage | CK rises with high intensity, peak ~72 h; repair costs energy | days | **not modelled**; Auto / AI rest rules [E:R3, R14] |

EPOC is intensity- and duration-dependent: low strength and short work leave no lasting EPOC [E:R15]. The glycolytic
debt is small for a 7 Hz warm-up or a massage and large for 85–100 Hz strength work — as it should.
No double counting: the fast term is the deficit of the oxygen uptake we already count; the glycolytic debt is work that
never became oxygen uptake.

### 4.3 Where it is counted (1.1.318)
| Where | What it uses |
|---|---|
| Smart Session (`AiSession.tickEnergy`) | client data, the cycle's impulse, the exercise, HR; closes the fast debt at the end |
| Auto (`AutoSession.tickEnergy`) | the leader's data from the client record (weight, age, sex, fitness, scale lean / skeletal mass, channel muscle, medication, measured resting HR), the impulse the suit **really** gives (hz, pulse width, strength, channels, the second impulse in the pause), the running set's exercise, HR; the tolerated charge is the calibration; closes the fast debt at the end |
| Manual (`HrGuardCore.tickEnergy`) | the leading row's real values; counts only while impulses run + 60 s of recovery, then closes the fast debt; a new run after 10 min starts again (before: ran on from the last calibration, idle time included) |
| Report (`session-report.html`) | the same terms per second from the record: Schofield resting uptake, VO2max = Uth ⊕ fitness value, `max(heart, rest + evoked + exercise)`, the glycolytic debt, the fast debt |
| Dial, band, summary | `HrGuard.liveKcal()` — Auto or AI kcal when one runs, else the manual one |

**The total in the report is gross** (it holds the resting burn of the same time); the tile also shows "above rest"
(`kcalAct` = total − rest · time). Totals of the client card, the 30-day sum, CSV and TCX are gross. Checked on one
case (80 kg man, 20 min, 85 Hz, 4/4 s, HR at half reserve): Java 212 kcal, report 228 (+7 %).
The model of the report is a per-second copy of the Java one and stays simpler (no pulse-width balance per channel, no
scale's channel muscle); the two can differ by a few per cent.

### 4.4 What the total is
`kcal = max(heart branch, rest + evoked + exercise) + glycolytic debt (+ fast EPOC at the end)` — the heart branch
carries the aerobic part when there is a band; the glycolytic debt is added **on top**, because heart rate does not
see it. The report (`session-report.html`) uses the same terms per second (its `hz`, `M`, `kF`) and shows the debt apart.
The planning of Auto (`AutoEngine` load, dose, fatigue) uses `kf`, `recruited`, `R_MAX` and is **not** changed by the
debt, so the plans stay as they were.

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
Auto / AI (`AutoPlanner`, `AiPlanner`) use these rest rules; the manual mode no longer adapts (1.1.323: `NextPlan.recommend` loads the last settings unchanged). Before: < 48 h → −30 % and shorter; 2–4 days → −15 %; next appointment within 4 days → −5 %
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
| rest between sessions | `ai/AutoPlanner`, `ai/AiPlanner` |
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
- R10 Whole body oxygen uptake and evoked knee torque in response to low-frequency electrical stimulation of the
  quadriceps (J. NeuroEng. Rehabil. 2013, 10:63).
- R11 Responders to wide-pulse, high-frequency NMES show reduced metabolic demand: a 31P-MRS study (PLoS ONE 2015).
- R12 Gondin et al. (2010). Effects of stimulation frequency and pulse duration on fatigue and metabolic cost during a
  single bout of NMES. *Muscle & Nerve* (abstract only checked).
- R13 Glycogen depletion of human skeletal muscle fibers in response to high-frequency electrical stimulation
  (Can. J. Appl. Physiol. 2003).
- R14 Inter-individual differences in muscle damage after a single bout of high-intensity WB-EMS (PMC11537929).
- R16 Binder-Macleod S.A., Guerin T. (1990). Preservation of force output through progressive reduction of stimulation
  frequency in human quadriceps femoris muscle. *Phys. Ther.* (check the exact source before quoting).
- R15 Effect of exercise intensity, duration and mode on post-exercise oxygen consumption (PubMed 14599232).
