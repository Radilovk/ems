# Programs ("Програми": workouts and procedures) and the exercise library

Main menu → **Програми** (`ai/WorkoutsUi`, full-screen; 1.1.260 merged the separate "Тренировки" and "Процедури" rows):
a two-way switch on top **Тренировки | Процедури**, then the studio's own and the ready ones grouped by who they are for
(**Готови** for everyone, **· за жени**, **· за мъже** — `Workout.sex` from `AutoCatalog` femaleOnly / maleOnly).
Build one by tapping exercises onto the map, then **▶ AI** or **▶ Авто**. Exercise programs run **only in the AI or the
automatic mode** (owner, 1.1.260): "Авто" = exactly by the map (MapRunner; needs the Auto licence, shows on the Auto
tile and the run card as "Авто · …"), "AI" = the Smart Session leads. No goal is asked:
it follows from the exercises (`Workout.suggestedGoal`, mostly cardio → fat loss, else toning; focus zones likewise);
the name field says what it is for. Changes save by themselves (header "✓ Запазено"; ✕ and Back lose nothing). Auto mode only shows exercises as an example (docs/xems-exercise-templates.md).

## The library (302 exercises)
- Source: `branding/exercises/library-src.json` (names BG/EN, steps, target/secondary muscle, equipment, pattern,
  viewBox, frame count; from bryllim/workout-guide, CC BY-SA). `scripts/gen-exercise-library.py` → `library.json`
  (+ position, MET estimate by pattern, suit-channel weights, picker zone, built-in flag) → `assets/xems/library.json`.
- The 48 built-in exercises ship their frames (`exercises.json`; 1.1.260 added push-up, dumbbell bench press, biceps /
  hammer curl, lateral raise, bent-over row, fly, diamond push-up for the men's programs —
  `scripts/add-builtin-exercise.py <id>…`, first + last frame); the others are **downloaded when the admin enables
  them**: frames from the pinned jsDelivr copy, normalized on the tablet by `ai/PathNorm` (Java port of
  `scripts/exercise-paths.py`, checked by `scripts/ai-sim/PathNormSim.java`), kept in `files/xems_ex/<id>.json`.
- `ai/ExerciseLibrary`: loads the library, registers every exercise in `AutoTemplates` (name, position, MET, muscles;
  indexes ≥ 1000 = library, so the session record, kcal and muscle map work for them), syncs picks
  (`GET /v1/exercises`, every 6 h or when the screen opens), downloads missing frames in the background.
  `ExerciseFigure` draws built-in or cached figures (still / no-glow modes for lists).

## Admin (server)
- `/admin/exercises` (button "Упражнения ↗" in the admin panel): the 302 exercises with moving figures, search, zone
  and state filters; per exercise **В приложението** on/off and **кадри** 3 / 2 (first + last) / 1 (still).
- D1 `exercise_picks(id, on_app, frames, zone, updated_at)` (migrations 0010, 0011). **Nothing is on by default**
  (1.1.260, owner: what the admin did not switch on is not seen on a tablet — built-ins included; the ready programs
  still use their own exercises). `GET /v1/exercises` (public, 5 min cache) → `{v, picks:[{id,on,frames,zone?}]}`.
- **Group** (picker zone): the blue tag ▾ on each card → one tap opens the groups, one tap saves (green = the admin's
  own, overriding the library's). Groups: Корем, Седалище, Бедра, Гръб, Гърди, Ръце, Рамене, **Функционални**
  (whole-body moves with no one target: burpee, swing, deadlift, carry…), Кардио, Разтягане. The tablet applies it
  (`ExerciseLibrary.zones`). `gen-exercise-library.py` fixes the source's wrong targets / positions (`ZONE_FIX`,
  `POS_FIX`, `FUNCTIONAL`).
  `POST /admin/api/exercises/set` (Basic auth). Helpers `server/src/exercises.js` (+ tests).
- Access: the admin login, or the page's own **access code** (asked by the page, sent as `X-Access-Code`; only its
  SHA-256 is in `wrangler.toml` `EXERCISES_CODE_SHA256`; a wrong code waits 400 ms). New code = new hash there.
