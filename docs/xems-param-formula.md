# The client's impulse — formula, triggers, log (1.1.321-ai)

Owner: when the client's profile changes (weight, goal, form…) or a scale measurement comes in, the impulse of the
next training is recalculated from everything known about the client and logged. Code: `ai/ParamFormula` (pure,
the formula), `wearable/ParamPlan` (triggers, log, onto the row). Test: `bash scripts/fit-sim/run.sh` (FormulaSim +
FitSim §4).

## Owner's decisions
1. The trainer's hand change is kept as a **difference**: the formula moves, the offset stays (1-a).
2. The formula is ours (below), built on `docs/xems-ems-physiology.md`.
3. Impulse maps (Тренировки), AI and Auto keep their own blocks — **not touched**. The formula drives the manual
   mode's four modes (Основен, Мускули, Кардио, Масаж — active or passive).
4. **No cap** between trainings: trainings may differ completely, on purpose (variety).
5. The formula **decides** the second impulse (on / off, Hz, strength).
6. The log is shown **everywhere**: report (tablet), client card (phone link → server).

## The formula (`ParamFormula.compute`)
Output per mode: Hz, µs (depth), impulse s, pause s, 2nd impulse on/off, its Hz, its strength %. Strength is never set.

| Step | Rule | Basis |
|---|---|---|
| Variant | trainings 1–3 = **adaptation** (85 Hz, 4 s, pause limit ×0.85); then the goal's cycle, one variant per training (`sessions − 3) mod n` | [E:R1] adaptation; variety = owner |
| Variants (Основен) | Tone: Сила 85/4 · Мощност 100/3 · Обем 70/6 · Издръжливост 50/8. Fat: 85/4 · 50/8 · 70/6 · 85/5. Cellulite: 85/4 · 30/10 · 70/6 · 50/8. Massage/drain: 85/4 · 70/5 · 50/6. Each variant also sets Мускули, Кардио, Масаж | physiology §1 bands |
| Depth | 350 µs; fat over the sex norm (M 18 %, F 28 %) +4 µs/%, under −2 µs/%, 300–400; fat = scale, else Deurenberg (1.2·BMI + 0.23·age − 10.8·male − 5.4). Low fitness / 60+ / sensitive −25 µs each, floor 250. Massage 280 ± half the fat term (200–350) | [E:R2] 300–400 µs; fat layer = distance to the muscle [D] |
| Impulse time | the variant's; low fitness or 60+ → max 4 s (not Кардио, not Масаж); high fitness → Мускули +1 s | §3.3, AiPlanner.limitCycle |
| Pause | the **shortest** pause whose steady fatigue peak (§3.1, with the 2nd impulse) stays ≤ F_max(fitness) × share. 60+ or low muscle mass → one fitness level lower. Mins: Основен / Кардио 2 s, Мускули 3 s, Масаж 2 s. + the state's extra seconds (AiPersonal) | §3 fatigue model; MID 85 Hz 4 s → exactly 4 s |
| 2nd impulse | never in Мускули or with drainage; Основен / Кардио: goal fat or cellulite; Масаж: goal massage or cellulite. Hz 6 (8 cellulite), massage Hz/3. Strength 40 / 45 fat / 50 cellulite / 60 massage, −5 low fitness or sensitive | AiPlanner.setPause |

## Triggers and the log (`ParamPlan`)
- Recalculated on: client form saved (`XemsLocalUserForm` → by name), scale measurement (`ScaleScreen.keep`),
  training end (`SessionRecorder`), client into a slot / quick start (`ManualDefaults`, `NextPlan.program`), the
  client's own settings saved (`ClientPrograms.save`).
- An entry is written **only when the result changed**: prefs `xems_param_log`, `u<id>` = JSON array (≤ 60):
  `t, trig, cause[] (what changed in the client: weight, fat, goal, fitness, age, state, training N), var, vi,
  v[4][7], diff[] ("Основен: 85 → 100 Hz, …"), why[]` (+ `…En`). Personalisation off → nothing.

## Onto the row
- New client: `ProgramFit.applyTo` (base program + work time / ramps / zones) then the formula on top.
- Returning client without own settings: the formula on the row's program.
- Own settings (diskette / ⚙): `ClientPrograms` keeps the formula of the save moment (`f<key>`); next time value =
  formula now + (saved − formula then). Saved before 1.1.321: the first load stores "formula then = now" → the saved
  settings stay as they are and follow the formula from then on. A 2nd impulse switched by hand stays as set.
- AI / Auto running or a block program armed → not applied (`ManualDefaults.assisted`).

## Where it shows
- Report (`session-report.html`, rail card "Импулс · защо"): the entry that was in force at the selected
  training, its values per mode and reasons, the next one, and the change log (`ReportBridge.params()`).
- Client card (`client-card.html`, `prm`: last 6 entries — variant, trigger, main line, diff), validated by
  `server/src/card.js` and stored with the card on the server.
