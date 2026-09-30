# Workouts ("Тренировки") and the exercise library

Main menu → **Тренировки** (`ai/WorkoutsUi`): the ready programs and the studio's own workouts. Build one by tapping
exercises, set sets × repetitions, drag ≡ to reorder, tie it to a goal (Стягане / Отслабване + focus zones), then
**▶ Старт с AI** — the Smart Session runs it. Auto mode only shows exercises as an example (docs/xems-exercise-templates.md).

## The library (302 exercises)
- Source: `branding/exercises/library-src.json` (names BG/EN, steps, target/secondary muscle, equipment, pattern,
  viewBox, frame count; from bryllim/workout-guide, CC BY-SA). `scripts/gen-exercise-library.py` → `library.json`
  (+ position, MET estimate by pattern, suit-channel weights, picker zone, built-in flag) → `assets/xems/library.json`.
- The 40 built-in exercises ship their frames (`exercises.json`); the others are **downloaded when the admin enables
  them**: frames from the pinned jsDelivr copy, normalized on the tablet by `ai/PathNorm` (Java port of
  `scripts/exercise-paths.py`, checked by `scripts/ai-sim/PathNormSim.java`), kept in `files/xems_ex/<id>.json`.
- `ai/ExerciseLibrary`: loads the library, registers every exercise in `AutoTemplates` (name, position, MET, muscles;
  indexes ≥ 1000 = library, so the session record, kcal and muscle map work for them), syncs picks
  (`GET /v1/exercises`, every 6 h or when the screen opens), downloads missing frames in the background.
  `ExerciseFigure` draws built-in or cached figures (still / no-glow modes for lists).

## Admin (server)
- `/admin/exercises` (button "Упражнения ↗" in the admin panel): the 302 exercises with moving figures, search, zone
  and state filters; per exercise **В приложението** on/off and **кадри** 3 / 2 (first + last) / 1 (still).
- D1 `exercise_picks(id, on_app, frames, updated_at)` (migration 0010) stores only changes: built-ins are on by
  default, the rest off. `GET /v1/exercises` (public, 5 min cache) → `{v, picks:[{id,on,frames}]}`.
  `POST /admin/api/exercises/set` (Basic auth). Helpers `server/src/exercises.js` (+ tests).
- **Deploy needed**: `npm run db:migrate` + `wrangler deploy` (not done by the agent).

## Workout model (`ai/Workout`, `ai/WorkoutStore`)
`{id, name, goal tone|fat, focus[], items:[{ex, sets 1–8, reps 3–30}]}` in `files/xems_workouts.json` (whole-file
write via temp). Ready programs = the 7 template programs (level-2 stations), one round, repetitions sized to fit one
AI session; read-only, "Копирай и промени" makes an own copy.

## How the AI runs it (`AiExercises.forWorkout`, `AiEngine.endSet`)
- One impulse = one repetition. The AI's fatigue model keeps a work block to ~4–6 impulses (spec §6.3–6.4, unchanged),
  so a longer set is a **rest-pause set**: short rest, same exercise, until the set's repetitions are done; then
  `endSet()` makes the engine rest at the next cycle and the next set follows. Fatigue and the pulse still decide
  every rest; a set can only end a block earlier.
- Order = **rounds** (circuit): round 1 = set 1 of every exercise, round 2 = set 2 …; after the last set it starts again.
- Warm-up = the template's light moves for this client; exercises the client's states rule out are swapped
  (`AutoTemplates.safer`: easier for the same muscle → nearest allowed → glute bridge). Tired → the easier one.
- Time estimate ≈ 24 s per repetition (measured in `AiExSim`) + 6 min; longer than one AI session (tone 20 / fat 30
  min) → amber note in the editor. Workout sessions do not change the template level history.
- UI: AI goal and plan screens show "Тренировка: … · AI избира упражненията" (clears it); the run card shows the
  exercise, "Серия 2/3 · повторение 5/8 (· кръг 2)", and in rests "Следва: …" or "Кратка почивка · после пак: …".
  Band: the exercise name (`ex` / `exn`).

## Tests
`bash scripts/ai-sim/run-auto.sh`: AiExSim runs every ready program and a custom workout (with a library exercise)
on the real engine: sets in order, each exactly its repetitions (never more), rests name the next exercise, no
forbidden exercise, ready programs fit one session; PathNorm vs Python. `cd server && npm test` (exercises helpers).

## Not yet
Workouts sync between tablets / to the server; picking a workout from the AI goal screen (today: from Тренировки);
repetitions on the band.
