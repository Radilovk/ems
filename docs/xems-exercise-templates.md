# Exercise templates in the automatic mode

Active automatic programs (general, glutes, core, power, cardio, back_active, senior) show **which exercise to do now**,
as a moving figure and a big name on the hint card, plus "Следва: …" 20 s before the change. The device parameters
(Hz, µs, strength, pulse) stay with AutoPlanner/AutoEngine; templates only choose exercises. The client is never asked.

## Data
- `branding/exercises/exercises.json` — 40 exercises picked by the owner (source: bryllim/workout-guide, CC BY-SA):
  id, bg/en name, muscle, equipment, how-to, position (stand / machine / bench / floor), viewBox and 1–3 frames.
  Frame 0 = working pose, last frame = rest pose; plank and cardio machine have one frame (static).
  Paths are normalized to absolute M/L/C/Z by `scripts/exercise-paths.py` (drawn by `android.graphics.Path`).
- `branding/exercises/programs.json` — stations per program × level 1–3 (power has no level 1), state swaps
  (`avoid.<state>.no/yes`), focus-zone stations (`focusEx`), passive program data (not used by the app yet).
- `scripts/gen-exercises.py` → `ai/AutoTemplateData.java` (generated, commit it). Run after editing either JSON.
- `scripts/apply-exercise-assets.py` ships the JSON as `assets/xems/exercises.json` and fails if the Java data is stale.

## Logic (`ai/AutoTemplates`)
- **Level:** first active sessions (sessions < 3 or never active) → 1; no history of this program → fitness level,
  at most 2 before 10 sessions; with history → last level, −1 after a bad session (done < 70 %, strength cut ≥ 15 %
  or pulse on the ceiling), +1 after three good ones (done ≥ 90 %, cut < 10 %, pulse below the ceiling).
  Sensitive / stress / sleep → −1. Senior, osteoporosis, after birth → at most 2.
- **States:** form conditions + diastasis + after birth (female, weeks since birth > 0); BMI ≥ 30, 60+ and the
  senior program count as `joints` (no impact). Each state removes its exercises and puts the first allowed swap in.
- **Focus:** each chosen zone adds one station (max two); breastfeeding drops chest; desk work with no focus → back +
  glutes. Stations are sorted stand → machine → bench → floor (not in power/cardio) so the client is not up and down.
- **Warm-up:** two light moves not repeated in the main part (jumping jack / forward lunge only from level 2).
- **Time:** MAIN / METABOLIC phases split evenly between stations; the station is read at the start of the running
  cycle, so it changes on a cycle boundary only.
- **History:** `AutoHistory.remember/outcomes` (prefs `xems_auto_templates`, key `o<userId>|<program>`, last 3).
  AutoSession writes it at the end: level, worked share, the client's lowest strength share, pulse cap hits.

## UI (`ai/AutoHints`, `ai/ExerciseFigure`)
Figure 150×112 dp in the hint card's middle row, cyan with a fine glow; ON → working pose, OFF → rest pose
(smoothstep over 55 % of the phase). Hidden when hints are off or the program has no template (passive).

## Energy, load and muscle map
The exercise done each second is recorded (`SessionRec.ex` = index + 1, `exs` = {id, met, mus} of those that ran),
so the tablet report, the client's copy (server) and the band use the same data. Estimates, marked [D] in code:
- **kcal:** the movement's own oxygen cost (MET − 1) · 3.5 ml/kg/min — full in the impulse, 30 % in the pause —
  is added to the current's branch; the result is still max(pulse branch, current + movement), so with a pulse the
  pulse decides whenever it is higher. Live: `AiEnergy.exerciseMet` (set by AutoSession each second). Report: `vx`.
- **Load and zones without a pulse:** a stand-in heart = (current + movement) / VO2 reserve, smoothed with τ 30 s
  (the heart's lag); load uses max(old, 0.55·S + 0.45·stand-in). With a pulse the measured pulse is used.
- **Muscle map:** each exercise's muscles (`mus`, 100 = main) add `EX_LOAD` 0.25 of a full channel in the impulse,
  30 % of it in the pause (`SessionRec.EXERCISE_LOAD` 25 for the band/card figure). MET/muscles live in
  `branding/exercises/exercises.json` (`met`, `mus`) → `AutoTemplateData.MET/MUS`.

## Tests
`bash scripts/ai-sim/run-auto.sh` → `TemplateSim`: every active program × states × focus × sessions × fitness × sex ×
history: a script exists, level rules, no forbidden exercise, no repeat within a phase, a station lasts ≥ 3 cycles,
`at()` walks stations in order.

## Not yet
AI session (same stations, stay on the easier one when tired), exercise name on the band, program pictures
(passive/active by sex), "cardio machine available" flag.
