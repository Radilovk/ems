# XEMS WiEMS — light tablet app for one WiEMS unit (wiems/app, v1.6)

Owner (2026-10-16): a separate APK for a small 8" tablet (Lenovo Tab M8 HD, 1280×800, 2 GB RAM), only for WiEMS,
light, **in the same design and style as the XBody screen**. Not the XEMS app: no vendor APK, no music / AI /
server / band — one Activity, one painted View, ~40 KB APK, a few MB of RAM.

## What it is
| file | job |
|---|---|
| `wiems/app/src/bg/xems/wiems/XView.java` | the screen: XBody's manual-training screen as the XBody panel paints it (panel.cpp) — header, zones in two columns, body front / back, timer hump + ВСИЧКИ + phase box, СТАРТ / ПАУЗА / СТОП, MASTER hump, slider bar −/+, % bubble, "Настройки на сесията", XBody's red confirm band |
| `Session.java` | the unit's training: the panel's `Suit` (WIEMS) in Java — program, strength, zones, clock, soft rise, count-down, one op in flight |
| `Ble.java` | Android BLE: scan "WIEMS…", connect, vendor service + battery, run / battery notifications, one write at a time |
| `MainActivity.java` | the glue: views (no BT / permission / BT off / list / linking / training), 50 ms tick, saved program + last unit |
| `Procs.java` | the ready programs: XBody's modes (Мускули / Кардио / Релакс) and the 7 passive procedures (the XBody panel's `xbprog`, plans per length identical) |
| `Safe.java` | the absolute limits (same rules as the tablet and the panel) |
| `branding/…/bodytech/WiProto.java` | the unit's frames — the same file the XEMS APK uses |

Layout on 16:10: 600 design units high, as wide as the screen (1280×800 → 960); the left column stays left, the
right column goes to the right edge, body / clock / MASTER stay centred; zone buttons a bit wider than XBody's
175 (room for the names). Landscape only (`sensorLandscape`), full screen, screen kept on.

Behaviour = the XBody panel with a WiEMS unit: ▶ starts the unit (its ~4 s count-down, "МИГ…") and the clock runs
when the unit does; phases set strengths (pause = 0); pause / stop = strengths 0 + run stop. Channels in XBody's
order. Width is not shown (the unit keeps its own widths). The last unit reconnects by itself.
Permissions: location (Android ≤ 11 needs it for BLE scans; targetSdk 29 also on Android 12+). Closing the app
stops the unit.

