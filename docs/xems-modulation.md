# «Модулация» on a bodytech suit (1.1.375 phases; 1.1.372 name; was "Австралийски ток", 1.1.362)

**Where:** only in the automatic mode (**Авто → Пасивна**), as separate cards after the passive templates
(«Модулация · <name>», green, "само bodytech"), and only while a row with a client runs on a **bodytech** suit
(`AutoUi.modRow`: the first such row). "Напред" closes the automatic setup and opens the procedure's own screen
(`BtAusScreen.open`) for that row's suit — the Auto engine does not run it (its 1–2 kHz carriers are not XEMS
parameters). Not shown for an XEMS suit, nowhere else in the app (the row's gear has no test / Australian / Russian
any more — owner, 1.1.372: those were only to choose what to work with). **Passive only** (the client at rest, the current does
the work); there are no active procedures here. Since 1.1.375 every procedure is a **chain of phases** (the owner's
BODYTECH spec: adaptation → work → recovery) run one after the other on the same channels. Classes in
`branding/java/src/com/isaigu/gymapp/bodytech/`: `BtAus` (templates, timeline, interferential maths — pure, tested in
`bodytech/xems/test/BtAusTest.java`), `BtAusRun` (the session: 250 ms tick, phase after phase — a soft start and the high tone at each new phase, pause /
resume, ⏭ next phase, finish), `BtAusScreen` (UI: what it is | zones, the phases side by side, the chosen phase's level,
time, ON / OFF, bursts).
Suit side: `BtTranslator.programOn` (several channels at once, own strength and Hz per channel, one width / waveform /
burst) ← `BtBridge.program`; it is held like a test (renewed every tick, off 1.5 s after the last renewal, refused
while a real training runs, the training state is restored when it ends).

## What the current is on this suit
| Literature | On the suit |
|---|---|
| carrier 1000 Hz, phase 500 µs | "Hz" register = 1000, width = 500 µs (half the period; `maxUsAt`) |
| sinusoidal AC, bursts | waveform register = sine (1); bursts = the suit's own T2 / T4 (ms) |
| burst rate 50 Hz × 4 ms | T2 = 4 ms, T4 = 16 ms (`BtAus.burst`); 100 Hz × 4 ms = 4 / 6; 10 Hz × 2 ms = 2 / 98 |
| ON : OFF 10 s : 30 s, ramp 2 s | the tablet: strength × factor (`BtAus.at`) — the suit's T-cycle is taken by the bursts |
| "supramaximal / visible / submotor / tingle" | no number can say it: the owner raises the level (start 2–5 %) until the feel in the template |
| strength per muscle | level × the channel's own gain (Settings → Костюм bodytech, 0–150 %), ≤ 99 % |
Not measured: whether the suit's burst + sine at 1 kHz feels like a classic Australian current — the suit gives no feedback.

## Phase kinds (`BtAus.adapt / motor / pump / sensory / tingle`)
| kind | spec | impulse on the suit | macro | start % |
|---|---|---|---|---|
| Адаптация | A | 7 Hz, 350 µs, square, no bursts | continuous, ramp 3 s | 4 |
| Работа | B | 1 kHz, 500 µs, sine, bursts 50 Hz × 2 ms (2 / 18 ms, 10 %) | 10 s on / 30–40 s off, ramp 2 | 5 |
| Силна работа | C | same, bursts × 4 ms (4 / 16 ms, 20 %) | 10 / 30 s | 5 |
| Мускулна помпа | E | 7 Hz, 350 µs, square | 4 s on / 4 s off, ramp 1 | 5 |
| Успокояване | D | 4 kHz, 125 µs (half the period), sine, bursts 50 Hz × 2 or 4 ms | continuous, ramp 3 | 4 |
| Бавна стимулация | — (spec: "experimental") | 1 kHz, 500 µs, bursts 10 Hz × 2 ms (2 / 98 ms) | continuous | 3 |
Each phase starts at its own level with a 2 s soft start; the trainer raises it to the phase's feel (motor: the
strongest contraction still calm, no pain or burning; sensory: a clear feel, no contraction).

