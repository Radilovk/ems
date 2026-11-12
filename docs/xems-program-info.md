# Program info (ⓘ) and the advice in the report (owner, 1.1.516-ai)

Owner: every ready program (Auto, any goal, active or passive) says in plain words how it works for its goal; the
tips for before / after and for the goal are **not** crammed into the ⓘ — they are in the session report, by the
goal and by the program that ran.

## ⓘ on the program card — `ai/ProgramInfo`, text `ai/ProgramGuide`
- Every template card in Auto (and a ready program under "С упражнения") has a blue **i** at the bottom-right of its
  picture (36 dp). A tap opens a sheet (`XemsUi.shell`, 1000 dp, landscape) — the card itself still selects.
- Left: **Как действа** — three numbered lines in the goal colour (`ProgramGuide.get(id)`).
- Right: **Етапите · докосни** — the plan's stages as one bar (width = time, a short stage stays tappable), the
  first work stage selected; a tap shows the stage's name · minutes and what it is for (`AutoCues.phaseGoal`, the
  same text the live board shows). Under it **Колко често** and **Курс**.
- Footer: "Съветите за преди и след — в отчета след сесията." · **Разбрах**.
- Words: plain Bulgarian, no Hz / µs / Latin, no promises (test `run-auto.sh` → `AutoSim.guides`: every menu program
  has three lines ≤ 110 characters, no jargon).

## Advice in the report — `branding/report/session-report.html` (`renderGuide`, `shareGuide`)
- Section **Насоки след тренировката / процедурата** after "Натоварени мускули", in the short and the full view and
  in the PDF. Three columns: **Днес** · **До следващата** · **Следващата** (days of rest + the date, and one line:
  a light passive treatment on rest days / keep the course). A tap on a tip unfolds its one-line why.
- Source: the session's `programId` (`SessionRec.programId`, the automatic program's id, 1.1.516); without it the
  goal decides (tone → tone, fat → slim, cellulite / drain / massage → passive). Tables `G_TIPS`, `G_PROG`, `G_FAM`.
- Active sessions carry the safety line (strong pain > 3 days or dark urine → a doctor); the back-pain procedure its
  own (pain growing or running down the leg → a doctor).
- **➤ Изпрати на клиента** (and Сподели → "Насоки за клиента"): a 1080 × 1920 picture with every tip and its why,
  the next session, the safety line and "Съветите са общи…". Browser preview: `#prog=<id>` picks a program.
