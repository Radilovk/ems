# Body-composition scale (Lepulse Lescale P1) — direct BLE, no Fitdays

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
| `ScaleSession` | Pure (1.1.297-ai): one measurement = 1–3 step-ons; contact quality per step, when to ask another, the merge (see "Measuring") |
| `ScaleStage` | The measuring stage (1.1.297-ai): figure / scan film, 5 steps, instruction, live weight settling, scan ring, step-on count and contact chips |
| `ScaleAnalysis` | The "Анализ" sheet (1.1.296-ai): composition bar · zone figure · way to healthy weight | 13 tiles | focus with norm, meaning and history |
| `ScaleLink` | Android BLE: scan (saved MAC / FFB0 in advert / scale-like name), connect, CCCDs, one-op-at-a-time queue, gen A handshake or gen B 0.4 s heartbeat + acks, result → close |
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

## Measuring — the stage and the session (1.1.297-ai)
**Why**: the scale makes **one** impedance sweep per step-on (~8–10 s after the weight settles; repeats on the same
step reuse it), so "several measurements, the bad ones out" = several step-ons, and only when they add something.
`ScaleSession` decides by itself:
- **Contact** per step (`quality`): all four limbs 120–1200 Ω with 20 → 100 kHz dispersion (ratio 0.70–0.98), left
  vs right ≤ 15 % for arms and for legs, trunk 5–100 Ω when sent; a weight-only result = no handle contact.
- Another step when: poor contact (`NEED_CONTACT`, with the fix: palms on the metal / dry bare feet, heels back);
  the client's **first** full measurement (`NEED_BASELINE` — two set the starting point); a good reading > 3 σ from
  the client's filter (`NEED_CONFIRM` — the body does not change that fast); two good ones apart by > 3 % whole-body
  resistance or > 2 fat points (`NEED_DISAGREE` → a third). At most 3.
- **Merge**: the good steps only (all if none was good); per segment and frequency the mean of two, the median of
  three; weight the mean; stored once with `"n"` = steps. Then the usual model + Kalman smoothing.
**Stage** (`ScaleStage`, shown when the page opens and whenever someone steps on while the results are open; "Резултати ›"
skips to them): left a dark theatre — the client's figure on the scale by sex (`branding/body/scale/measure/*-hero.webp`,
owner's art, black → alpha) breathing while waiting, the scan film (`male.mp4` / `female.mp4`, owner's clips → 640 px
H.264, no sound, ~480 KB, looped, starts from 0 when the weight settles) while the scale sweeps; right — steps
link · step on · steady · scan · done (current pulsing), the instruction now (30 sp) with one line why, the live
weight with its settling line into the ±0.1 kg band, the scan ring (~9 s, seconds left), "● ○ стъпване 1 от 2" and
the contact chips (✓ Ръце · ✓ Крака · ✓ Тяло / ! …); between steps "Слез за момент" → "Стъпи пак" (the link is
reopened by itself); at the end "✓ Готово" with fat and muscle, then the results fade in. Previews (HTML mocks):
`docs/scale/preview-stage-wait.png`, `docs/scale/preview-stage-scan.png`.

## Result page (`ScaleScreen`) — two views
**Portrait too** (1.1.295-ai): the page unlocks rotation while open (restored on close, like the report); landscape =
three columns one screen high, portrait = the same cards stacked (the page scrolls, comparison chips on their own
line); the summary and analysis sheets follow the turn (`ScaleScreen.Columns`).
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
