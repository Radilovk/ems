# AI coach — the Smart Session with a dialogue (owner, 1.1.535)

> **1.1.537 — the AI training is the automatic mode + the coach (`ai/AiTrain`).** Owner: "same templates and principle
> as Auto, the AI model on top; not a full window — in the place of the rows 2–3, from the client's card down to the
> dock; no strength set before the start (in Auto neither); a 🎤 like the keyboard's, Bulgarian; before ▶ everything the
> AI set, summed up". The Smart Session sheet below stays only for the workouts' "with AI".
> - **AI tile → `AiTrain.open`:** `AutoSession` with `aiMode`; `AutoBoard` shows `AiTrain.build` (KIND_AI) in the board's
>   place. **Intake** (client · training · health · one line / 🎤 → ✦ Нагласи с AI) → **summary** (program, level,
>   times, impulse Hz · ON / OFF · µs, double impulse, target feel, "strength from 0"; the advice; the chat with its
>   question as buttons; ▶ Старт; ✓ Запази в профила for a client). Server: `kind:"coach", domain:"auto"` (Auto goals,
>   the program menu, intensity, Auto windows ON −1…+1, OFF −1…+2, Hz ±10 %).
> - **▶ Старт = `AutoSession.startDirect`:** every row at 0, the first + becomes its base (+5 / impulse). Auto's own
>   client step starts the same way (no setting-up board any more); own maps start at once (`MapRunner.go` without the
>   "strength first" stop). The face keeps its calibration (face studio).
> - **Run:** the Auto board + **✦ AI** in its head → `AiTrain.buildLive` (KIND_AI_LIVE) in the same place: quick
>   commands, the chat, 🎤. Live moves: `AutoEngine.setTune` (clamped, then `AutoLimits.clampStep`), `endActiveIn`,
>   the session's own −10 % / +5 % / ❚❚ / ▶ / ⏭ / ■ / double impulse.
> - **🎤 = `VoiceInput`:** Android's speech input (`RecognizerIntent`, the same Google voice typing as the keyboard's
>   mic), bg-BG when the app is Bulgarian, through a headless fragment; the recognizer app asks for the mic itself (no
>   RECORD_AUDIO in this app). The words go to the chat as a message (on the intake: into the line).
> - **2nd-impulse blink fixed (Auto and Smart):** the row's `activePause` stays the session's setting; a cycle / rest
>   without it gives it 0 % (before, it flipped every cycle and the stock index buttons blinked).
> - Tests: `AutoSim.tuneFuzz` (random tunes + early end over every program, every cycle in limits).
>
> **1.1.538 — "✦ Нова от AI": a workout that is no template** (`ai/AiWorkout`). The summary's switch **Готова програма |
> ✦ Нова от AI**. The model writes 5–10 exercises (dumbbells, kettlebell, free weight, mat, band, own body), each with
> name, one-line how, sets 1–4 × 20–45 s, rest 15–90 s, equipment and its **load kind** (warm-up, strength,
> hypertrophy, endurance, power, cardio, core, mobility) — server `kind:"workout"` (`validateWorkout`, ≤ 12 blocks).
> The tablet sets the impulse by kind (`AiWorkout.IMPULSE`: 7 / 85 / 70 / 50 / 100 / 40 / 80 / 10 Hz with their µs and
> ON / OFF; Hz ≤ the age limit; rest ≥ ⅔ ON), trims the active part to 20 min (last sets first), adds 10 min of passive
> recovery, and runs it as a map (`MapRunner`, 🔒 blocks: the smart impulse leaves them): the card shows each
> exercise's name and how — described, no figures. Strength from 0. Every chat message in this mode rewrites the
> workout. Not yet: the ✦ AI chat during a map run (the map has its own card). Test: `WorkoutSim` (5 000 random
> workouts: limits, ≤ 20 + 10 min).
>
> **1.1.539 (owner):**
> - **Cardio = 7 Hz** (twitches + blood flow while the client moves; physiology §1 — 1–10 Hz). **40 Hz = tone**
>   (fused tetanus, strength endurance), a kind of its own (`AiWorkout.IMPULSE`).
> - **The AI's veto over the planner:** auto coach `veto:{hz, on_s, off_s, reason}` (reason required) replaces the main
>   work's impulse (every tetanic step outside the warm-up and the recovery) — `AutoEngine.setVeto`, Hz still ≤ the age
>   limit, then `AutoLimits.clampStep`; live from the next cycle. The summary shows the new impulse and "AI changed the
>   program's impulse (was …): reason". The AI workout's blocks may carry `hz` (veto on the kind's frequency; the rest
>   rule and ON ≤ 6 s at ≥ 50 Hz kept).
> - **Spoken commands, cheap:** during the session every message goes 1) to the tablet's reader (`AiVoiceCmd`:
>   "намали краката", "увеличи малко ръцете", "по-дълга пауза", "пауза", "прескочи"…), 2) else to the cheapest model
>   (server `kind:"command"`, the newest Flash-Lite, a tiny prompt, ≤ 200 tokens), 3) only what is no command to the
>   coach. **The step is relative to the value now:** ~10 % ("малко" ~5 %), never below 1 — legs 50 → ±5, arms 4 → ±1
>   (`AutoSession.channelStep` / `strengthStep`); impulse / pause ±1 s, Hz ±10 % (±5), rests ±15 % (±8).
> - Tests: `WorkoutSim` (commands, the step, vetoed frequencies), `AutoSim.tuneFuzz` (random vetoes).
>
> **1.1.540 — hands-free "Тренер, …"** (`ai/WakeListener`). From the AI training's start the tablet listens all the
> time (Android's speech recognizer, bg-BG, offline when the language pack is installed, restarted after every
> phrase; the system / notification sounds are muted while it listens so its start beep does not ring all session;
> the program's beeps use the music stream and stay). It acts only on what follows the wake word ("тренер",
> "треньор" and the recognizer's spellings — `AiVoiceCmd.afterWake`); "Тренер" alone arms the next phrase for 6 s.
> No training needed. Before the start: "старт" = ✦ Нагласи / ▶ Старт, "стоп" closes, other words → the line / the
> chat. During the session: the tablet reads the command (`AiVoiceCmd`: muscles, strength, impulse, pause, Hz, rests,
> пауза, старт, стоп, прескочи, двоен импулс) — no AI; only what is none goes to Flash-Lite → the coach. A short tone:
> done / not understood. 🎙 in the board's head turns it off / on. **RECORD_AUDIO is declared again** (asked once on
> the tablet) — `verify-beta-safety.py` now allows it only for `WakeListener`. Not in a map run ("Нова от AI") yet.
>
> **1.1.541 — the wake word done the way voice assistants do it** (owner: "it listens, but acts only when I say
> „тренер“ — the speech is aimed at it"; "тренировка" is another word and must never unlock).
> 1. **Always on, on the tablet only — `ai/WakeWord`:** a keyword spotter ported from the voice module
>    (`voice/xems_voice/kws.h`: 16 kHz, 26 mel bands, word finder, 12 cepstra + energy, DTW). It reads the microphone
>    itself (`AudioRecord`) and knows only how the trainer says "тренер" — **3 recordings** + **"тренировка" once**
>    (`WakeSetup`, ~30 s, per tablet; the look-alike is a contrast: a wake needs d ≤ thr AND d ≤ 75 % of the
>    look-alike's distance, its beginning included — "трени…"). Nothing is transcribed, kept or sent. It matches the
>    word **while it is said** (every 50 ms once it is as long as the examples), so "Тренер, увеличи краката" in one
>    breath fires at the end of "тренер".
> 2. **Wake:** a short tone, "🎙 Слушам…" in the board's head.
> 3. **The command window:** the spotter lets the microphone go; Android's recognizer (bg-BG, offline preferred)
>    takes only the following words, closing after 1 s of silence.
> 4. **Understanding:** `AiTrain.voice` — the tablet's reader, else Flash-Lite, else the coach.
> 5. **Answer by voice:** a short Bulgarian confirmation (TextToSpeech: "Крака 45 процента", "Пауза"), a tone when
>    the tablet has no Bulgarian voice. One follow-up phrase right after needs no "тренер" ("… още").
> Not recorded yet → the 1.1.540 way (the recognizer transcribes, acts only after "тренер").
> **Test `scripts/voice-sim/run-wake.sh`** (espeak-ng, 3 voices × quiet / 2 noises): 34 / 36 wakes heard, **0 / 153
> false** — "тренировка", "тренирам", "тренираме", "треньорка", "днес имаме тренировка", "пауза", "стоп", "три"…
> (without the "тренировка" recording at the same threshold: 6 false). Synthetic voices — the real room may differ.

Owner: "an AI training like a trainer who asks the right questions, programs the whole session and stays there to
re-tune it live: a wizard of questions → the algorithm → a free-text dialogue where the AI asks what is unclear
(1–3 questions, made in the dialogue). No warnings, no disclaimers; the strength is the person's."

## Flow (Smart Session tile)
1. **Intake** (`AiCoachUi.intake`, one screen, landscape: client | session):
   sex · age · height · weight → **BMI and its class shown, never asked** · EMS experience (Първи път / Няколко /
   Редовно) · goal · active / passive (where the goal has both) · health **Нямам / Имам** → chips: knees, back, neck,
   joints, diabetes, insulin / sugar pills, high blood pressure, heart, thyroid, varicose veins, osteoporosis,
   (women) after birth, diastasis, menopause, beta-blocker, blood thinners; contraindications in red (pregnancy,
   pacemaker / implant, epilepsy, cancer, recent surgery). A client's values come from the record (`AiProfile`),
   experience from the history; a guest starts from defaults (178 / 166 cm) and nothing is kept.
2. **Plan + coach** (`AiCoachUi.split`): the plan (left, as before) and the coach (right). The coach speaks first
   (plan and today's advice); the trainer writes or dictates (keyboard mic); the coach's question shows as buttons.
   Every answer that changes an input re-plans at once. **Advice**: exercise type, load, what to do in the rests,
   own body or light weights, before / during / after (food, water, electrolytes only when they make sense).
   A client: **"✓ Запази в профила"** saves what the dialogue found (conditions, medicines) — only on that tap.
   **Without a band (1.1.536):** no band paired → the resting-HR screen is skipped; paired but no pulse →
   "Без гривна ›" on it. The plan then runs on the fatigue model alone (`AiPlanner`: NO_BAND, safety only, no HR
   control) and asks "how hard, 1–10" at its checkpoints (CR-10) instead of reading the pulse. "↻ Измери пулса"
   goes back to the band.
3. **▶ Към старта** → the strength (from 0) → ▶.
4. **During the session: ✦ Чат** (run screen footer) — the same dialogue over the session. "по-леко", "пауза",
   "по-дълги почивки", "по-кратки импулси", "още 5 минути и край", "кръстът го боли" → the session changes now.

## Who decides what
| | |
|---|---|
| Hz, µs, ON / OFF, phases, rests, time | the planner (`AiPlanner`), as ever; first EMS sessions shorter / softer (`sessions` 0 → ≤ 15 min, 80 %; 1–2 → ≤ 18 min, 90 %) |
| Live moves | the model asks, the engine clamps: ON −2…+2 s, OFF −2…+3 s, Hz ±15 %, minimum rest −30…+60 %, end the active part in N min (`AiEngine.setTune`, `endActiveIn`) — per cycle again: ON ≤ 6 s at ≥ 50 Hz, rest ≥ 0.66 × ON (1 × in passive), Hz ≤ the age limit |
| Strength | the person (−10 % / + on "по-леко" / "по-силно" are the session's own buttons) |
| Words, questions, advice | the model (≤ 3 questions in a dialogue, counted on both sides) |
| "по-леко днес" | `today` key `t_gentle` → −15 % ceiling, +1 s pause, softer onset (`AiPersonal`) |
| beta-blocker | `screening.hrLoweringMedication` (the HR limits change as before) |

## Server
`POST /v1/ai/brief` with `"kind":"coach"`: `{text, context:{sex, age, height_cm, weight_kg, bmi, bmi_class, fitness,
ems_sessions, goal, mode, cond, today, focus, contra, plan:{min, cr10, phases}, now?:{phase, min_done, state, tune}},
chat:[{role, text, q?}]}` → `{ok, model, coach:{reply, question, goal, mode, minutes, double_impulse, cond_add,
cond_remove, focus_add, today_add, contra_add, actions, on_delta, off_delta, hz_pct, rest_pct, end_in_min, advice}}`.
`validateCoach` drops unknown keys and clamps every window; the tablet checks again (`AiCoach.parse`).
Prompt: one compact system text (`COACH_SYSTEM`), temperature 0, ≤ 900 output tokens, **no thinking**
(`thinkingBudget: 0` on 2.x Flash, `thinkingLevel: minimal` on 3.x; a model that refuses it is asked again without).
Model: the newest stable Flash the key lists (`pickModel`), or `GEMINI_MODEL`. Key: Worker secret `GEMINI_API_KEY`.

## The client's card
A client's advice is kept on the tablet (`AiProfile.saveAdvice`, prefs `advice<id>`); the report's `cardData()` takes
it (`ReportBridge.advice()`) as `adv:{d, l:[≤ 8 lines]}`; the card shows "Съвети от треньора" (`client-card.html`,
text only). The server accepts it (`validCardData`: ≤ 8 lines × 200 chars).

## Tests
- `scripts/ai-sim/run.sh` → `CoachSim`: BMI, parsing, the input patch (insulin → diabetes, beta-blocker → HR
  medication, no cellulite for a man), and 1 500 random clients × random replies × random live tunes through the
  real `AiEngine`: ≤ 25 min, first session ≤ 15 min, Hz ≤ the age limit, ON / rest limits on every cycle, the plan
  time kept.
- `server`: `npm test` → `aicoach.test.js` (validation, prompt, no-thinking retry), `card.test.js` (adv).

The Auto mode has no AI card any more (1.1.535): Auto is the ready programs; the AI training is this.

## 1.1.542 — the wizard, the AI link fixed, AI not "Auto"
- **AI link (ai-smoke, a real Gemini call in CI):** gemini-3.8-flash refused `thinkingLevel: minimal`, the retry
  thought 630 tokens inside a 900-token budget and every answer was cut (`bad_json`) — the tablet said "no AI". Now:
  `low` when `minimal` is refused, budgets 3000 / 6000, Google's message in every error. The cheap model refused
  system instructions and JSON → system text merged, then the main model. Measured: coach 6.9 s, workout 9.9 s,
  brief 4.8 s. `.github/workflows/ai-smoke.yml` runs on every change of the AI code.
- **The wizard (`ai/AiWizard`)**, one step per screen in the board's place, checked on `tools/ui-shot` pictures:
  1 Клиент · 2 Тренировка · 3 Здраве · 4 Кажи на AI (field, 🎤, ready phrases, "Научи „Тренер“") · 5 Готово
  (program, times, impulse, advice, chat, Готова | Нова от AI, ▶ Старт). The old one-screen layout stays as
  `AiTrain.buildOld` until the wizard has been on the tablets.
- **AI, not Auto:** the row's sign says "✦ AI"; the AI tile lights and shows the session, the Auto tile stays off.
- **"Научи „Тренер“":** without the microphone permission it asks and opens the recording by itself once allowed;
  refused for good → the app's settings page.
- **2nd-impulse blink:** ≤ 1 Hz the limits switch the 2nd impulse off at every phase while Auto switched it back on —
  steady "on" now only ≥ 2 Hz; maps keep the switch steady through a block (a repetition without it gets 0 %).


## 1.1.543 — preparation window, coach bar, side chat
Owner: the setup must not stay on the operational screen; the chat must look like a chat.
- **Preparation** = `AiSetupSheet`: a temporary window (1200 × 640 dp, dimmed screen behind) holding the 5-step
  wizard (`AiWizard`: client → training (+ "Готова / ✦ AI да състави") → health → tell the AI → plan). It closes at
  ▶ Старт; nothing of it stays. No AI board before the start (`AutoBoard` shows only Auto's own boards).
- **During the session** the normal run board stays the main thing. `AiCoachBar` (50 dp, under the run board):
  🎙 state (tap = on/off, amber while listening) · the last exchange "Ти: … → ✓ …" or the "during" advice · ✦ Чат.
  The old "✦ AI" / "🎙" head chips and the full-board live chat are gone.
- **Chat** = `AiChatDrawer`: a right-side panel (500 dp, full height, not modal — the training screen beside it
  stays usable), messenger look: trainer right, AI left, spoken words as 🎙 bubbles (`AiCoach.userSpoke`), changes
  as green "✓ …" entries, one-tap answers under the AI's question (else the usual moves), one line whose button is
  🎤 while empty and ➤ with text. Slides away after 10 s without a touch (not while the AI writes, a question waits
  or text is typed). The AI tile during the run opens it.
- **Teaching "Тренер"** moved to Settings (`VoiceSettings` card, AI licence only) — once per tablet.
- Shots: `sh tools/ui-shot/run.sh` → `ai-1..5`, `ai-bar`, `ai-chat`, `ai-voice-settings` (docs/xems-ui-shots.md).

## 1.1.544 — the preparation is ONE screen
Owner: 5 steps were badly sized, slow and not thought through. What it is for: the client is in the suit, the
trainer wants a session fitted to this person in seconds; the AI must never stand in the way of ▶ Старт.
- `AiWizard` = one screen in `AiSetupSheet`. Left, one line each (caption + control): Клиент (a known client = one
  line from the card + ✎; a guest = Мъж/Жена + age / height / weight as numbers that open a keypad + BMI) · Цел ·
  Вид · Опит с EMS (guests only — a client's comes from the card) · Програма (Готова / ✦ AI я съставя) · Здраве
  (✓ Здрав/а, or the chosen ones; the full list opens in a popup) · Днес (one line + 🎤/➤, usual phrases one tap).
  Right: the plan as it is now — status line (AI tuning… / ✓ Tuned by the AI · what changed / no link), program,
  active · cool-down · feel, impulse, the AI's word, its answer chips, "before the start"; ▶ Старт always there.
- Logic (`AiTrain`): every change → `changed()` = plan by the algorithm at once + `retuneLater` (2.5 s debounce,
  a newer question drops the older answer via seq). A known client is tuned on open; a guest after the first
  change. Words / phrases / 🎤 → `say()` straight to the AI. ▶ Старт drops an answer still on its way.
- Coach bar shows only what the AI said during the session (`AiCoachBar.started`); the chat is 380 dp wide.
- Shots: `ai-guest`, `ai-guest-busy`, `ai-client`, `ai-pad`, `ai-health`, `ai-bar`, `ai-chat`.

## 1.1.545 — a spoken dialogue during the session; the 2nd-impulse blink
- **The AI changes the running session** (it always could: `liveApply`, commands); ▶ Старт only drops an answer to
  a *preparation* question still on its way.
- **Spoken dialogue** (the tablet's own TTS, no paid voice): whatever went to the AI by voice ("Тренер, …" or the
  chat's 🎤) is answered aloud (`AiTrain.voiceAsk` → `spoken()` = reply + question + its options →
  `WakeListener.answer`), then one listening window opens without "тренер" (after the TTS "done", `Follow`); silence
  ends the dialogue (back to the spotter). Commands done on the tablet are said back the same way. The spotter is off
  while the tablet speaks.
- **Questions** ("колко повторения…", "какво упражнение още…", "…?") skip the command model and go straight to the
  coach (`AiVoiceCmd.isQuestion`). Server `LIVE_NOTE` (SESSION=RUNNING): concrete numbers (reps, seconds, sets), the
  next exercise for the named body part, asks which part when none is named; live questions don't count toward 3.
- **Several commands in one phrase**: `AiVoiceCmd.parse` splits on "и / а / , / после / също"; each part has its own
  verb, a part without one takes the verb (and "малко") before: "увеличи ръцете и намали дупето" → arms up, glutes
  down. "задник" = glutes.
- **Operational screen**: the coach bar shows only the voice state (🎙 / 🔊 / listening) and what the AI said during
  the session — no preparation advice.
- **2nd-impulse blink**: the row's two 2nd-impulse index buttons coloured themselves from the bean (yellow / black),
  which Auto / Smart / a map change cycle by cycle. `scripts/apply-double-impulse.py` `patch_shown` makes
  `updatePauseMa/HzDisplay` read `DoubleImpulse.shown(b)` (the session's steady setting; `MapRunner.ledDouble` for
  maps); FocusBoard's ∿ reads it too.

## 1.1.547 — the AI's own workout in the AI tab; hands-free on Android 11+; every function by voice; fast live answers
- **"✦ AI я съставя" runs in the AI tab**, not as Auto's small floating card: `MapRunner.ai` → no card;
  `AutoBoard` KIND_MAP = `AiMapBoard` (left: the exercise now — big name, how, its clock, "серия N от M", what is
  next, ▶ Старт while waiting, ■ Стоп, the impulse line; right: the whole workout as a list, ✓ done, ▶ now) + the
  coach bar. The nav's AI tile lights ("✦ <title>"), not Auto. The AI tile during it opens the chat.
- **Voice / chat on it**: `AiTrain.live()` counts the map; `applyMap` / `mapAction` → `MapRunner.setStrength`,
  `setChannels` (a channel's level = strength × share; above the strength it rises, the others keep their level),
  `pause`, `skip`, `noDouble`, `stop`.
- **Hands-free on Android 11+**: the manifest had no `<queries>` (targetSdk 30) — the app could not see the speech
  recognizer service nor the TTS engine. `apply-wearable-bridge.py` adds RecognitionService, RECOGNIZE_SPEECH,
  TTS_SERVICE. The TTS takes the best Bulgarian voice (`WakeListener.bestVoice`: quality, local before network).
- **Every function by voice** (`AiVoiceCmd`): absolute levels ("силата на 50", "краката на 30 %", "увеличи на
  50%"), sized steps ("увеличи с 10"), the double impulse ("спри / пусни двойния импулс", "махни втория импулс" —
  never a pause / resume), plus everything before. Free questions go to the coach.
- **Fast live answers** (server): the running session's coach uses the Flash-Lite model, no thinking, 1200 tokens;
  `pickLiteModel` prefers a stable Lite (the newest preview refused the system text and JSON mode, so live answers
  fell back to the slow main model). Planning keeps Flash.
- Off-device: `tools/app-sim` `SimFree` (the AI's workout: board, voice, chat).

## 1.1.548 — no automatic stops in the AI training; the steps aloud
- **Continuous** (`AutoEngine.setContinuous`, set by AutoSession for aiMode): no REST between sets, no HR_PAUSE. The
  rest the fatigue model would have asked for (`restAfterSet`) becomes the next set's easier impulse
  (`adaptFor`: rest need ≥ 18 / 35 / 60 s → pause +1 / +2 / +3 s; a ≥ 60 Hz impulse −10 / −15 % Hz), up at once,
  down one step a set. The heart at its ceiling → the easiest impulse (+3 s, −15 %), never a stop. A pause only
  from a person (voice, ⏸). Auto (not AI) is unchanged.
- **The AI's own workout**: no zero-output rest blocks — an active recovery between sets (`AiWorkout.rest`: 6 Hz,
  250 µs, 3/1 s, half strength, "Активно възстановяване").
- **The steps aloud** (`AiAnnounce`, `WakeListener.announce`: queued after what is being said, spotter off while
  the tablet talks): "Започваме със загрявка", "Основна част: …", each exercise ("Упражнение / Следва: …", sets for
  the AI's workout), "Възстановяване …", "Край. Браво …". No "тренер" / "тренировка" in them.
- **Tests**: `scripts/ai-sim/ContinuousSim` (every program, random people, the heart at its ceiling: never REST /
  HR_PAUSE, never quiet > 15 s, adaptation in bounds, runs to DONE — seconds); `tools/app-sim` SimAi: 4 min of the
  real app, the engine looked at every second, the announcements heard. app-sim: the overlay is recompiled only
  when a source changed, tests run in 3 parallel JVMs (all 7 in ~1.5 min).

## 1.1.549 — the strength from 0 in the AI training with a ready program
- The channel sliders showed the share (100 % → full) while the text said the real level (0 %); a slider moved at
  strength 0 changed only a share (0 × anything = 0) — "nothing moves from 0". In Auto / AI the slider now is the
  channel's REAL level (`PartLook.ledShown` ← `AutoSession.channelShown` / `MapRunner.channelShown`) and the finger
  sets that level (`PartStrength.bar` → `channelFromSlider` → channelStep "set": above the strength it rises, the
  other channels keep their own level).
- A + pressed during the start's countdown (or a pause) was zeroed and lost; it now raises the row's level for when
  the impulses run (`AutoSession.guard`).
- Off-device: `tools/app-sim` `SimStrength` (+ in the countdown, + every 15 s for 3 min, "силата на 30", a slider to
  40 with the others kept) and `SimAuto`.

## 1.1.550 — every function the AI coach reaches, tested
`tools/app-sim` `SimCoachAll` (a ready program) and `SimCoachOwn` (the AI's own workout): each spoken command and
each coach answer (the server's JSON through `AiTrain.onAnswer`), then what the suit actually gets (the row's bean:
strength, channel levels, Hz, ON / OFF, 2nd impulse) and the engine's state — a PASS / FAIL table (43 functions).
Found and fixed: "по-дълъг импулс" was not read (the singular "дълъг"); the AI's own workout had no impulse /
pause / frequency tune (`MapRunner.tune`, by voice and by the coach's on/off/hz/rest deltas, end_in_min 0); "силата
на 30" now means the program's strongest impulse (`AutoSession.level` on φmax — the wave's lower impulses go under
it, the warm-up runs softer by design); "s" read aloud as a letter → "секунди".

## 1.1.551 — the whole screen by voice; speech in natural sentences
- **The approach checked** against the literature: a personal wake word by DTW template matching of a few user
  recordings (no training) is the published method for mobile devices (EUSIPCO 2014 "Wake-up-word spotting for
  mobile systems"; few-shot query-by-example: Fluent.ai DONUT, TACos), wake word first and a separate recognizer
  for the command second (as Porcupine-style products). Kept.
- **New by voice** (`AiVoiceCmd` → `AiTrain.applyCommands` / `applyMap` / `commonAction`): the impulse's depth
  ("по-дълбок / по-плитък импулс" → `AutoEngine.setTunePw`, `MapRunner.tunePwPct`), the 2nd impulse's strength
  ("намали / увеличи втория импулс" — a step, no longer off: `secondScale`), the music ("спри / пусни музиката",
  "следващата / предишната песен" — never the training's pause or next exercise), the end ("приключи след 3
  минути", "още 5 минути" → endActiveIn / `MapRunner.endAtMs`), and answers with no AI: "колко остава", "какъв ми
  е пулсът" (not "импулс"), "колко е силата".
- **Natural speech** (`AiSpeak`): the chat keeps its short form, the voice gets sentences — "Краката са на 28
  процента.", "Импулсът е с една секунда по-дълъг.", "Изключих двойния импулс.", "Остават 17 минути." Every spoken
  text (also the coach's own) goes through `AiSpeak.clean`: no colons, dots, arrows, quotes, brackets, %, + read
  out. Announcements: "Първото упражнение е клек без тежест.", "Следва румънска тяга, три серии." The server's live
  prompt asks for the same.
- `tools/app-sim` `SimCoachAll` + `SimCoachOwn`: 50 functions, and every sentence said is checked for symbols.

## 1.1.552 — the coach asks back when unclear
- Free speech has three readers: the tablet's own (clear commands, instant), the cheap command model (free wording →
  command), the live coach (everything else). A vague place ("долната част на тялото", "отзад", one side) is no
  longer read as the whole suit — the tablet and the command model pass it to the coach.
- The coach, unsure what to change, asks one short question with options and changes nothing yet
  (`LIVE_NOTE`). Never twice in a row: still unclear → the safer choice (less), said aloud.
- The answer: `AiCoach.awaitingAnswer()` (the AI's last turn asked, ≤ 90 s ago) → the next words go straight to the
  coach with the chat, past the command readers ("по-силно" alone is not the whole suit then). "пауза", "стоп",
  "продължи" stay instant (`AiTrain.safety`).
- The coach can now act on one channel: `commands` in its schema (same targets as the command reader), applied by
  `AiTrain.liveApply` through `applyCommands` — on a ready program and on the AI's own workout.
- Proof: `server/scripts/ai-smoke.mjs` FREE lines (12 everyday phrases) and DIALOG 1/2 (vague → question → answer
  → command) with the real model.

## 1.1.553 — the wake word on Huawei: a microphone that gives silence
- **Owner:** on a Huawei tablet neither the teaching nor hands-free heard anything; only the chat's 🎤 (the system's
  speech dialog) worked.
- **Microphone sources in turn** (`WakeListener.Mic`): VOICE_RECOGNITION → MIC → CAMCORDER → DEFAULT. A source that
  does not initialize, does not record, fails to read, or gives only digital silence (peak ≤ 12 for 2.5 s) is
  skipped; the one that gave sound is kept per tablet (`xems_wake` / `src`). None gives sound → `silent`, retried
  every few seconds.
- **The teaching dialog shows the level live** (`WakeSetup.Meter`) and, when silent, what to do: turn off the
  tablet's voice assistant (Huawei "Celia") and apps that hold the microphone.
- **No background recognizer** (`SpeechRecognizer.isRecognitionAvailable` false — Huawei without Google): after
  "тренер" the command goes through the system's speech dialog (`VoiceInput`, as the chat's 🎤); a closed or empty
  dialog returns to the spotter (`VoiceInput.WantsEmpty`).

## 1.1.554 — voice: economical with the AI, smooth on Google tablets
- **`ai/AiVoiceGate`** decides what heard speech may cost an AI call, after the tablet's own command reader:
  noise ("ъъ", "хм", <3 letters) never; filler ("добре", "благодаря", "да", "ок") only as the answer to the AI's
  question; the window after the tablet's answer (no "тренер") only a question, an answer or a 3+ word sentence;
  the same words within 15 s never; at most 8 calls a minute (a radio in the hall). Dropped phrases leave no chat
  bubble and are logged (`ai-gate`). Test: `sh scripts/voice-sim/run-gate.sh`.
- **Faster command window**: Google's recognizer is bound at the start (`warmRecognizer`) and kept between
  windows (`cancelRecognizer`, not destroy) — re-binding cost ~0.3–0.5 s, the first words after "тренер" were
  lost. The window opens at once; the beep sounds at `onReadyForSpeech` ("speak now"), not at the wake.
- **Server (same release)**: the voice already runs on the cheapest model (Flash-Lite, no thinking: commands and
  live coach; only planning uses Flash). Live coach prompts now carry no program menu (live never changes the
  program) and a shorter chat (6 turns × 240 chars) — roughly half the input tokens of every live call. The command
  reader keeps clear readings per isolate (`commandKey`, 400 entries): a repeated phrase costs no model call
  (`model: "cache"`).

## 1.1.555 — "Тренер" presses the chat's 🎤; a dialogue only with the AI; the trainer's voice decides
- **The window = the chat's 🎤** (`WakeListener.openWindow` → `VoiceInput.listen(a, DialogCommand, prompt)`): the
  same system speech dialog — it shows that it listens, closes by itself on a pause, and its words take the same
  path (commands on the tablet, else the AI with a spoken answer). No dialog on the tablet → the background
  recognizer as before (`VoiceInput.listen` returns false).
- **Dialogue only after the AI**: `answer(text, dialogue)`. A command done on the tablet is confirmed aloud and
  goes back to "тренер" (`SpotterAgain`); the AI's answer opens one more dialog without "тренер" ("Слушам…").
  A pause, a quiet word or noise → the dialog closes empty → back to "тренер".
- **Loudness gate** (`WakeWord.loudEnough`): the examples' mean peak level (dB, absolute on this microphone — a
  noisy hall raises the floor, not the trainer's voice) is stored with them (format 3); a word more than 10 dB
  quieter never wakes — a voice across the hall, the radio. Older recordings (no level) work as before; "Научи
  отново" adds it. `run-wake.sh`: 34/36 wakes, 0/153 false (as before), −20 dB "тренер" 0/3, −4 dB 3/3.

## 1.1.556 — the model and its thinking chosen per turn; the coach knows EMS physiology
- **Owner:** maximum adequacy; a cheap model only for the easy small things; how strong a model and whether it
  thinks — chosen by itself.
- **`server/src/airoute.js` `route(kind, body)`**: command → Lite, minimal thinking (closed JSON, validated, the
  tablet keeps its limits); every coach reply → the main Flash, thinking low; with health or physiology in the turn
  (`careful`: pain, symptoms, heart, pressure, pregnancy, diabetes, injury, "защо", Hz, fatigue…; word-start stems)
  or planning for a client with conditions → thinking medium; the AI's workout → medium. The thinking's room is
  added to the answer's (`THINK_ROOM`). A careful phrase never reaches the Lite command reader (`command` returns
  coach without a call). Before: live replies ran on Lite with no thinking, planning on the least thinking.
- **`PHYSIOLOGY`** in the coach's system text (coach, workout): synchronous recruitment, frequency bands, impulse /
  pause, pulse width, the absolute limits, rest between sessions and adaptation, red flags → pause, no-EMS
  conditions, the safer choice when unclear. "No disclaimers" stays, the red flags are acted on.

## 1.1.556 (tablet) — a percent is a point of the 0–100 scale
- **Owner:** "увеличи с 1 %" at 7 → 8; "на 50 %" → the named part (or every channel together, their ratio kept) to
  50 of its maximum. Never a percent of the value now. The tablet's reader already did so (`AutoSession.channelStep`
  / `strengthStep`: by = points, set = level); now also:
- Numbers in words after "с / на / до" or before "процент" (`AiVoiceCmd.numbers`: "с един процент", "на двадесет и
  пет"); elsewhere words stay words ("три клякания").
- The server's command reader and the coach carry the number: `commands[].amount` (points; dir `set` = the level),
  read by `AiVoiceCmd.read`. Before, a number the tablet missed was lost (only step small / normal).
- softer / stronger are small steps without a number: the confirmation says the level now ("сила 46"), not
  "−10 %"; the coach says "малко по-леко", never "с десет процента" for them.
