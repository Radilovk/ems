# XEMS WiEMS — light tablet app for one WiEMS unit (wiems/app, v1.2)

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

## Build / test
```
sh scripts/build-wiems-app.sh     # → wiems/dist/xems-wiems.apk (committed); version in wiems/app/VERSION
sh wiems/app/test/run.sh          # session ops (golden) + screenshots of the real XView at 1280×800 (Java2D shim)
```
dx-safe Java (no lambdas / anonymous classes — the build refuses a `$1` class). Bump `wiems/app/VERSION` on every change.

## Not verified yet
On the Lenovo itself and with the real unit (as for the XEMS driver: strength scale, the unit's behaviour on a lost
link — `docs/xems-wiems.md` "First test").
