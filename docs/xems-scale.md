# Body-composition scale (Lepulse Lescale P1) — direct BLE, no Fitdays

Status: implemented in 1.1.285-ai (`wearable/scale/`), tested offline only — **not yet on the real P1**.
The tablet reads the scale itself, stores the measurement per client on the tablet (server sync to
`(license_id, cid)`, see `xems-client-sync.md`, is the next step) and a fresh measurement replaces the
Deurenberg body-fat estimate in `AutoEngine.fatPct()` (and the record's weight in `AiProfile`).

## Code (`branding/java/src/com/isaigu/gymapp/wearable/scale/`, compile:wearable)
| Class | What |
|---|---|
| `ScaleProtocol` | Pure: frames, handshake and decode of both generations; `Reading` (weight, scale fat %, Z20/Z100 by segment 0 trunk · 1 LA · 2 RA · 3 LL · 4 RL) |
| `ScaleBody` | Pure: WLA25 (float32 + half-up rounding as the vendor binary) → fat, muscle, water, visceral, BMR, body age, 5 segments |
| `ScaleLink` | Android BLE: scan (saved MAC / FFB0 in advert / scale-like name), connect, CCCDs, one-op-at-a-time queue, gen A handshake or gen B 0.4 s heartbeat + acks, result → close |
| `ScaleStore` | prefs `xems_scale`: `m<userId>` JSON array (raw impedances kept), `mac`, `h<userId>` height fallback; `freshFatPct/freshWeight` (60 days) |
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

## Body type, physical age — what the fitness apps get wrong (1.1.287-ai)
Measured on WLA25 itself (sacoma port): same impedances, +10 kg → +9 % fat (its BMI / weight terms count weight
as fat → muscular men "fat / overweight"); "body age" = entered age + a fat-% band offset (25 / 45 / 65 → 22 / 42 /
62 for the same body). `ScaleInsight.body` adds a layer that does not carry those biases:
- **FFMI / FMI** (kg/m²) classify: muscle low / normal / athletic / very (men 17 · 20 · 23, women 14 · 17 · 19.5),
  fat very low only below essential fat (men 6 %, women 14 %), excess / obese by FMI (men 6 / 9, women 9 / 13).
  Types: athletic ("the weight is muscle"), balanced, strong with excess fat, excess fat / obese, fat with little
  muscle, slim with little muscle, very lean.
- **Physical age**: the age whose typical SMI (on WLA25's muscle scale: men 11.4 kg/m² at 30, −0.04/yr; women 9.0,
  −0.03) and fat % (men 17 % at 20, +0.225/yr; women 27 %, +0.25) match — 0.55 / 0.45. Entered age not used. [D]
- **Fat layer per zone** = the zone's own fat share against the healthy middle (men 15 %, women 25 %), not
  against a BMI-22 standard weight. **Fat pattern**: legs' share of segment fat (≥ 45 % legs/hips, ≤ 32 % belly).
- Still open: the fat % number itself (WLA25 / the scale) keeps its weight term — fixing that needs reference
  measurements (DEXA / calipers) for a studio-calibrated impedance-index model.

## Result page (`ScaleScreen`)
Preview (HTML mock rendered from the real Java numbers, not a device screenshot): `docs/scale/result-page-preview.png`.
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
