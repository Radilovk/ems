# Australian current on a bodytech suit (1.1.362)

Gear (⚙) of a **bodytech** row → **Австралийски ток**: ready protocols of the 1 kHz burst current, run by the tablet
on that row's suit. Not shown for an XEMS suit (the gear opens the stock dialog there). Classes in
`branding/java/src/com/isaigu/gymapp/bodytech/`: `BtAus` (templates, timeline, interferential maths — pure, tested in
`bodytech/xems/test/BtAusTest.java`), `BtAusRun` (the session: 250 ms tick, pause / resume, finish), `BtAusScreen` (UI).
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

## Templates (starting values; level, minutes, ON / OFF, bursts, waveform are changed on the screen)
| id | burst | cycle | min | start % | zones (sliders) | source part |
|---|---|---|---|---|---|---|
| strength | 50 Hz × 4 ms | 10 s / 40 s, ramp 2 | 18 | 5 | front / back thigh, glutes | А1 |
| hiit | 10 Hz × 2 ms | continuous | 18 | 4 | thighs, glutes, abs, lower back | А2 (50 Hz 10 / 30 s is one tap away) |
| prediabetes | 50 Hz × 4 ms | 10 s / 30 s | 30 | 5 | thighs, glutes, abs | А3 / Б4 |
| cellulite | 100 Hz × 4 ms | 5 s / 5 s, ramp 1 | 25 | 3 | glutes, thighs, abs, lower back | А4 / Б2 |
| atrophy (passive) | 50 Hz × 4 ms | 10 s / 40 s, ramp 2 | 25 | 3 | thighs, calf | Б1 |
| lipolysis (passive) | 10 Hz × 2 ms | continuous | 40 | 3 | glutes, thighs, abs, lower back | Б3 |
| ifc-chronic | 1.4 kHz pair, beat 2 Hz | continuous | 25 | 2 | lower back, back | Б5 |
| ifc-acute | 2 kHz pair, beat 80 ↔ 100 Hz over 6 s | continuous | 20 | 2 | lower back, back | Б5 |
Channels are preselected from the owner's map (slider of each channel, `BtSettings`); each can be toggled. Zone choice
follows the owner's remap, not fixed channel numbers.

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
