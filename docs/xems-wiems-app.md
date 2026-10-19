# XEMS WiEMS — light tablet app for one WiEMS unit, XEMS or bodytech suit (wiems/app, v1.18)

Owner (2026-10-16): a separate APK for a small 8" tablet (Lenovo Tab M8 HD, 1280×800, 2 GB RAM), only for WiEMS,
light, **in the same design and style as the XBody screen**. Not the XEMS app: no vendor APK, no music / AI /
server / band — one Activity, one painted View, ~40 KB APK, a few MB of RAM.

## What it is
| file | job |
|---|---|
| `wiems/app/src/bg/xems/wiems/XView.java` | the screen: XBody's manual-training screen as the XBody panel paints it (panel.cpp) — header, zones in two columns, body front / back, timer hump + ВСИЧКИ + phase box, СТАРТ / ПАУЗА / СТОП, MASTER hump, slider bar −/+, % bubble, "Настройки на сесията", XBody's red confirm band |
| `Session.java` | the unit's training: the panel's `Suit` (WIEMS / XEMS / BODYTECH) in Java — program, strength, zones, clock, soft rise, count-down, one op in flight |
| `Dev.java` | the unit kinds (WiEMS / XEMS / bodytech): which one an advertisement is (service, else name — the panel's `suitKind`), their names |
| `XemsProto.java` | XEMS suit frames (the panel's `xemsproto.cpp`); bodytech frames = the shared `branding/…/bodytech/BtProto.java` |
| `Ble.java` | Android BLE: scan for all three kinds, connect, WiEMS: vendor service + battery, run / battery notifications; a suit: its write + notify characteristic; one write at a time |
| `MainActivity.java` | the glue: views (no BT / permission / BT off / list / linking / training), 50 ms tick, saved program + last unit |
| `Channels.java` | which unit channel drives which body part, per suit standard (XBody / XEMS): starting maps, the service mode's "felt in …" swap, saved in the prefs (`channels`) |
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

## v1.7 — the unit still pauses when one channel is raised (owner): evidence first
- **Trace** (`Trace.java`): every write to the unit (name + bytes), its ack or rejection, every notification — run,
  battery, and now also, as the vendor subscribes them, the unit's status / current check (`b1f5a058`) and its clock
  (`7764f042`) — every zone / strength change, START / PAUSE / STOP and why the unit was taken as stopped ("00" from the
  unit vs. no "01" for 5 s). File: `Android/data/bg.xems.wiems/files/wiems-log.txt`; **a long press (1.2 s) on the
  logo** sends it (any app: Viber, mail, Drive). The pause note says which of the two it was.
- Strength writes at most every **600 ms** (the vendor: ≥ 0.8 s). A held "+" on a zone changed its byte on every
  repeat (~4 writes / s) while a held "+" on СИЛА changed it every ~5th — the one difference between "one channel"
  and "all together" on the wire; a unit limit on the write rate is a candidate for the stop.
- v1.8: the vendor's pace exactly — a strength change goes when the finger has settled (0.3 s) and ≥ 0.8 s after
  the previous one (a start / a phase still at once).
- With ВСИЧКИ on, a tap on a zone selects **that** zone (it used to take it out and raise the other nine).
- **The zones and СИЛА stay as set** — across trainings, links and app restarts (owner); no reset at the end.

## v1.9 — the trace from the unit: it trips on one channel
Owner's trace (1.8, Lenovo MNA-LX9): all zones at 25 % (byte 5) run fine; Корем (ch 6) raised to 45 % → `currents
05 05 05 05 05 05 09 05 05 05` → the run characteristic notifies **`86`** then `00` ~30 ms later — the unit stopped
itself. Every ▶ after that: count-down, the same strengths → `86`, `00` again (the "it pauses and won't come back"
of 1.4–1.8: the app re-sent the same strength each time). **`0x80 | n` = the unit's protection tripped on channel
n** (here 6 = Корем; the vendor's own `0x80` bits in the currents bytes are likely the same channel flag). The
strength itself is in the vendor's range (it sent up to 18), so the likely cause is that zone's electrode / contact.
Now: the zone the unit names goes back to 0, the note names it ("провери електрода"), ПРОДЪЛЖИ runs without it; the
simulated unit trips the same way (UnitSim 11). To confirm the channel meaning: raise another single zone — the code
should follow it (`84` for Ръце, …).
Also in the trace: the status characteristic (`b1f5a058`) at each work start sends `…a5…` then 20 values 1–2
(per-channel load / contact, likely); idle it carries `00 00 00 00 0N … c5 5c`.

## v1.10 — `86` is the unit's current protection, not a channel (second trace)
Second trace (no suit on, Cardio 7 Hz): all zones together at bytes 2, 3, 4, 1 ran; Предно бедро (ch 7) alone one step
higher (`01 01 01 01 01 01 01 02 01 01`) → `86`, `00` again — the same code as for Корем (ch 6). So `0x86` is a code,
and the trigger is **one channel set apart from the others with no load**. The status characteristic at each work
start carried per-channel readings that grow with the set level (byte 1 → ~2, byte 4 → ~4–5): the unit measures its
outputs and, with nothing on, sees them equal while they are set unequal — its "set vs. measured" check (the vendor's
`Curr_comp`) stops it. The vendor's capture (suit on, readings 0–1 at bytes 9–18) ran unequal channels fine.
The app now: on `0x80|x` restores the zones and strength the unit last ran with (not "zone n → 0"), names the zone
whose change set it off, says that without a suit the unit takes no unequal zones; a change made on pause that trips
on ▶ is undone the same way (UnitSim 11). **To confirm on the unit: a suit on and wet, then one zone alone.**

## v1.11 — the real cause: the strengths need the vendor's check bits
Third trace (suit on, a person in it): all zones at byte 4 ran; two zones 4 → 7 ran (`…04 07 07 04…`, XOR 0); one
zone 4 → 8 → `86`. The vendor's capture decoded: bit 7 of channels 3..7 carries the 5-bit XOR of the ten values
(`wiems/PROTOCOL.md`). Every write of ours lacked it — fine only while the XOR was 0 (all channels equal). Fixed in
the shared `WiProto.currents` (byte-exact with the vendor's frames) → this app, the XEMS APK 1.1.449-ai and the XBody
panel (mod v15); the scale `WiProto.unit` moved there too (XEMS / XBody sent % 1 : 1 — 5× the vendor's top). The
simulated unit now trips exactly on a missing check (UnitSim 11). The 1.9 / 1.10 "86 = channel / no load" readings
were wrong; the restore-on-trip stays as a safety net.

## v1.12 — both suit standards, switchable (owner)
"Настройки на сесията" → КЛИЕНТ: **Костюм XBody | Костюм XEMS** (saved; changed only while not running). XBody: a
zone drives the unit's channel of that name (`Session.ZONE_CH`). XEMS: an XEMS suit on the unit's XBody-standard
leads — each zone drives the lead that reaches it, the owner's table as on the XBody panel (`ZONE_CH_XEMS`
= xbcable::xemsLead: Ръце→Корем, Гърди→Допълнителен, Корем→Задно бедро, Предно бедро→Предно бедро, Гръб→Седалище,
Трапец→Кръст, Кръст→Гръб, Седалище→Трапец, Задно бедро→Ръце, Прасец→Гърди). Zones keep their % on a switch;
procedure weights follow the body part. The header says "XEMS костюм" when on.

## v1.13 — picking and sliding like the XEMS focus board (owner)
- **A pick ends by itself after 5 s with no touch** (`XView.SEL_IDLE_MS`): back to СИЛА. Any touch counts — another
  zone, the slider, ± (held too), the figure, anywhere on the screen. Not while a finger is down or the sheet is open.
  The "new client = ВСИЧКИ" default is gone (it would just time out).
- **A tap on a muscle of the figure picks its zone** like its label (then ± / the slider move it).
- **A sideways slide on a zone label = that zone's strength** — the XEMS focus chip (`docs/xems-focus-board.md`):
  relative to the finger (starts after 12 units, no jump), right = more on both columns, the label's width = 20 %,
  ≤ 20 per slide, the value and a thin bar on the label and the big % card while sliding; an unpicked zone is
  picked first; it goes out on release (one write).

## v1.14 — the two 1.7 lines merged (owner: "the changes in main are missing here")
Two sessions built 1.7+ at the same time: this line (1.7–1.13: trace, vendor pace, trip handling, check bits, both
suit standards in the sheet, 5 s pick, label slide) and main's 1.7–1.8 (below). 1.14 has both:
- **Zones are body parts** (`Session.ZONE_PART`, XBody's measured order, 5 Корем / 6 Седалище); the unit channel
  comes from `Channels` (per suit, set by the service mode). The 1.12 tables `ZONE_CH` / `ZONE_CH_XEMS` are gone: the
  sheet's **Костюм XBody | XEMS** now sets `Channels.suit` (not while running), the same switch as the service panel;
  a saved `wiring_xems` from 1.12–1.13 becomes `suit = XEMS`. Note: `Channels.DEFAULT[XEMS]` follows the measured
  order, so Гръб / Ръце of an XEMS suit land on к.7 / к.6 (1.12: к.6 / к.7).
- Trip restore (`accepted` / `onAir`) and the zones kept across restarts work per body part, independent of the map.
- **Logo hold:** on the training screen 2 s = the service mode (main); its panel has **Лог** (the unit trace);
  elsewhere a 1.2 s hold still shares the trace. No 5 s auto-unpick and no label slide inside the service mode.
- Check bits on every frame (main's tests had none): expectations recomputed.

### Channel map per suit + hidden service mode (parallel 1.7)
**Where the error came from.** The WiEMS channel order was written as "XBody's order" from the *first, static*
decode of XBody's channel table, which had abdomen / bottom swapped (5 Седалище, 6 Корем). XBody's order was later
**measured** (docs/xbody-protocol.md "Measured", mod v7: 5 Корем, 6 Седалище) and fixed for XBody's cable — but the
WiEMS copies kept the old one (`Session.ZONE_CH`, and `Procs.UEMS_TO_CH` swapped the procedure weights to match).
On top of that the whole order is an assumption ("a WiEMS suit = an XBody-standard suit"): the unit's channel →
connector pin was never measured, and an XEMS-standard suit had no map at all.

**Fix, smallest that holds.** Everything on the screen and in the procedures works on **body parts** (XBody's
measured order); the unit channel of a part comes from the **suit's map** (`Channels`) only where the strengths go
out (`Session.levels`). Two maps: XBody suit (starts = XBody's measured order) and XEMS suit (starts from the owner's
XEMS → XBody table). The training screen never changes — only which channel a zone drives.

**Hidden service mode** — hold the logo (top left) **2 s** on the training screen (again, or "✓ Готово", to leave):
- the body figures give way to a panel: **Костюм XBody | Костюм XEMS** (the map in use and being set — it stays the
  suit used after leaving), and the ten body parts with the unit channel behind each (`к.N`);
- tap a zone (one at a time), СТАРТ, raise its % a little, feel where it works, tap that part in the panel:
  the same part → **✓ checked** (green, also a ✓ badge on the zone button); another part → that channel now belongs
  to the part felt (✓), and the zone gets the channel that part had — try it again; "Проверени N / 10";
- **Отначало** = the suit's starting map again; on leaving: a running unit pauses, every zone 0, the map is saved.
Tests: `AppTest` (swap, save / load, a broken saved value, a remap while running = one write, the service screen
taps; shots `7a`–`7d`), `UnitSim` uses `Session.unitCh`.
**Still open:** the XEMS tablet (`WiTranslator.SLIDER_TO_CH`) and the XBody panel (`WI_ZONES`) keep the old WiEMS
order — once the service mode has checked both suits, port the two maps (the `к.N` column) there.

### Figures with relief, a slider that needs its fader (parallel 1.8)
- **The figures read as a grey blot** (no contrast): the art is nearly flat (half the body in 52..68 / 255) and the
  v1.2 lift (85 + 0.65·v) kept that 16-step range. `BodyFig.lighten` now spreads the figure's own range: 3×3 blur
  (no webp grain) → its 1..99.5 % luminance stretched, ⅓ by its histogram (the muscles' relief) → deep slate
  #3F4552 … pale cool grey #EEF0F4, plus a soft slate rim on the silhouette (it stands off the light background).
  The working zones' red takes the same tone (volume in the red too); a light impulse starts at 45 % opacity
  (was 28 %: a pink haze).
- **The slider moves only from its fader**: a touch / tap / swipe on the bar beside the chip (±34 design units)
  changes nothing; a grabbed fader follows the finger by how far it moved (no jump to the touch point) and waits
  for 3 units of real movement. − / + stay as they are. Tests: `AppTest` "the fader …".

## v1.15 — XEMS and bodytech suits, dark theme, the measured WiEMS map (owner)
- **Three kinds in one list** ("ИЗБЕРИ УСТРОЙСТВО"): WiEMS, an XEMS suit (service FFF0 / Nordic UART, names nbee / nord /
  NB- / …ems…) and a bodytech suit (FE50, EMS08-… / TZLJ / ADT). The tile says the kind; the header's small label after
  the logo too; the last unit (and its kind) reconnects by itself. Same screen, same programs, procedures, double
  impulse, limits — only the driver differs (`Session.kind`), ported from the XBody panel's `suit.cpp`:
  - **XEMS**: the tablet runs impulse / pause / the soft rise (4 steps over the ramp) as the stock XEMS row: link = F2 +
    battery; ▶ = F1, then cmd 1 (every channel's % + the strength) + cmd 3 (Hz, width 350 µs — Relax 150 —, on / off
    s, output on); pause phase = cmd 3 output off; the double impulse = its % and Hz₂ in the pause; ⏸ / ■ = output off +
    F2; battery every 10 s. Continuous (Cardio) keeps the output through the rest.
  - **bodytech**: the link programs the suit (~110 frames: battery init, SYNC, RESET, 8 × 13 registers, all off; ▶
    waits for it, "МИГ…"); SYNC 6 s every 4.5 s, battery every 10 s. The XEMS row's later lessons are in: every
    mapped channel switched on once per start, a pause = strength 0 with the channels on (1.1.450), a new Hz on running
    channels (the double impulse) = registers first, then SEL off → on back to back (1.1.452 / 1.1.453); only what
    changed is written (what the suit has = what was sent + what is still queued). 7 zones (4 + 3): **Бедра** (both
    thighs, C5 + C7), Седалище, Корем, Кръст | Гръб, Трапец, Ръце — no chest / calf (the figure leaves them grey).
    One layout (C1 Кръст … C8 Корем, the owner's from the XEMS row): no service mode, no suit switch.
- **Channel maps per kind** (`Channels.DEFAULT[kind][suit]`), the suit standard per kind (WiEMS starts on XBody's,
  an XEMS unit on its own suit; the sheet's Костюм XBody | XEMS switches the one in use). An XEMS unit with an XBody suit
  = the panel's `XEMS_ZONES_XBODY`. Saved: `channels` = "suit;w0;w1;wok0;wok1;x0;x1;xok0;xok1;xsuit" (1.14's five
  fields still load). Zones are kept per body part (`part0..9`; 1.14's `zone0..9` read once).
- **WiEMS + XBody suit, measured** (owner's service-mode photo, 9 / 10 checked): Предно бедро к.9, Задно бедро к.1,
  Седалище к.2, Корем к.6, Кръст к.3 | Гръб к.5, Трапец к.4, Гърди к.7, Ръце к.8, Прасец к.10 (the one left) — the new
  start. WiEMS + XEMS suit = the owner's XEMS → XBody lead table on that map. A saved 1.14 map still at the old start
  and never checked moves to the new one; a checked one stays.
- **Dark theme**: the moon / sun in the header's right block (list, program screens) and top right of "Настройки на
  сесията"; saved (`dark`). Slate surfaces on a near-black grain, the same red / green / yellow, the figures stay
  light; XBody's own program tiles in both themes (v1.16, owner: the drawn stand-ins were ugly and unlike light) —
  the tiles are see-through (a 30 % slate rim + the red / green icon), so on dark only the rim turns INK (`darkTile`).
  **v1.17 figures on dark** (owner: the silver figures were unaesthetic on dark): `BodyFig.artDark` = the same tone
  mapped to graphite (`G_DARK` … `G_LIGHT`) with a cool rim light (`G_RIM`) instead of the light theme's slate rim —
  the body sits back, the values lead. Working zones: `shadeDark` (saturated, lights only a little paler), a weak
  impulse = deeper red (not pink), a soft halo (`BodyFig.glow`, two box-blur passes of the zones) drawn between the
  figure and the zones. Light theme unchanged (shots 1–7 pixel-identical).
  Colours are theme tokens in `XView.theme` (SURF, INK, LINE, …); WHITE stays for text on coloured fills.
- Tests: `SuitTest` (XEMS frames = the panel's goldens, an XEMS and a bodytech session, keep-alive, the double
  impulse's restart, advertisement kinds, maps per kind); `AppTest` keeps the WiEMS protocol checks on an identity map
  and checks the measured one on its own; shots `8a`–`8e` (dark list / programs / bodytech training / sheet, XEMS).
- The measured map is also in the XEMS tablet (1.1.457-ai) and the XBody panel (mod v20) — `docs/xems-wiems.md`
  "Channel map — measured". Not yet tried: XEMS / bodytech suits with this app on the Lenovo.

## v1.18 — smooth figures (owner: "jagged at the edges, smeared inside")
- The figures come from `wiems/app/body/<key>-art.webp` (light) / `-dark.webp` / `-idx.webp`, made by
  `scripts/gen-wiems-figures.py` (via `scripts/figure_looks.py`, shared with the XBody panel) from the report's
  full-size art at 500 px (372 design px × 1.33 on the Lenovo): every step at full size, one premultiplied Lanczos
  downscale, lossless WebP. `BodyFig` only loads them — the run-time stretch / 3×3 blur / hard-mask rim of 1.15–1.17 on
  the 640-px lossy copies made the stair steps and the smear.

## Build / test
```
sh scripts/build-wiems-app.sh     # → wiems/dist/xems-wiems.apk (committed); version in wiems/app/VERSION
sh wiems/app/test/run.sh          # session ops (golden) + screenshots of the real XView at 1280×800 (Java2D shim)
```
dx-safe Java (no lambdas / anonymous classes — the build refuses a `$1` class). Bump `wiems/app/VERSION` on every change.

## Not verified yet
On the Lenovo itself and with the real unit (as for the XEMS driver: strength scale, the unit's behaviour on a lost
link — `docs/xems-wiems.md` "First test").
