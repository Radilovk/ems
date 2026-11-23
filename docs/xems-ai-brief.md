# AI brief — words over the planner (owner, 1.1.534)

> **1.1.535:** the Auto card and the board's ✦ Кажи are gone (owner: Auto is the ready programs). The AI training
> is the Smart Session's coach — `docs/xems-ai-coach.md`. `AiBrief` (parsing, the local reader, `BriefSim`) and the
> server's plain brief stay as the shared base.

Owner: "the easiest interface, very precise logic behind it: a wizard of 2–3 questions → the algorithm → free text or
dialogue where the AI understands the client and asks at most one thing; the trainer / client sets the strength".

## Layers
| Layer | What | Where |
|---|---|---|
| 1. Taps | guest only: goal (the existing row) + EMS experience + age band | `AiBriefUi.card` (Auto step 1) |
| 2. Algorithm | program, Hz, µs, ON/OFF, phases, rests, time, exercises, zones — every number | `AutoPlanner` (unchanged rules) |
| 3. Words | the trainer's text → a patch of the planner's inputs, closed lists only | server `/v1/ai/brief` (Gemini) → `AiBrief.apply` |
| 4. Limits | the planner's and `SafeLimits` as ever (25 min, 60+ ≤ 85 Hz, pause from Hz…) | unchanged |

The model never sends a number of the impulse. It sends: goal, kind, program (from the menu sent), sex / age / weight
/ height / fitness / experience, focus ± , conditions ± , today, contraindications, the extra flags (diastasis,
breastfeeding, back red flags…), channels on / off, softer / harder, minutes, double impulse, a one-line note and at
most one question with 2–4 answers. Unknown keys and values are dropped on the server (`validatePatch`) and again on
the tablet (`AiBrief.parse`). Same text → same inputs → same plan (temperature 0).

## Screen
- **Step 1 of Auto**, top card: (guest) `Първи път | Няколко пъти | Редовно` · `под 40 | 40–59 | 60+`; one text line
  (the keyboard's mic dictates) + **✦ Нагласи**. The answer: one green line — the note and what changed
  ("→ Болки в гърба · колене · седалище ↑ · по-меко"); a question shows as chips under it, a tap re-asks with the
  answer. The program card the AI chose is selected; Напред goes on as ever (client step → setting-up → ▶).
- **During the session**, the board's **✦ Кажи**: "по-леко" (−10 %), "по-силно" (+5 %), "пауза", "продължи",
  "прескочи", "към възстановяване", "без ръце" (channel off). Plain commands run on the tablet at once; anything else
  goes to the model.
- **Offline**: the same field works with the tablet's own reader (`AiBrief.local`: complaints, focus, today, goal,
  active / passive, softer, minutes, age, weight) — marked "(без връзка)".
- No warnings or disclaimers on screen (owner). The strength starts at 0 and stays the person's.

## Server
`POST /v1/ai/brief` `{device_id, token, …common, text, context, menu, question?, answer?}` →
`{ok, model, patch}` · 503 `ai_unavailable` (the tablet then reads the text itself) · 429 rate limit
(12 / min / device, 600 / day / licence). Token as `/v1/card` (signed by this server, licence and device active).
- Secret **`GEMINI_API_KEY`** on the `xems-license` Worker. Model: `GEMINI_MODEL` var if set, else the newest stable
  Flash the key lists (`pickModel`, cached 6 h; a 404 drops the cache). Structured output (`responseSchema`).
- What leaves the tablet: the text, age / sex / weight / height / fitness / experience, the profile tags, the menu.
  No name, phone or e-mail.

## Tests
- `server`: `npm test` → `test/aibrief.test.js` (validation, model pick, mocked Gemini).
- `scripts/ai-sim/run-auto.sh` → `BriefSim`: the local reader, parsing, and 20 000 random patches over random clients —
  every plan keeps the program menu, ≤ 25 min active / ≤ 35 in all, Hz ≤ the age limit, µs in range, zones ≤ their
  bounds, breastfeeding → chest 0.
- Planner fix found by it: a zone's plan value is now cut to its bound (diastasis: abs ≤ 40 %), as the output was.
