# Face — facial muscle stimulation (owner, 2026-11-06, 1.1.496-ai)

Cosmetic NMES of the cheek muscles (zygomaticus major/minor): tone and lift of the mid-face. Two devices:
the **XEMS suit** (Auto → Пасивна → Стягане → "Лице", face pads on the **arm outputs**) and **Bluetens**
(page Bluetens → "Лице", one pad per side). Microcurrent (µA) is out of reach of both — this is NMES only.

## Evidence it stands on
| Source | What it gives |
|---|---|
| Kavanagh et al. 2012 (RCT, 108 women, 43.7 y; Slendertone Face) | 20 min/day, 5 d/week, 12 weeks → zygomaticus major thickness +18.6 % (ultrasound); > 80 % report firmer / lifted |
| Slendertone Face manual (technical table) | symmetric biphasic rectangular, 70–80 Hz, 80–100 µs per phase, 20 min, ≤ 5/week, ≥ 24 h apart |
| Efthimiou et al. 2024 (systematic review, facial NMES) | 50–70 Hz (50–100 studied), biphasic symmetric, 10–100 µs per phase, Ag/AgCl ≈ 3 cm² pads, ≤ 2 mA/cm² RMS |

The 3 s : 6 s impulse/pause is **ours** (face muscles are fast, fatigable fibres → pause ≥ 2× impulse); the
Slendertone duty cycle is not published.

## The protocol (both devices)
| Part | Time | Hz | µs | Impulse : pause |
|---|---|---|---|---|
| Warm-up | 2 min | 6 | 100 | single twitches |
| Lift | rest of the time | 70 | 100 | 3 s (0.4–0.5 s rise / fall) : 6 s |
| Relax | 2 min | 4 | 100 | single twitches |

Course: first 2 weeks 10–12 min 3×/week, then 20 min 5×/week, 12 weeks, ≥ 24 h apart (the 4-day whole-body rule
does not apply: tiny muscle mass). Strength: **by sight** — raise until the mouth corner lifts, stay at that
threshold or just above, never pain.

## Placement — the one rule that matters
- Each pair **on one side**: in front of the ear at cheekbone level (facial nerve branches) + mid-cheek under the
  cheekbone. **Never cheek to cheek** (current across the head) → two independent outputs (left / right).
- ≥ 2 cm from the orbital rim; nothing on the front of the neck, lips or inside the mouth.
- Pads ≈ 3 cm² (16 × 19 mm Ag/AgCl class), **not** the suit's wet body pads.
- RMS at 70 Hz, 2 × 100 µs = 1.4 % duty → I_rms = 0.118 · I_peak; 20 mA peak on 3 cm² = 0.8 mA/cm².
  The peak a face needs on these units is **not measured yet** (see "Open").

## XEMS suit — Auto "Лице" (`ai/AutoCatalog.FACE`)
- Passive program, goal Стягане (TONE), level 1 (green). Zones: only `ARMS` = 100 %; `AutoPlanner` sets every
  other channel to 0 **and locks it** (`zoneLocked`, the trainer cannot raise it) and notes it on the plan.
- Face pads hang on the arm cables: left arm → left cheek pair, right arm → right cheek pair. The arms channel is
  one strength for both sides (asymmetry: place the pads the same on both sides).
- The arms divider (`ChannelStrengthScale`, D at 400 µs, D/2 at 150 µs, linear) is **÷4 at 100 µs** with the
  default D = 10 → the face gets a quarter of the byte. **Licence `arms_full` switches the divider off** — do not
  run the face on such a tablet without lowering the start.
- 100 µs: Auto's own floor is 150 µs (`AutoLimits.PW_MIN`); `AutoLimits.pwMin(plan)` gives the face
  `AutoCatalog.FACE_PW` = 100. Active part 18 min (`baseSeconds`; the first passive session ≤ 15 min), recovery
  **2 min** (`AutoCatalog.recoveryS`, the body's is 10). No Hz / µs window (fixed program), smart impulse GENTLE.
- **Not a map**: `Workout.presets` skips FACE — a map run (MapRunner) has no channel lock, so 70 Hz would go to
  every channel the suit has.
- Tests: `bash scripts/ai-sim/run-auto.sh` — AutoSim `face()` (only arms carries current, every step and every
  engine command ≤ 100 µs, 70 Hz 3 : ≥ 6, recovery 2 min) + the full runs / cues / classifiers of every program;
  AiExSim: face is never a map.

## Bluetens — "Лице" (`wearable/bluetens/BluetensPrograms.FACE`, file `XFAC<min>`)
- Rise 50 → 65 → 80 → 90 µs (0.1 s each), 70 Hz · 100 µs 2.5 s, the same fall, then 6 s silence; 6 Hz in,
  4 Hz out (2 min each). Default 10 min (the picker has 10 / 15 / 20 / 30). ⓘ carries placement and the course.
- One Bluetens = one side; the page drives several pads at once → two pads, each its own strength.
- Test: `bash scripts/bluetens/run.sh` (limits, length, round trip of every minute).

## Open
1. Strength → mA table for both units (0.5–1 kΩ load, USB scope at 100 µs) → a hard cap for the face.
2. Whether a unit's "µs" is one phase or the whole biphasic pulse (the scope shows it).
3. Face pads with a connector for the arm cable / the Bluetens snap.
