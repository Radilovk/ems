# Exercise templates — Auto shows an example, the Smart Session (AI) follows them

## Mode definitions (owner's decision, 1.1.250-ai)
| | **Auto** | **AI (Smart Session)** |
|---|---|---|
| What it is | a ready program fitted to the profile, run as planned | a live session re-tuned by pulse and fatigue |
| Who leads | the program and its limits; the trainer sets strength inside them | the system (pulse, fatigue, the client's signals) |
| Pulse | optional (required only by cardio) | required |
| Clients | group: one program for all rows | one client (the leader) |
| Exercises | **sets** (1.1.270): one exercise per 30–40 s set, automatic pause after it, ▶ to go on, "Следва" in the rest; figure at its own tempo | **part of the plan**: station per block / cycle, easier when tired, "Следва" |
| kcal / load / zones | current + pulse only | current + exercise + pulse (the pulse wins when higher) |
| Level of exercises | from the profile, no history | profile + history of this program |

Why: in AI the pulse is required, so it confirms the movement is really done; in Auto nothing confirms it, and
a group session would force the leader's exercises on everyone.

## Data
- `branding/exercises/exercises.json` — 48 built-in exercises (40 picked by the owner + 8 upper-body ones for the men's
  programs, 1.1.260) (source: bryllim/workout-guide, CC BY-SA):
  id, bg/en name, muscle, equipment, how-to, position (stand / machine / bench / floor), viewBox and 1–3 frames.
  Frame 0 = working pose, last frame = rest pose; plank and cardio machine have one frame (static).
  Paths are normalized to absolute M/L/C/Z by `scripts/exercise-paths.py` (drawn by `android.graphics.Path`).
- `branding/exercises/programs.json` — stations per program × level 1–3 (power has no level 1), state swaps
  (`avoid.<state>.no/yes`), focus-zone stations (`focusEx`), passive program data (not used by the app yet).
- `scripts/gen-exercises.py` → `ai/AutoTemplateData.java` (generated, commit it). Run after editing either JSON.
- `scripts/apply-exercise-assets.py` ships the JSON as `assets/xems/exercises.json` and fails if the Java data is stale.
- Even line weight: ~200 source frames (mostly the middle one) are traced much bolder than the rest.
  `scripts/exercise-line-width.py` (numpy, scipy, Pillow, potracer) measures every frame; bolder than 4.9 units →
  skeleton + keep what lies within 2.2 of it (thick strokes down to 4.4, thin ones untouched, so no line breaks;
  a plain erosion cut the fine strokes) → potrace back to M/L/C/Z. Built-in frames are replaced in `exercises.json`;
  library frames go to `branding/exercises/fixed/<id>-<n>.svg` (listed in `library.json` `fixed`, packed into
  `assets/xems/frames-fix.json`, applied by `ExerciseLibrary.cachedFigure`; the admin page loads them from jsDelivr
  `Radilovk/ems@main`).

## Logic (`ai/AutoTemplates`, pure Java)
- **Program (AI):** `programForAi` — fat burning → cardio; 65+ → senior; otherwise general (focus zones add stations).
  Passive goals: no exercises. Auto uses its own program id.
- **Level:** first active sessions (sessions < 3 or never active) → 1; no history of this program → fitness level,
  at most 2 before 10 sessions; with history (AI only) → last level, −1 after a bad session (done < 70 %, strength
  cut ≥ 15 % or an HR pause), +1 after three good ones (done ≥ 90 %, cut < 10 %, no HR pause).
  Sensitive / stress / sleep → −1. Senior, osteoporosis, after birth → at most 2.
- **States:** form conditions + diastasis + after birth; BMI ≥ 30, 60+ and the senior program count as `joints`
  (no impact). Each state removes its exercises and puts the first allowed swap in (`Script.avoid` keeps the set).
- **Focus:** each chosen zone adds one station (max two); breastfeeding drops chest; desk work with no focus → back +
  glutes. Stations are sorted stand → machine → bench → floor (not in power/cardio).
- **Warm-up:** two light moves not repeated in the main part (jumping jack / forward lunge only from level 2).
- **Cardio machine:** the AI plan screen asks "Има ли кардио тренажор в залата?" (Има / Няма) only when the
  program's stations use it (cardio); kept per tablet (`AutoHistory.cardioMachine`, prefs `xems_auto_templates`
  key `machine`, default yes) and applied to Auto examples too. None → the machine station gets the first allowed
  stand-in (jumping jack, step-down, lateral lunge, squat, … knee-safe ones last); the station count stays.
- **Easier (`easier`)**: same main muscle, next lower MET, allowed by the states, same position if possible.

## Smart Session (`ai/AiExercises`, driven by `AiSession`)
- Fatigue-driven phases: one exercise per work block (block count in the phase mod stations); the rest card and the
  band show "Следва / след: …". Continuous phases: stations split the phase time, read at each cycle start.
