# XEMS WiEMS — light tablet app for one WiEMS unit (wiems/app, v1.4)

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

## Build / test
```
sh scripts/build-wiems-app.sh     # → wiems/dist/xems-wiems.apk (committed); version in wiems/app/VERSION
sh wiems/app/test/run.sh          # session ops (golden) + screenshots of the real XView at 1280×800 (Java2D shim)
```
dx-safe Java (no lambdas / anonymous classes — the build refuses a `$1` class). Bump `wiems/app/VERSION` on every change.

## Not verified yet
On the Lenovo itself and with the real unit (as for the XEMS driver: strength scale, the unit's behaviour on a lost
link — `docs/xems-wiems.md` "First test").