- Deploy: GitHub Actions `server-deploy` (push to main, or Run workflow on a branch) applies D1 migrations and deploys.

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
- **1.1.261 — values in the blocks, full impulse control, picker cards** (owner):
  - Block also `{dbl, hz2, s2, ri, ro}`: **double impulse** = the OFF time carries a second impulse (the suit's active
    pause: its own Hz, strength as % of the first; the suit has **one pulse width** for both, so no µs for impulse 2);
    **ramp** in / out of every impulse 0–3 s (`inputRamp` / `outputRamp`; default 0.5 s, cardio 0.3, stretching 1.0;
    passive presets take the program's active pause). MapRunner writes all of it per block.
  - In the editor every block shows its values with vector symbols (`ai/ImpulseGlyph`): sharp wave = Hz, clock =
    seconds, pulse + flat = impulse : pause, two pulses = double impulse (ON/OFF · Hz 2), arrow down = µs. A ramp
    leans the block's side (trapezoid; 1 s ≈ 24 dp, at most a third of the block). The selected block has − (left) and
    + (right) inside as bare symbols in the theme's ink (white on dark, black on light); the resize grip sits above
    them. Blocks keep ≥ 104 dp (rest 92), a long map scrolls sideways.
  - Panel "Импулс ▸": Импулс + пауза | Двоен импулс; impulse 1 Hz · сек · µs · сила %; pause сек or impulse 2 Hz ·
    сек · сила %; ramp start / end сек. Each caption carries its symbol.
  - Legend (catalog list and editor): colour = frequency with Hz bands, and every block symbol.
  - Exercise picker cards: − / + at the two ends of the picture (one set less / more; a new set goes right after the
    exercise's last one, so the order holds), the place in the program top-left, picked = green frame + glow + raised;
    a tap on the card picks it or takes it out entirely; the top slot animates the exercise picked last with how-to.
- **Starting impulse by movement** (`Workout.forExercise`, design values): big-muscle strength 85 Hz / 350 µs / 4+4;
  small muscles and core flexion 85 / 300; holds 70 / 300 / 6+4; cardio & jumps 40 / 300 / 3+3 at 85 %; stretching
  10 / 250 / 6+2 at 60 %. Pattern from `library.json` (`pat`) / `AutoTemplateData.PAT`.
- **Ready maps**: the 7 active template programs (level-2 stations, one set each, 30 s rests, repetitions sized for one
  AI session) and the automatic mode's passive programs converted phase-by-phase (steps → blocks).
- Kinds: a **workout** (exercise blocks; goal derived, never picked) and a **procedure** (passive, no exercises, runs
  by the map only). One page, the switch on top shows one kind at a time, each with its own "+ Нова …". An old workout saved as "Процедура" with exercises is turned back
  into a workout when opened.
- Store: `files/xems_workouts.json`, `blocks:[{ex,n,hz,pw,on,off,rel}]`; the 1.1.254 `items` (sets × reps) are migrated
  to blocks in rounds with rests.

## Running a map
- **▶ Авто** (`ai/MapRunner` + pure `ai/MapClock`; a procedure: **▶ Пусни картата**): every block exactly as drawn to all rows; the strength stays
  each client's — `rel` scales it, rests set 0, the trainer's + / − are read back at each block change as the new
  100 %; impulse blocks advance by counted impulse cycles (AiSession.onPulseCycle → leader), rests by time, a time
  fallback (length + 3 s) if the cycle hook is silent; time counts only while the suit runs. Card at the top: line
  with playhead, figure (client's colour), "повторение 3/8 · Hz · µs", "Следва: …", ■ Стоп. Refused together with
  AI, Auto, music sync, the timer's block program (and they refuse while a map runs). Recorded exercise → kcal /
  muscle map like the Smart Session.
- **▶ AI** (`AiExercises.forWorkout`): the exercise blocks in map order are the sets (rest and plain blocks are left
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