## Look (v1.1, owner: XBody's design level or better, never lower)
- The body: the XEMS anatomical figures (`branding/body`, female by default, male by choice — Настройки на сесията →
  КЛИЕНТ, also mid-training). Every zone in XBody's red, **as strong as its impulse now** (light at a low strength,
  deep at a high one, nothing in the pause); a selected zone that gives nothing is tinted lightly, as XBody lights its
  selection; a tap on a muscle selects its zone (`BodyFig`: the zone maps, the tablet's recolour that keeps the volume).
- XBody's elements redrawn in vector from its own pictures' measurements: the off-white grain background
  (MainWindowBg 247..255), the slider bar (slate #313741, recessed track, the LED line green → blue → violet → red with
  its glow, sampled from SliderLeds), the light fader chip, the MASTER hump (slate / red), the timer hump. Our logo
  (red disc with the X + EMS) in place of XBody's. No XBody picture is copied.

## v1.2 — lighter figures, double impulse, ramp (owner)
- Figures lifted to a light, slightly cool grey (85 + 0.65·v; `BodyFig.lift`), softer darks in the red.
- Zone colour in step with the output: light → deep red at 80 %; the second impulse in XBody's yellow.
- "Настройки на сесията": Рампа 0,5–5 s (the unit's Ru, whole seconds), Двоен импулс (switch, Hz₂, % → the unit's
  rest Hz / %; the strengths stay in the pause), limits as the tablet (Hz₂ ≤ 10 and under the main, ≤ 150 %, the
  pause from the fatigue model with the second impulse). Opens also mid-training (program greyed, sex works).

## v1.4 — ready programs, as on XBody (owner: "Както при xbody. Искам ги")
After a link the app opens XBody's **program screen** ("ИЗБОР НА ПРОГРАМА", its tiles, red line icons drawn in vector):
- **Мускули / Кардио / Релакс** — XBody's own modes with its defaults, read off its Impulse sheet in the emulator:
  Muscle development 80 Hz, burst 4 s / 2 s, no amplification, 20 min · Cardiovascular 7 Hz **continuous**, interval
  20 s move / 10 s rest, 25 min · Relax 100 Hz, burst 1 s / 1 s, 10 min. Through `Safe.apply` like every program
  (the 80 Hz pause may grow — the absolute limits win). Changeable in "Настройки на сесията" for this session.
  Continuous = the unit's rest at the same Hz, 100 % (`Program.cont`): the impulse goes on, the phase box shows the
  rest in XBody's yellow.
- **Ръчни настройки** — the saved manual program (as before).
- **Пасивни процедури** (in place of XBody's video training) — the XBody panel's page: 7 tiles (Дренаж, Оформяне,
  Антицелулит, Болки в гърба, След раждане, Регенерация, Пасивен метаболизъм; Health Icons CC0 from
  `xbody/overlay/opt/xems/art`), the chosen one right with its length (10 = after a training / 15 / 20 / 25 / 30, its
  own with a dot), its phases in proportion, the strategy → НАПРЕД. `Procs.plan` = `xbprog::plan` (checked: the same
  phases for every procedure × length).
- Playing a procedure (`Session` with a `Procs.Plan`): at a phase change outputs 0, the unit gets the phase's program
  (Hz, work / rest, Ru / Rd) with phase 0 and its rest (the second impulse) — as the vendor's program write right after
  the count-down — then the levels. Each impulse: channel = trainer's level × strength × the phase's share (envelope ×
  zone weight, or the drainage wave: one group per impulse, the previous at 50 %, a rest step = 0). 3 ↔ 8 Hz alternates
  by impulse (a program write). Pulse width stays the unit's. Header: the procedure's name, right = Hz + phase now.
- ← Програми (header left, only while nothing runs) goes back; the unit's name still disconnects.

Unverified on the unit: that it takes a program write mid-run (phases, 3 ↔ 8 Hz) — if not, it keeps the previous
phase's rhythm (still within limits) while the shares still follow the procedure.

## v1.5 — fixes from the first test on the unit (owner)
- **A single zone stopped the unit until a power cycle.** Our traffic differed from the vendor's (capture +
  its log "CCC-Corrientes enviadas"): we sent strengths **0..100** (the vendor's top is ~19: 94 % → 18, 80 % → 15,
  61 % → 12), wrote **0 in every pause and the levels at every impulse** (4 steps of an app-side rise), and a finger on
  the slider made dozens of writes. Now as the vendor: the strengths are written **only when they change** (at most
  every 250 ms, a newer value replaces a waiting one, the same value is never repeated), never at a work / rest change
  (the unit runs its own phases and its rise Ru), on the vendor's scale (`Session.unitValue`, 100 % = 20). A unit
  that stops by itself (run notify `00`) puts the session on pause with a note; ▶ arms it again.
- **Every zone starts at 0**, raised one by one (or ВСИЧКИ); СИЛА starts at 100 % and scales them all.
- **Ramp** = the unit's Ru in whole seconds, 0 … impulse − 1 s (a shorter impulse lowers it); ≥ 20 Hz with an
  impulse ≥ 2 s rises at least 1 s (`Safe.apply`).
- **The program screen uses XBody's own tiles** (its Strength / WeightLoss / Massage / Manual / MED selector pictures,
  normal + pressed, from the machine's resources → `wiems/app/xbody-art`, owner's request); MED = the passive
  procedures.

## v1.6 — real-use scenarios against a simulated unit (`wiems/app/test/.../UnitSim.java`)
The simulated unit follows the capture (count-down ~4 s after `25`, `01` every second, `00` ~1.5 s after a stop, a
late `01` still on air after a stop) and flags what the vendor never does: a strength byte over its top, strengths
while not running, > 4 strength writes / s, an arm-program while running or a run-program while not, a rise ≥ the
impulse. Scenarios: a full training with taps and a pause, a START cancelled in the count-down, a finger on the
slider, A → B → A quicker than a write, the unit stopping by itself, a silent unit, the link dropping mid-training and
in the count-down, a shorter length on pause, every procedure at 10 / 30 min, XBody's modes untouched. Mutations of
the fixes below each fail it. Found and fixed:
- **A quick A → B → A left the unit on B** (the "already sent" mark was set when queued, not when sent).
- **A training that ended behind another app never stopped the unit** (the tick stopped before the last
  "outputs off" went out) — it now ticks until the queue is empty; closing the app waits 0.4 s after the stop write.
- **A dropped link lost the training** (zones, time): it is now kept on pause; the same unit reconnects by itself,
  gets 0 + stop first, and ПРОДЪЛЖИ goes on. A late `01` from before a stop no longer ends a new count-down early;
  a unit silent for 5 s (no `01`) or stopping by itself puts the training on pause with 0 + stop.
- **START cancelled in the count-down** still sent the queued start: now dropped.
- **Several zones + / slider set them all to one value** (arms 30 → 65 with legs at 60): they now move by the same step.
- **A new client** starts with ВСИЧКИ selected (all zones 0, so the slider raises them all at once); when a training
  finishes the zones go back to 0 for the next client. A shorter length on pause keeps the time already done.

## Build / test
```
sh scripts/build-wiems-app.sh     # → wiems/dist/xems-wiems.apk (committed); version in wiems/app/VERSION
sh wiems/app/test/run.sh          # session ops (golden) + screenshots of the real XView at 1280×800 (Java2D shim)
```
dx-safe Java (no lambdas / anonymous classes — the build refuses a `$1` class). Bump `wiems/app/VERSION` on every change.

## Not verified yet
On the Lenovo itself and with the real unit (as for the XEMS driver: strength scale, the unit's behaviour on a lost
link — `docs/xems-wiems.md` "First test").
