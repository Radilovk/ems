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
