# Training screen — focus layout (1.1.412)

Code: `ai/FocusBoard` (compile-wearable; installed with the other `ai/` smali). Hook: `XemsNav.onTrainingPanel`
→ `FocusBoard.sync`, `XemsNav.Tick` → `FocusBoard.tick` (1 s); while shown it refreshes every 300 ms.
Idea: the BodyTech mock-ups (landscape) — one client fills the place of the rows.

## Layout
- **Top bar:** client chips (photo from the row, name, dot: green = running, grey = stopped, red = no link) + `+`
  (presses the list's empty slot); modes Основен / Мускули / Кардио / Масаж (press the row's mode buttons);
  time left and battery (read from the row); ⚙ (the row's `setting`); `☰ Редове` → classic rows.
- **Middle:** 5 front muscles left, 5 back muscles right (tap = the header's `buweiN` → PartPick green / yellow / off),
  a sideways slide on a chip = that channel's slider (1.1.414: relative to the finger, right = more, 1.2 × chip width
  = 100 %, sent on release via `PartStrength.bar` + `addAllPartValue(0, true)` — the row's channel-bar path; refused
  while music holds the strength or the muscle is off); a tap on a muscle of the figure marks it like its chip
  (`BodyHeat.zoneAt`, 16 dp tolerance; the deltoid has no channel); a marked muscle's point pulses a ring.
  body front | back (`AutoViews.BodyHeat`) lit by each channel's real output (part % × strength).
  Leader lines (`FocusBoard.Leaders`, 1.1.413): chip edge → short level run → the muscle's point on the figure
  (front chips → front figure, back chips → back figure, the half on the chips' side; points = centroid of the zone in
  the idx map, `BodyHeat.anchor`). Marked = lit green / yellow, off = faint.
- **Right:** rings Интензитет 1 (main strength; with muscles marked = their level, ± goes to them via PartStrength)
  and Интензитет 2 (2nd impulse strength); cards Импулс 1 (impulse time ±, Hz ±) and Импулс 2 / Пауза (pause time ±,
  2nd-impulse Hz ±); keys ∿ (double impulse — a synthetic tap, the key reads touches), ▶ / ❚❚, ■ (row's own).

## Rules
- No training logic of its own: row controls are pressed, ± call the same `TrainItem` steps as the right panel's
  ± (`addStrenth` via `MusicSyncBridge`, `addPauseStrenth`, `addHz`, `addPauseHz`) for the client on the board only.
  Safety limits apply at send time (`SafeGuard`), as for every writer.
- The rows stay laid out under the board (wrapped in a FrameLayout tagged `xems_focus_frame`); the focused row is
  scrolled into the list so its views exist.
- Shown when: training page, ≥ 1 client, not in rows mode (`xems_focus` prefs `rows`), and no engine owns the rows
  (Auto board, AI, map — `OutputOwner`; music sync is fine). Otherwise classic rows; the `◎ Фокус` pill brings it back.
- The right panel (■ ▶ + − ⚙) stays global: picked clients (photo tap) or everyone.

## 1.1.415 — phase, rings, lock, colours
- **Phase timeline** over the figures (`Timeline`): the cycle as one thin bar, impulse 1 (cyan) | impulse 2 (yellow) or
  pause (grey), widths = their seconds, a mark per second; the running phase fills with a glowing head, its name and
  the seconds left above it. Clock = `SoftRamp.clock(item)` (the ramp's own phase clock, read only).
- **Colours:** impulse 1 = cyan (`ACCENT`), impulse 2 = yellow (`AMBER`) — ring, card, ∿, "2=1".
- **One key size** (`KEY` = 46 dp) for every − / + of the panel (rings, times, Hz) — inside the original proportions
  (rings 1.25 : impulse cards 1, keys 78 dp; owner 1.1.416: no window grows for it).
- Visualisation from the code (1280×800, not a device shot): `docs/xems-focus-board-phase1.png` (impulse 1 runs),
  `docs/xems-focus-board-phase2.png` (impulse 2 runs).
- **Ring = slider:** slide around the arc, relative (no jump), clockwise = more, ≤ +20 per slide (master slider rule),
  live preview, sent on release as that many − / + steps (`setTo` → `step`).
- **Lock 🔒** between the rings (top): 1 and 2 move together at the ratio taken when it closed (per client,
  `RATIO`; prefs `lock`). **2=1** (bottom): `DoubleImpulse.syncSecond` (= the double-impulse key's hold).
- **Muscles show real strength** (`PartStrength.levels`: part % × the impulse's strength) of the impulse shown — the
  live phase while running, else the ring touched last — in its colour (number + bar); the chip slide works in that
  real value (converted to the channel's share; capped at the impulse's strength).

## 1.1.417 — colours of a marked muscle
- 1st tap = **red**: frame, number and bar in red, the bar = the channel's **main** impulse level.
- 2nd tap = **yellow**: the same in yellow, the bar = the channel's **second** impulse level.
- Unmarked chips follow the impulse on the screen (cyan / yellow). Leader line and pulsing ring take the chip's colour;
  a slide on a marked chip changes the impulse it shows. (Green marks were the old row's; not in this skin.)