## Procedures (all passive; starting values; every value is changed per phase on the screen)
| id | name | zones | phases (min) | total |
|---|---|---|---|---|
| atrophy | Атрофия и циркулация | thighs, calf | A 5 · B 13 (10 / 40 s) · E 6 · D 5 (4 ms) | 29 |
| lipolysis | Пасивна липолиза | glutes, thighs, abs, lower back | A 5 · B 15 · slow 10 Hz 15 · D 5 | 40 |
| ifc-chronic | Болка · хронична (IFC) | lower back, back | 2 Hz beat 15 · sweep 2–10 Hz / 10 s 10 | 25 |
| ifc-acute | Болка · остра (IFC) | lower back, back | sweep 80–150 Hz / 8 s 20 | 20 |
| shape | Оформяне | glutes, thighs, abs, lower back | A 6 · B 14 · D 6 | 26 |
| tone | Стягане (after adaptation) | thighs, glutes | A 6 · C 12 · D 5 (4 ms) | 23 |
| pump | Мускулна помпа | thighs, calf | A 6 · E 12 · D 7 (4 ms) | 25 |
| cellulite | Целулит — подкрепа | glutes, thighs | A 6 · B 13 · D 8 | 27 |
| abs | Корем | abs | A 6 · B 13 · D 5 | 24 |
Channels are preselected from the owner's map (slider of each channel, `BtSettings`); each can be toggled. Zone choice
follows the owner's remap, not fixed channel numbers. 1.1.375 changes to the kept ones: atrophy and lipolysis got the
adaptation, the motor work and the sensory finish (lipolysis: the energy comes from the contractions and the movement
after — the 10 Hz phase stays, marked experimental); chronic IFC got a 2–10 Hz sweep after the 2 Hz part; acute IFC
sweeps 80–150 Hz (was 80–100).

## The owner's BODYTECH spec against this suit (review, 1.1.375)
What the suit can do (bodytech/PROTOCOL.md, `BtTranslator`): pulse rate 1–10 000 Hz (period = whole µs), width 50 µs …
half the period (125 µs at 4 kHz, 500 µs at 1 kHz, register up to 1638 µs), waveform register (square / sine /
trapezoid, effect on the output unproven), bursts = the suit's T2 / T4 in whole ms, strength 0–99 % of an unknown
current. It returns **only the battery**: no current, voltage, impedance, temperature or per-channel fault.

