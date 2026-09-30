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

## The impulse map (`ai/Workout`, `ai/ImpulseMapView`) — 1.1.255
A workout **is** an impulse map: a line of blocks (merged with the exercises for active workouts — owner's choice).
- **Block** `{ex?, reps, hz, pw, on, off, rel%}`: an exercise block = one set (reps = impulse cycles, one impulse =
  one repetition); a rest block = `rel 0`, length in seconds; a block without an exercise = plain stimulation
  (passive procedures are only those). Length on the line = `reps × (on + max(off,1))` (the device pauses ≥ 1 s).
- **Line**: width = time (minimum width so short blocks stay tappable), colour = Hz (blue 1 → cyan 10 → green 30 →
  amber 60 → magenta 85 → red 120), height = pulse width 100–400 µs, opacity = strength share, the exercise's still
  figure above its block, minute marks, legend. Touch: tap = select (panel below with − / + for every value), drag
  the right edge = length (repetitions / rest seconds in 5 s steps), long-press + drag = move, round **+** above =
  clone, **−** = remove. Buttons: + Упражнение (picker; a 30 s rest is put before a new set), + Почивка, + Нов блок.
- **Starting impulse by movement** (`Workout.forExercise`, design values): big-muscle strength 85 Hz / 350 µs / 4+4;
  small muscles and core flexion 85 / 300; holds 70 / 300 / 6+4; cardio & jumps 40 / 300 / 3+3 at 85 %; stretching
  10 / 250 / 6+2 at 60 %. Pattern from `library.json` (`pat`) / `AutoTemplateData.PAT`.
- **Ready maps**: the 7 active template programs (level-2 stations, one set each, 30 s rests, repetitions sized for one
  AI session) and the automatic mode's passive programs converted phase-by-phase (steps → blocks).
- Goals: Стягане / Отслабване (active) · Процедура (passive: no exercises, runs by the map only).
- Store: `files/xems_workouts.json`, `blocks:[{ex,n,hz,pw,on,off,rel}]`; the 1.1.254 `items` (sets × reps) are migrated
  to blocks in rounds with rests.

## Running a map
- **▶ По картата** (`ai/MapRunner` + pure `ai/MapClock`): every block exactly as drawn to all rows; the strength stays
  each client's — `rel` scales it, rests set 0, the trainer's + / − are read back at each block change as the new
  100 %; impulse blocks advance by counted impulse cycles (AiSession.onPulseCycle → leader), rests by time, a time
  fallback (length + 3 s) if the cycle hook is silent; time counts only while the suit runs. Card at the top: line
  with playhead, figure (client's colour), "повторение 3/8 · Hz · µs", "Следва: …", ■ Стоп. Refused together with
  AI, Auto, music sync, the timer's block program (and they refuse while a map runs). Recorded exercise → kcal /
  muscle map like the Smart Session.
- **▶ С AI** (`AiExercises.forWorkout`): the exercise blocks in map order are the sets (rest and plain blocks are left
  to the AI's own rests); rest-pause when the AI's block is shorter; the block's Hz / µs are used only when gentler
  than the AI's plan (`AiSession.gentler`), never stronger; strength, rests and timing stay with the AI.

## Audit 1.1.256 — the backend decides, the screen stays quiet
- **Counting**: the cycle hook fires as ON begins and the parameters written then drive that impulse, so the impulse
  that ends a block is the first repetition of the next one (MapClock counted one extra before).
- **No choices the data already answers**: focus zones are derived from the exercises (muscles × repetitions, ≥ ¼ of
  the top, ≤ 3) — shown as text, used as the AI's focus, used for the name; the goal follows the exercises (mostly
  cardio / jumps → fat loss) until picked by hand; a new set's rest is ¾ of the set (20–60 s); an empty name
  becomes "Седалище и бедра"; the impulse follows the movement and is folded behind "Импулс ▸" (only the length is
  in front); the AI wizard skips the goal step for a workout.
- **Safety in map runs**: the leader's states swap forbidden exercises like the AI (`AutoTemplates.avoidFor` +
  `safer`), the card says so once; a map whose suit stood still for 5 min closes itself; the report names the map.
- **Touch**: a long press lifts the block (buzz, raised) and only then does it follow the finger; a swipe on the line
  scrolls the sheet; the edge grip is wider.

## Tests
`bash scripts/ai-sim/run-auto.sh`: AiExSim runs every ready map with exercises and a drawn one (library exercise,
rests, plain blocks) on the real engine: sets in map order, each exactly its repetitions (never more), rests name the
next exercise, no forbidden exercise, ready maps fit one session, passive maps never run with AI, timeline math;
MapSim runs MapClock over every map with and without the cycle hook (exact impulses per block, rest seconds, fallback);
PathNorm vs Python. `cd server && npm test` (exercises helpers).

## Not yet
Workouts sync between tablets / to the server; picking a workout from the AI goal screen (today: from Тренировки);
repetitions on the band.
