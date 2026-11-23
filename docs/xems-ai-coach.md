# AI coach — the Smart Session with a dialogue (owner, 1.1.535)

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