| spec item | fits? | what we did |
|---|---|---|
| A 7 Hz adaptation | yes — plain pulses, the suit's own kind | phase A; width 350 µs is our choice (spec gives none) |
| B 1 kHz / 2 ms / 50 Hz, 10 % | yes — 2 / 18 ms; 2 pulses of 500 µs per burst | phase B (main work) |
| C 1 kHz / 4 ms / 50 Hz, 20 % "after adaptation" | yes — 4 / 16 ms | phase C, only in "Стягане", marked "след адаптация" (not enforced: no history of these sessions yet) |
| D 4 kHz / 2–4 ms / 50 Hz | yes, with a catch: width ≤ 125 µs; per burst the same charge as 1 kHz (8 × 125 = 2 × 500 µs) but felt weaker — a higher level for the same feel | phase D; 2 ms after B, 4 ms after C / pump |
| E muscle pump "7 Hz or other" | undefined in the spec | 7 Hz in 4 s / 4 s rhythm (our choice, to be tuned on a person) |
| CONTINUOUS 1 / 4 kHz | possible (no bursts) | not used: spec marks it experimental, nothing to gain over D |
| 30–50 Hz, "2 or 4 ms", "5–10 min" ranges | need one starting value | one value per phase, changeable on the screen |
| §7 different modes per channel at once (CH4 sensory while CH1–3 motor) | **no** — one width / waveform / burst for all channels (per-channel Hz only); 4 kHz on one channel cuts every channel to 125 µs | all channels run the same phase |
| §3.3 impedance, §3.4 current density, §8 pre-check / monitoring, REDUCE → PAUSE → SAFE STOP | **no** — no sensor on the suit | the tablet's limits instead: level ≤ 99 %, burst duty ≤ 20 %, soft start each phase, ramps, fixed minutes, the suit's own 1.5 s watchdog, stop / pause by the trainer; stop criteria are watched by the trainer (info sheet) |
| §3.6 blocking item 2 "Depth 50–511" | answered | it is the **pulse width in µs** (register 3), not the amplitude; strength is a separate 0–99 % register |
| §3.6 the rest (max current / voltage, current vs voltage control, biphasic & charge balance, isolation, temperature) | cannot be measured from the app | needs a bench test (oscilloscope + load resistor) — until then no numeric medical limit, as the spec says |
| channel map CH1 abs, CH2 / CH3 left / right thigh, CH4 glutes | conflicts with the app's model: a channel maps to one XEMS slider (front thigh / back thigh / glutes …), there is no left / right | not changed; the owner sets it in Settings → Костюм bodytech; procedures pick channels by zone |
| §10 1 intensive session a week for 8–10 weeks, then ≥ 4 days apart | rule fits | in every motor procedure's "Курс" text; not enforced (these sessions are not in the client history yet) |
| §4 evidence levels | agreed | names / goals say "подкрепа", "не е лечение на лимфедем", 10 Hz = experimental |

Evidence notes (literature, not measured on this suit): burst-modulated kHz current — 1 kHz with 2–4 ms bursts gives
the most torque of the kHz options, 4 kHz is the most comfortable and the weakest (Ward et al.); reviews comparing
it with plain low-frequency pulses find no torque advantage for the kHz current. On this suit the plain pulses are the
proven path; the kHz phases are the owner's "modulation" and their feel is to be checked on a person.

## Interferential (IFC)
Two channels carry carriers a few Hz apart (A = 1st, B = 2nd channel of a pair; two pairs = four channels; an odd one
out stays silent). The beat appears where the electrodes cross. The suit's period is a whole number of µs, so the beat
step is ≈ f² / 10⁶ Hz: 4 Hz at 2 kHz, 2 Hz at 1.4 kHz. That is why the 2 Hz protocol uses a 1.4 kHz carrier
(`BtAus.ifcPair` picks the pair closest to the wanted beat; the screen shows the real one). The sweep keeps A fixed and
moves B (`ifcB`). Width is cut to half the shorter period.

## Left out on purpose
- **Microcurrent (50–500 µA):** the suit's smallest step is a % of its range, not µA — no way to know the current.
- **HIFES + RF (face):** no RF, face electrodes, supramaximal — not this suit.
- **Electroporation, kilohertz nerve block, hormone claims (GH +400 %, testosterone +150 %):** not protocols; the
  hormone figures are a single-study headline, not used as a basis for any default.
- Doc numbers that conflict inside the source: "burst duty 10–20 %" = 2–4 ms of 20 ms, matches; "2 Hz beat at 2 kHz"
  does not exist on this hardware (see above).

## Safety
Contraindications (pacemaker / implants, pregnancy over abdomen and lower back, active cancer, uncontrolled epilepsy,
thrombosis, wounds under electrodes; doctor first: neuropathy, heart disease, controlled epilepsy, metal implant, skin
allergy) are behind "ⓘ Противопоказания" next to Start. Start is blocked without a zone (IFC: without a pair).
Each session starts with a ramp, a resume ramps up over 2 s, pause / stop / closing the screen = SEL off; the suit's
own watchdog + the 1.5 s renewal switch it off if the tablet dies. Do not use together with a plain TENS on one area.
