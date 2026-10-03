# Body-composition scale (Lepulse Lescale P1) — direct BLE, no Fitdays

Audit (1.1.301-ai, owner-facing, Bulgarian): `docs/xems-scale-audit.md`.
Status: implemented in 1.1.285-ai (`wearable/scale/`), tested offline only — **not yet on the real P1**.
The tablet reads the scale itself, stores the measurement per client on the tablet and (1.1.294-ai,
`ScaleUploader` → `POST /v1/measures` → D1 `body_measures`) on the server under `(license_id, cid)`; the client's
card shows a "Тяло" block from `GET /v1/history/<cardId>` → `body` (see `xems-client-sync.md`) and a fresh measurement replaces the
Deurenberg body-fat estimate in `AutoEngine.fatPct()` (and the record's weight in `AiProfile`).

## Code (`branding/java/src/com/isaigu/gymapp/wearable/scale/`, compile:wearable)
| Class | What |
|---|---|
| `ScaleProtocol` | Pure: frames, handshake and decode of both generations; `Reading` (weight, scale fat %, Z20/Z100 by segment 0 trunk · 1 LA · 2 RA · 3 LL · 4 RL) |
| `ScaleBody` | Pure: WLA25 (float32 + half-up rounding as the vendor binary) → fat, muscle, water, visceral, BMR, body age, 5 segments; `withFat` = the same chain from another fat % |
| `ScaleModel` | Pure (1.1.295-ai): **the numbers we show** — sex-aware fat (Sun 2003 + the scale's own / WLA25), skeletal muscle (Janssen 2000), Kalman smoothing of lean between weigh-ins, rebuild of older history from raw impedances (see "XEMS model") |
| `ScaleDetail` | Pure (1.1.295-ai): all values with a status word (`rows`), the analysis tiles with their 5-sector norms and texts (`metrics`), 5 zones fat / muscle (kg, % of standard), weight control to the client's own healthy weight |
| `ScaleSession` | Pure (1.1.301-ai): one measurement = **one standing**; every new sweep while the client stays is merged, a repeated sweep (same impedances) is ignored, contact quality per sweep; nobody is asked to step off (see "Measuring") |
| `ScaleStage` | The measuring stage (1.1.301-ai): figure + drawn scan (`ScanFx`, time-driven) / scan film, 5 steps (step on · link · weight · analysis · done), instruction, live weight settling, scan ring, sweep count and contact chips (see "Measuring") |
| `ScaleSources` | "Научна основа" (1.1.298-ai): every source of the module with its tier (study · standard · maker · XEMS), what we take, who was measured, DOI (tap → the paper); data also in the shared HTML |
| `ScaleAnalysis` | The "Анализ" sheet (1.1.296-ai): composition bar · zone figure · way to healthy weight | 13 tiles | focus with norm, meaning and history |
| `ScaleLink` | Android BLE for as long as the page is open: scan (saved MAC / FFB0 in advert / scale-like name), connect, CCCDs, one-op-at-a-time queue, gen A handshake or gen B 0.4 s heartbeat + acks; every result delivered, the link **stays** while the client stands; the scale's own disconnect (sleep) → scan again (1.1.301-ai) |
| `ScaleStore` | prefs `xems_scale`: `m<userId>` JSON array (raw impedances kept), `mac`, `h<userId>` height fallback; `freshFatPct/freshWeight` (60 days); `save` (through `ScaleModel`), `upgrade` (older model / other sex·age·height → rebuilt), `delete` (+ server), `unlike` (weight jump → "is this X?") |
| `ScaleInsight` | Pure: readiness (ρ = Z100/Z20 per segment and legs' Z20 vs the client's own baseline), segments as % of WLA25 normal, fat per suit channel, L/R asymmetry |
| `ScaleViews` | Drawn: `Body` (project figures painted by segment, tap = select), `Radar` (5 segments vs normal, ghost = last), `Gauge` (readiness), `Trend`, `Reach` (current's reach per channel) |
| `ScaleScreen` | Full-screen page from the client row (purple scale icon): body · today · trend & EMS (see "Result page") |

## EMS use (1.1.286-ai)
1. **Readiness → today's strength.** `ScaleInsight.readiness`: per segment Δρ = ρ / median(ρ of up to 8 earlier
   measurements ≥ 6 h before) − 1; arms weigh 0.7 (they get a fraction of the current). Worst ≥ 1.2 % → ×0.85,
   ≥ 2.5 % → ×0.7; legs' Z20 ≥ +5 % (drier) → ×0.85. Score = 100 − 22·(worst − 0.4) − 5·(dry − 2). [D] — validate
   on repeated measurements (day-to-day noise, the days after hard sessions). No baseline (first measurement) → no
   verdict. Used when the measurement is ≤ 12 h old: `AutoPlanner` (phiMax ×, note) and `NextPlan.recommend`
   (the stronger of rest-days and scale wins, never both).
2. **Fat per suit channel → reach.** `ScaleInsight.channelFat`: whole-body fat % × (segment fat share / body
   share); channels → trunk / arms / legs (glutes half trunk, half legs). `AutoEngine.reach(k)` uses it instead of
   the one whole-body value.

## Where the scale's data goes — every algorithm that uses the body (1.1.292-ai)
A fresh measurement (≤ 60 days; readiness ≤ 12 h) reaches the engines through `AiProfile` → `AutoModel.Input` (Auto,
`AutoSession`) and `AiModel.SessionInput` (Smart Session, `AiProfile.applyTo`):

| Data | Algorithm | Effect |
|---|---|---|
| fat % (+ per channel) | `AutoEngine.fatPct / reach(k)` | current's reach per channel (fat insulates) — load, dose, total-load board |
| skeletal muscle kg | `AiEnergy.muscleScale` → `evokedVo2`; `AutoEngine.vo2Ref` | O₂ / kcal of the evoked contractions (was 31 / 38 % of weight) |
| muscle per channel (`ScaleInsight.channelMuscle`, mean 1) | `AiEnergy.evokedVo2`, `AutoEngine.zoneMass / metaDemand` | each channel's muscle mass: whole-body load, oxygen share, kcal |
| lean mass kg | `AiEnergy.restingVo2(…, lean)` (Katch–McArdle) | resting burn from muscle, not weight — kcal, intensity, HR-free load |
| readiness (×1 / 0.85 / 0.7) | `AutoPlanner` phiMax, `AiPlanner` phiMax (active), `NextPlan.recommend` | today's strength ceiling (the stronger of rest-days and scale) |
| muscle low (FFMI) | `AutoPlanner` (replaces BMI < 18.5) | −10 % ceiling; an athletic low BMI is no longer cut |
| obese by FMI | `AutoPlanner.goalSlimBmi` (replaces BMI ≥ 30) | the fat-loss HR corridor's upper edge −5 % only for real fat, not muscle |
| weakest zone < 90 % | `AiPersonal.withScaleFocus` in `AutoPlanner` / `AiPlanner`; `NextPlan.scaleFocus` | one more focus zone (AiPersonal effect, +5 % on its channels in the plan) |
| water low | inside readiness (legs' Z20) | ×0.85 + "drink" |

Not changed on purpose: **HR max / HR zones / HrGuard** stay on the passport age (cardiovascular, not body
composition); **VO₂max** stays on fitness + age; the **strength actually sent** is never raised automatically from the
reach (skin tolerance limits it — Auto's model knows less reaches the muscle, the trainer decides).

**Sharing** (summary sheet): `ScaleShare.image` (the sheet as PNG) and `ScaleShare.html` (one self-contained page
for a phone, light/dark, figure + norm bars + change + recommendations), through the report's FileProvider path.

## Body type, physical age — what the fitness apps get wrong (1.1.287-ai)
Measured on WLA25 itself (sacoma port): same impedances, +10 kg → +9 % fat (its BMI / weight terms count weight
as fat → muscular men "fat / overweight"); "body age" = entered age + a fat-% band offset (25 / 45 / 65 → 22 / 42 /
62 for the same body). `ScaleInsight.body` adds a layer that does not carry those biases:
- **FFMI / FMI** (kg/m²) classify: muscle low / normal / athletic / very (men 17 · 20 · 23, women 14 · 17 · 19.5),
  fat very low only below essential fat (men 6 %, women 14 %), excess / obese by FMI (men 6 / 9, women 9 / 13).
  Types: athletic ("the weight is muscle"), balanced, strong with excess fat, excess fat / obese, fat with little
  muscle, slim with little muscle, very lean.
- **Physical age** (1.1.288-ai): the age whose **median ALMI and FMI** match, half each — DXA medians of 3 327
  adults by decade (Imboden et al. 2017, PLoS One 10.1371/journal.pone.0175110 / .0176161): ALMI men 9.3 · 9.1 ·
  8.7 · 8.6 · 8.5 · 8.0, women 6.9 · 6.8 · 6.7 · 6.6 · 6.5 · 6.3 (25…75 y); FMI men 5.0 · 6.8 · 8.0 · 8.7, women
  6.6 · 8.9 · 9.7 · 11.3 (25…55 y; it falls after 60). FMI classes = Kelly et al. 2009 (NHANES DXA) Table 4. BIA
  reads a little less fat than DXA → leans young. Entered age not used.
- **Fat layer per zone** = the zone's own fat share against the healthy middle (men 15 %, women 25 %), not
  against a BMI-22 standard weight. **Fat pattern**: legs' share of segment fat (≥ 45 % legs/hips, ≤ 32 % belly).
- Physical age (1.1.295-ai): half the gap to the passport, at most ±8 years (stored `pa`) — the medians move
  slowly with age, so a fit 40-year-old alone mapped to "19".
- The fat % itself: see "XEMS model" below (1.1.295-ai).

## XEMS model — sex-aware, steady (1.1.295-ai, `ScaleModel`)
Owner's real exports (03.10.2026) showed: a lean woman (168 cm, 53.3 kg) at **11.9 %** fat, "−14.4 kg muscle /
−12.8 kg fat in 0 days" (someone else's 81 kg weigh-in on her profile), physical age 19 for a 40-year-old. Causes and
fixes:
- **WLA25's fat regression has no sex and no age term** (sacoma `wla25.py` lines 515–536: impedances, height,
  weight, BMI only) → women read ~8–15 points low. Now: fat-free mass by **Sun 2003** (NHANES III, 1 829 adults vs a
  multi-component reference; men FFM = −10.678 + 0.652·H²/R + 0.262·W + 0.015·R, women −9.529 + 0.696·H²/R +
  0.168·W + 0.016·R) over R50 = log-frequency interpolation of 20 / 100 kHz, the two sides' arm + leg averaged, plus
  the trunk (gen A: +3.7 %), × `GEO` 0.8736 (foot-plate / handle → hand-to-foot geometry; calibrated once so that
  Sun = WLA25 = 17.0 % on the owner's vector — geometry is sex-independent). Fat % = mean of the sex-aware
  estimates: Sun, the scale's own value when sent (it uses sex + age); men without it also WLA25.
- **Skeletal muscle** = Janssen 2000 (MRI, 388 adults; sex, age) as a share of the lean. Water 0.733 of the lean
  (steady), protein, bone, segments, visceral by the WLA25 chain from the model's fat. Owner, 40 y: fat 17.0, water
  60.9 %, protein 16.6 %, muscle 63.1 kg, BMR 1830 — Fitdays 17.0 / 60.8 / 16.6 / 63.0 / 1828.
- **Steady**: lean through a Kalman filter over the client's weigh-ins — reading σ 1 kg, tissue drift 0.02 kg²/day,
  a weight change carries lean by its likely share (same day 75 % — water, food; weeks 30 %), a reading > 3 σ off
  counts less, a jump > max(4 kg, 7 %) or a 60-day gap restarts. Sim: ±4 % impedance noise → raw fat 15.8–18.0 %,
  shown 16.6–17.1 %; two steps a minute apart = their mean; −4 kg fat over 8 weeks → lean flat.
- **Wrong person**: a weight > max(4 kg, 7 %) off the last one within 30 days → "Това ли е <име>?" (save / discard).
  Tracking view: the last 4 measurements with ✕ (delete → the rest re-smoothed; the server row goes too,
  `{t, del: true}`).
- **History** keeps raw impedances, so every older weigh-in is rebuilt (`ScaleStore.upgrade`: v < 2, or sex / age /
  height changed) on the scale page, the upload and `AiProfile`; the server gets the rebuilt values again.
- Shared HTML carries the last 10 raw readings (`<script id=xems-raw>`, impedances, sex / age / height) — send one
  with a Fitdays / DXA report to calibrate further.

## State vs trait — why physical age jumped (1.1.300-ai)
Owner: the same client, an hour apart, got two different physical ages. Cause: physical age inverts population
medians that are almost flat — women's ALMI falls ~0.01 kg/m² a year (6.9 → 6.3 over 50 y), men's ~0.03 — so the
0.1–0.15 kg/m² a single step-on's limbs move with food, drink and contact (segmental BIA test-retest; meals lower
impedance for 2–4 h, Slinde 2001) became 4–10 years before the halving. Lean / fat were already Kalman-smoothed,
but ALMI came from **one** step-on's limb impedances (`segMus`). Measured: woman 168 cm / 61 kg, 6 step-ons in 2 h →
per-step age 37.7…41.9; held 40 (`ScaleSim`).
**Rule now (v3)**: two kinds of numbers. **State** (changes in hours, may move every weigh-in): weight, hydration,
ρ = Z100/Z20, readiness. **Trait** (changes in weeks; never from one step-on): fat, lean, muscle, ALMI, physical
age. Traits come only from filtered values: lean (Kalman, above) and the limbs' share of the lean `ash` (own
filter, σ 0.012 per reading, 0.001/√day drift, restarts with the lean's); ALMI = `ash` × smoothed lean / h².
Physical age `pag` is computed from those and **held** until it moves ≥ 2 years (least significant change) and
never within 12 h of the last change (`ScaleModel.trait`). A real change (fat ±5 kg over weeks) still shows.

## One session must be enough — per-value stability (1.1.301-ai)
Owner: accuracy must come from one session, not from a history. How the professional analysers do it: InBody 770
— 30 impedances (5 segments × 6 frequencies) per test, segments measured directly, no age / sex in the equations;
duplicates in one session differ by 0.0–0.2 kg / L, days apart by 0.1–0.7 kg under a strict protocol (07:00, ≥ 10 h
fasted, no hard exercise 48 h; PMC11649400). seca mBCA — equations fitted on a 4-compartment reference (124 + 130
adults). Both rely on (1) a precise sweep, (2) a standard state of the body, (3) equations whose output moves no
more than the input does. None publishes a "body age" from inverted population curves.
Our P1 gives one sweep (2 frequencies × 5 segments) per step-on; `ScaleSession` = 1–3 step-ons, merged by median.
**Sensitivity of every value to one session's disturbances** (fresh profile, no history; `Sens` harness — per-value
SD for ±2 % contact noise per segment, and the shift for a meal +0.8 kg with impedance unchanged, a drink +0.5 kg,
the meal absorbed −2 % limb impedance, z100 −1 %):

| Value | SD per step-on | meal / drink | absorbed | verdict |
|---|---|---|---|---|
| fat % | 0.35–0.38 | +0.4–0.8 / +0.2–0.5 | −0.2…0 | OK; food on the scale reads as fat (all BIA) → protocol |
| lean, muscle kg | 0.22–0.29 | +0.1–0.3 | +0.6–0.8 | OK |
| water / protein / skeletal % | 0.08–0.30 | −0.6…−0.1 | ≤ 0.2 | OK |
| BMR | 5–6 kcal | +2–6 | +13–17 | OK |
| segment muscle | 0.03–0.13 kg | ≤ 0.13 | ≤ 0.35 | OK (WLA25 limbs are mostly lean-driven) |
| ALMI | 0.05 | ≤ 0.05 | 0.12–0.13 | OK as a value |
| **physical age (median inversion, ≤ 1.1.300)** | **1.2 y** | — | **−2.8 y** | **broken: amplifier** |
| physical age (z vs own age group, 1.1.301) | 0.2 y | ≤ 0.13 | ≤ 0.4 | OK |
| visceral grade | 0–0.5 | 0 / +1 near a step | | integer edge, inherent |

**Physical age (1.1.301-ai)**: `ScaleInsight.physicalAge` = passport − 4 years × z, z = ½ z(ALMI) − ½ z(FMI)
against the client's **own age group** — median and IQR / 1.349 by decade (Imboden 2017, DXA, 3 327 adults; FMI on
a log scale), at most ±8 years; no passport → none. Why: within one age, people differ by ~1 kg/m² ALMI while the
median falls 0.01–0.03 kg/m² a year; inverting the medians turned 0.1 kg/m² of noise into years, against the
spread it is 0.1 SD. Owner's P1 report: 29 (Fitdays 29, passport 31). The cross-session hold of 1.1.300 stays.
**Heart (1.1.302-ai)**: with a measured resting HR, physical age has three equal parts — muscle (ALMI), fat (FMI)
and the heart: the client's typical resting HR (`RestHrStore`: prefs `xems_heart` r<userId> = [t, bpm], one per
half hour, median of the last 5 within 120 days; written by the Smart Session's `AiRestHr` via
`AiSession.rememberRestHr` and by the pulse guard's calibration in `HrGuard`) as z against sex and age, NHANES
1999–2008 quartiles (Ostchega 2011, 35 302 adults; men 61/69/76 · 61/68/77 · 60/67/75, women 66/74/82 ·
64/71/79 · 64/70/78 at 20–39 · 40–59 · 60–79; +10 bpm ≈ 1 SD; +10 bpm = +9 % all-cause mortality, Zhang 2016).
Stored on the weigh-in as `rhr`; a resting HR measured after the last weigh-in is stamped into it (`ScaleStore.upgrade`
rebuilds). Shown: "паспорт 40 · пулс 62". Not used, on purpose: **HR under EMS load** — the external work is not
known (no watts), so submaximal-HR fitness tests (Åstrand) do not apply and EMS barely raises HR; **HR recovery** —
validated only after a maximal treadmill test. Medicines that slow the pulse (β-blockers) make the heart read young —
not asked yet. Fat distribution is not used: the scale's trunk fat is ~55 % of total fat by the WLA25 regression
itself, not a measured split.
**Protocol is part of the measurement**: same time, before the session, ≥ 2 h after food, bladder empty, before
training — what the pros enforce; the scale cannot tell a meal on the scale from fat.
Step-ons agree when whole-body R ≤ 3 % and fat ≤ 1.5 points apart (was 2).

## Owner's Fitdays report = test vector (1.1.288-ai)
Lescale P1, 02.10.2026, male 31, 175 cm, 81.4 kg; Z20 / Z100 (Ω) trunk 17.3 / 15.7, LA 252.0 / 215.5, RA 234.0 /
199.5, LL 221.0 / 190.0, RL 232.0 / 200.0 — the P1 sends a **trunk** pair. With Fitdays' body fat (17.8 %) our
WLA25 chain reproduces the report (muscle 62.3, bone 4.5, water 60.2 %, protein 16.4 %, skeletal 47.0 %, BMR 1815,
visceral 4, body age 29, segments within 0.1–0.15 kg). WLA25's own age-free fat regression gives 17.0 % → the
17.8 % comes from an equation with the age in it (the scale's or the app's). `ScaleSim.ownerReport`.

## Figures (1.1.288-ai)
Owner's colour-coded anatomical art (`branding/body/scale/src/{male,female}.png`) → `scripts/gen-scale-figures.py`
→ grey art with full definition + map (R = segment, G = suit channel by colour). Layers: segment colour modulated by
the art's light (muscles stay drawn); **Ток** = per muscle group (channel) by reach.

## Measuring — the stage and the session (1.1.301-ai, owner: "why does it make me step off?")
**One standing = one measurement.** The scale makes one impedance sweep per step-on (~8–10 s after the weight
settles); the 1.1.297 session therefore asked for more step-ons (first measurement, poor contact, far from history,
disagreement) — the owner rejected that, and it also kept the results from appearing ("done" never came). Now:
- `ScaleLink` stays connected after a result while the client stands; every result frame is delivered. A sweep the
  scale sends again with the same impedances (only the weight moved) is a **repeat** (`ScaleSession.same`) — ignored;
  a really new sweep (a scale that re-measures while you stand) is **added** and the merge refines the same stored
  entry (`ScaleStore.save(…, replaceT)` keeps its "t", the server row is overwritten — `INSERT OR REPLACE`).
- **Contact** per sweep (`quality`): all four limbs 120–1200 Ω with 20 → 100 kHz dispersion (ratio 0.70–0.98), left
  vs right ≤ 15 % for arms and for legs, trunk 5–100 Ω when sent; a weight-only result = no handle contact. Shown as
  chips; nothing is demanded. **Merge**: the good sweeps (all if none was good); per segment and frequency the mean
  of two, the median of three or more; weight the mean; `"n"` = sweeps; `spread()` says when two differ (> 3 % R or
  > 2 fat points).
- **Results at once**: the first full sweep → "✓ Готово" with fat and muscle mass → the results fade in after 1.4 s.
  Weight only → the stage stays with what to do ("Мери пак" visible). While the results are open, the client may
  stay on; a refined sweep updates them in place ("✓ Записано · HH:mm · 2 отчитания" on the figure card).
- **Next person**: the page keeps listening. Weight < 5 kg after a result, or the scale dropping the link (it sleeps
  when nobody is on) = the scale is free; the next connection / weight on it opens a new measurement with the stage.
**Stage** (`ScaleStage`): left a dark theatre — the client's figure on the scale by sex
(`branding/body/scale/measure/*-hero.webp`), with **`ScanFx`** drawn over it: waiting = the plate glows where the feet
go; from the link on (the scale only wakes when someone stands on it — gen A sends no "stable" flag and possibly no
live weight, so the 1.1.297 film that waited for "stable" never played) a bright line sweeps the body up and down,
scan lines, the frame pulsing; done = a green flash. All drawn from `SystemClock` with `postInvalidateOnAnimation`
— it moves even with the system animator scale at 0 (which stops every `ValueAnimator`; the steps bar is time-driven
too). The film (`male.mp4` / `female.mp4`, 640 px H.264, looped) plays from the link on; the opaque cover comes off
only with its **first frame on screen** (`onSurfaceTextureUpdated`), so a film that cannot play leaves the drawn scan,
never a black box. Film events go to `WearableBleDiagLog` tag `scale` ("stage film ready / on screen / error"), as do
unknown gen A live frames ("live frame N B: hex"). Right — steps step on · link · weight · analysis · done, the
instruction now (30 sp), the live weight with its settling line into the ±0.1 kg band, the scan ring (~9 s), the
sweep count and the contact chips. Previews (HTML mocks, 1.1.297): `docs/scale/preview-stage-wait.png`,
`docs/scale/preview-stage-scan.png`.

## Scientific basis — "Научна основа" (1.1.298-ai, `ScaleSources`)
Behind the page's ⓘ (button at its foot), the Analysis ⓘ and the footers of Анализ / Обобщение; also a folded
section of the shared HTML. 21 sources in four honest tiers (1.1.302-ai: + NHANES resting pulse, Zhang 2016) — **Проучване** (peer-reviewed: Sun 2003, Janssen 2000,
Gallagher 2000, Schutz 2002, Kelly 2009, Imboden 2017, Wang 1999, Mifflin 1990, Kyle 2004 ESPEN, Kemmler 2016,
Kalman 1960), **Стандарт** (Katch–McArdle, WHO TRS 894), **Производител** (WLA25 zones / bone / visceral, vendor
ranges — no published validation), **XEMS** (readiness thresholds, scale geometry factor, the one-standing session,
healthy weight — how each was derived). Top: 11 studies (the equations and norms come from them) · over 13 000
people measured in those studies (not our database) · DXA / MRI / 4C; "how it is built" in 4 levels (measuring ·
published equations · published norms · XEMS rules); filter chips by tier; a "limits, honestly" note (1.1.299-ai:
no model trained on measurement data; calibration rests on one real measurement; XEMS rules not yet checked with
DXA of clients) (a guide, not a medical test; a few points off DXA for one
person → re-measure, smooth, read the trend). Preview (HTML mock): `docs/scale/preview-science.png`.

## Result page (`ScaleScreen`) — two views
**Portrait too** (1.1.295-ai): the page unlocks rotation while open (restored on close, like the report); the summary
and analysis sheets follow the turn (`ScaleScreen.Columns`).
**One scrolling page, sized for any screen** (1.1.300-ai, owner: "on a big board it is insane", fonts mixed, phone
unreadable): the app runs on AutoSize (design 1280 × 720 dp across the landscape width), so upright the page was again
1280 dp wide — everything at ~45 %, and only the cards rebuilt after the turn shrank. `ScaleScreen.Dens` holds the
landscape dp while the page is open (re-set on every turn) → upright ≈ 600–800 dp wide, same text size as across.
Nothing is tied to the screen height any more: the figure card first, then the view's cards — **wide (≥ 960 dp)**
two by two, **narrow** one column; the bar splits into switch / Анализ·Обобщение / chips lines when narrow. Today =
figure card · one key card (4 numbers, readiness — the dial only with a verdict, before that one line "from the second
measurement" — body type) · zones · current per channel. Drawn text follows the system font size (`ScaleViews.sp`,
×1.12, font scale capped 1.3).
**Nothing cut, plain wording** (1.1.302-ai, owner: labels and blocks cut on some devices / after a turn; wording
unprofessional, "in development", odd Bulgarian): `Columns.apply` gives columns a **minimum** height (screen high in
landscape, `tallDp` upright) instead of a fixed one — content taller than the screen grows and the page scrolls
(the stage theatre alone keeps a set height: its picture would ask for its pixel size); every drawn label goes
through `ScaleViews.drawFit` (shrunk to its column / band, kept inside the view; long channel names on two lines);
explanation popups via `ScaleScreen.pop` (screen-wide at most, above or below the anchor, scrolling inside); the
analysis tiles go two a line on narrow screens; readiness reasons one per line; the analysis focus status on its own
line; the sources' filter chips scroll sideways. Copy: one register — standard terms (измерване, мускулна маса,
телосложение, сегментен анализ, възраст на тялото, проводимост по канали), polite form for the client on the stage
("Стъпете боси на кантара"), one short sentence per ⓘ, no "not yet checked / for now / our rule / honestly" in the
UI (the honest limits live in `docs/xems-scale-audit.md`; the sources sheet says "Точност" in three sentences).
**No "is this X?"** (1.1.300-ai): the page is the client's, so a measurement made on it is theirs; a wrong one is
removed in Tracking (✕).
**Анализ** (1.1.296-ai, `ScaleAnalysis`; Fitdays' list of values = the checklist, not the design): left — what the
weight is made of (fat · water · protein · minerals, one bar, tap a part), the figure painted by zone status (fat or
muscle by the focus; tap a zone), the way to the client's own healthy weight (track, now → healthy, fat − / muscle +);
middle — 13 tiles in 4 groups (fat · muscle · water and frame · body and energy): value, ▲▼ since last time coloured
by the good direction, status word, mini 5-sector norm (the word always = the lit sector, `ScaleDetail.metrics`);
right — the focus of whatever was tapped: big value + status, the full norm bar, what it means / what moves it, its
line through all weigh-ins with the change since last and since the first; a zone shows muscle and fat against
their standard and left vs right. Opens on the value that needs attention first (`focusOf`). The shared HTML has the
same composition bar and tiles (tap a tile = its explanation, `<details>`). Previews (HTML mocks, not device
screenshots): `docs/scale/preview-analysis.png`, `docs/scale/preview-detail-share.png`.

**Днес** (this measurement) | **Проследяване** (from: last time / 3 back / the first → now: figure by change per
segment, big trend of one metric, radar then vs now, from → to table, **change since the start**: muscle and fat
as kg from one dashed start line + "+0.6 кг мускули · −2.2 кг мазнини"). Day view: **body type as two band scales**
(muscle low · normal · athletic · very; fat very low · normal · excess · obese — from FFMI / FMI, no kg/m² on
screen; tick = last time). The FFMI × FMI scatter ("path of the body") was dropped in 1.1.289-ai: unclear to clients. Previews (HTML mocks from the real Java numbers, not device screenshots):
`docs/scale/preview-today.png`, `docs/scale/preview-tracking.png`.
**Обобщение и препоръки** (1.1.291-ai, button in the top bar → `ScaleScreen.showSummary`): profile (body type,
sex · age · height · weight, physical age vs passport, the figure by muscle), the five key values on their norm bars
(fat, muscle, water, visceral, BMI "weight only"), and the recommendations from `ScaleInsight.advice` — rules only
(no LLM): today's readiness, water, fat to normal (kg), low muscle (strength EMS + 1.6 g/kg protein), athletic
("BMI misleads"), visceral ≥ 10, the weakest zone (< 90 %), L/R ≥ 6 %, the channel the current reaches least, the
trend (recomposition / fat up / muscle down). Sorted by urgency, tagged ДНЕС · EMS · ТЯЛО · НАВИК, coloured by tone.
An LLM (the aidiet backend's Gemini) would only make sense later for free text (a letter to the client), never for
the numbers. Preview: `docs/scale/preview-summary.png`.

**ⓘ on every card and tile** (1.1.290-ai, `ScaleScreen.cardInfo`): what the value means in plain words + the value
on a **5-sector norm bar** (`ScaleViews.NormBar`, `ScaleInsight.*Norm`: far below · below · norm · above · far above,
coloured by what the direction means) with the client's marker and the source: fat % by sex/age (Gallagher 2000),
muscle FFMI (Schutz 2002, Kelly 2009), water %, physical age vs passport (±3 y), visceral (WLA25), BMI (WHO, with the
"weight is not fat" caveat), zone muscle % of normal (90–110), readiness. Preview: `docs/scale/preview-info.png`.
Landscape, three columns: (1) weight live + what to do now; figure front/back painted in the chosen layer
(Мускули / Мазнини / Възстановяване); (2) readiness gauge + verdict + reason chips; radar of the 5 segments
(100 = normal, normal band 90–110, dashed = last time), the tapped segment's numbers or the L/R balance;
(3) fat / muscle / water / visceral tiles with change + sparkline (tap = big trend), the current's reach per
channel. Segment maps: `scripts/gen-scale-segments.py` → `branding/body/*-seg.webp`.

Test: `bash scripts/scale-sim/run.sh` — 121 checks against the published captures and expected values
(sacoma DISPLAY/EXACT/PROFILES = Fitdays; Fitman A7 frame + formulas). Generation is chosen by FFB4.
First real run: check `WearableBleDiagLog` tag `scale` (found / gen / result) if anything stalls.

## What the hardware is
- Lescale P1: 8 electrodes (4 foot + 4 handle), 5 segments, app **Fitdays** ⇒ **ICOMON (Chipsea
  BIA chip)** platform. Not Qingniu/Yolanda: the `FFE0/FFE1/FFE2` + `FD 33…` spec and the
  `FFB2 0x10/0x20/0x30/0x40` packet tables circulated online are unverified/generated — ignore.
- Measures **|Z| only** (no reactance) at **2 frequencies, 20 kHz and 100 kHz**, per limb
  ⇒ 8 usable limb impedances. Gen A: **trunk bytes are not a usable impedance** (Fitman #320) — the
  scale sends its own fat %; gen B sends a trunk pair that WLA25's fat regression uses.
  So: no true phase angle; Z100/Z20 per limb is available (ECW/TBW-like index).
- Protocol is **plaintext** over service `FFB0` (XXTEA/DH in the vendor lib belongs to other
  protocol versions).

## Two verified open-source decoders (both MIT — portable to Java)
| | Fitman (`DaveNijhuis/Fitman`, `SCALE.md`, `backend/scale/`) | sacoma-lib (`ynsgnr/sacoma-lib`, `docs/protocol.md`) |
|---|---|---|
| Device | e.volve = iCOMON FG2305ULB | SACOMA Ultra |
| Chars | FFB1 write, FFB2 notify live, FFB3 indicate frames, FFB4 name image | FFB1 write, FFB2 notify live, FFB3 notify result |
| Frame | `[seq u16 LE][len u16 LE][type][payload][sum&0x1F]` | 20 B: `[seq][len][frag][16 B payload][sum(payload)&0x1F]` |
| Handshake | `AA`→`B0`, `BE` guest, `BF` profile, `BE` user, `BD`, `BC`; `A7`→`B0` | sustained `BA` heartbeat ~0.4 s + `BB` users + `BD 09`, `B0` ack each `A0/A3` |
| Live weight | FFB2, 12 B | `A2`: [4-5] u16 BE /1000 kg, [1] 01 live / 03 stable |
| Result | `A7` 43 B: [16-23] 4×Z20, [26-33] 4×Z100, int16 LE /10 Ω (LA, RA, RL, LL); [40-41] scale's fat % /10 | `A3`: [3-4] weight /1000, [6..] 10×u16 BE /10 Ω |
| Algorithm | WLA25 chain (Fitdays' own) from FFM — 44/50 values = Fitdays exactly; limbs ±0.1 kg | WLA25 port (`wla25.py`) |

Same family, two protocol generations ⇒ implement both, **auto-detect** by characteristic set
(FFB4 present / first frame type `AA` vs `A0/A2`). Confirm on the real P1 once (nRF Connect:
name, FFB1–FFB4, first frames) or by an HCI snoop of one Fitdays weigh-in.

Notes from those projects:
- The scale computes body fat itself from the profile sent in the handshake (height, age, sex,
  user id). Everything else is derived from FFM. We can also compute from the raw impedances.
- Repeats a minute apart reuse the same impedance reading (only weight changes).
- Without the handshake the scale shows `--` for composition; weight still streams.

## Measuring protocol (owner: no suit, thin clothes)
- Clothes don't matter; **bare feet + bare hands** on electrodes do. Weight: subtract ~0.3–0.5 kg
  for clothes (one fixed setting).
- Measure **before** the EMS session: after the session sweat/fluid shift lowers Z ⇒ fat %
  reads falsely low. Same time of day, ≥2 h after a meal, before training — trends only valid
  under the same conditions.
- The scale is one more BLE link: measure before the suit connects (see `EmsBleCoexist`).

## Validation path
Existing Fitdays history on the owner's phone = reference: decode the same weigh-in ourselves
and compare with the Fitdays report (target: Fitman's level — exact/±0.1). History import is
possible via the unofficial Fitdays cloud client (`AboveColin/fitdays`) — optional, fragile.

## Gemini / LLM
Not for numbers (non-deterministic, unverifiable). Optional later: short text interpretation of
the trend + sessions, through the license Worker (no key on the tablet), with client consent
(health data leaves the device).

## Licences of the ported code
`ScaleProtocol` / `ScaleBody` port MIT-licensed code; their notices apply to those parts:
- sacoma-lib — MIT License, Copyright (c) 2026 Yunus Gungor (github.com/ynsgnr/sacoma-lib)
- Fitman — MIT License, Copyright (c) 2026 Dave Nijhuis (github.com/DaveNijhuis/Fitman)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright
notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED.