- The exercise changes only in `onCycle` (cycle start). Tired = fatigue ≥ 85 % of its limit, or pulse above the
  corridor, or the client took strength down → easier exercise for this station, sticky until the next station.
- Outcome at the end → `AutoHistory.remember` (prefs `xems_auto_templates`, key `o<userId>|<program>`, last 3).
- UI: `AiUi.screenRun` column 1 — figure + exercise name first (24 sp), then the phase; in the rest the next one.
- **Not synced to the impulse (owner, 1.1.269):** the client does the exercise at their own pace. Every figure (AI
  screen, Auto hint card, map card) runs its own calm 2 s / 2 s tempo; no impulse / pause cue ("стегни", "дишай"),
  no countdown, no repetition counter on screen (sets and blocks still advance inside the engine). The Auto and map
  cards float: one finger moves them, two fingers size them 60–180 % (`ai/FloatCard`, kept per card).
- Band: `BandRemote` state `ex` (now) / `exn` (next, in the rest) → `pages/ai` label under the time, home card.

## Auto (`AutoHints`)
Figure 140×104 dp beside the exercise name (21 sp) in the hint card, own 2 s / 2 s tempo. Owner (1.1.270): the
exercises run as **sets** — one exercise per 30–40 s of work (`AutoEngine` stations), then an automatic pause; the card
shows "Следва: …" and the ▶ key (docs/xems-auto-mode-spec.md §11). The list of the phase is walked in order, set by set.
Phases without sets (none today) keep the 12 s rotating example. Still no record, no kcal, no history.

## Energy, load and muscle map
Smart Session only. The exercise done each second is recorded (`SessionRec.ex` = index + 1, `exs` = {id, met, mus}),
so the tablet report, the client's copy (server) and the band use the same data. Estimates, marked [D] in code:
- **kcal:** the movement's own oxygen cost (MET − 1) · 3.5 ml/kg/min — full in the impulse, 30 % in the pause —
  is added to the current's branch; the result is still max(pulse branch, current + movement), so with a pulse the
  pulse decides whenever it is higher. Live: `AiEnergy.exerciseMet` (set by AiSession each tick). Report: `vx`.
- **Load and zones without a pulse:** a stand-in heart = (current + movement) / VO2 reserve, smoothed with τ 30 s
  (the heart's lag); load uses max(old, 0.55·S + 0.45·stand-in). With a pulse the measured pulse is used.
- **Muscle map:** each exercise's muscles (`mus`, 100 = main) add `EX_LOAD` 0.25 of a full channel in the impulse,
  30 % of it in the pause (`SessionRec.EXERCISE_LOAD` 25 for the band/card figure). MET/muscles live in
  `branding/exercises/exercises.json` (`met`, `mus`) → `AutoTemplateData.MET/MUS`.

## Program pictures (`ai/ProgramArt`)
Sources: `branding/programs/src/*.webp` (full resolution, transparent; the women's set cut from the owner's 13-pose
sheet, black → alpha). `scripts/gen-program-art.py` makes `branding/programs/<key>@<w>.webp` at the exact pixel size of a
128×96 dp tile for densities 1.5 / 2 / 2.5 / 3 (192 / 256 / 320 / 384 px): tight crop, 90 % fill, linear-light
premultiplied downscale mixed with a max-pooled copy (line-preserving — thin neon lines keep a bright pixel instead of
averaging into the dark), light unsharp mask. `--compare out.png` shows plain Lanczos vs this. The app loads the
smallest width ≥ the tile's px (no density scaling, mipmaps on), always on a dark rounded tile (#12141A), both themes.
Shown on the Auto program cards (128×96 dp) and the AI plan screen (160×120 dp).
Key = program × sex: women — general f-squat, glutes/postpartum f-bridge, core f-plank, power f-pushup, cardio
f-climber, back f-lateral, senior f-curl; men — glutes/cardio m-lunge, core/power/back m-pushup, else m-squat;
passive — passive-m, or passive-f-music (drain, recovery) / passive-f-line. Unused yet: f-lunge, f-bicycle,
f-legraise, f-twist, f-dip, f-tricep.

## Figure colour
`ExerciseFigure.colorFor(sex)`: men cyan #22E3FF, women magenta #FF3BD4 (AI: the session's client; Auto: the lead row).

## Tests
`bash scripts/ai-sim/run-auto.sh` → `TemplateSim` (every program × states × focus × sessions × fitness × sex × history:
levels, no forbidden exercise, no repeats, stations ≥ 3 cycles, MET/muscle table) and `AiExSim` (288 whole Smart
Sessions on the real AiEngine with a synthetic pulse: exercise never changes mid-cycle, never forbidden, every rest
announces the next one, several exercises per session, passive goals have none).

## Not yet
Pictures on the client card / PWA.
