# Training screen — focus layout (1.1.412)

Code: `ai/FocusBoard` (compile-wearable; installed with the other `ai/` smali). Hook: `XemsNav.onTrainingPanel`
→ `FocusBoard.sync`, `XemsNav.Tick` → `FocusBoard.tick` (1 s); while shown it refreshes every 300 ms.
Idea: the BodyTech mock-ups (landscape) — one client fills the place of the rows.

## Layout
- **Top bar:** client chips (photo from the row, name, dot: green = running, grey = stopped, red = no link) + `+`
  (presses the list's empty slot); modes Основен / Мускули / Кардио / Масаж (press the row's mode buttons);
  time left and battery (read from the row); ⚙ (the row's `setting`); `☰ Редове` → classic rows.
- **Middle:** 5 front muscles left, 5 back muscles right (tap = the header's `buweiN` → PartPick green / yellow / off),
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
