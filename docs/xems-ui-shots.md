# Off-device screenshots of our own screens (`tools/ui-shot`)

Owner, 2026-11-24: "the interface is awful — elements on top of each other" — it was never looked at before shipping.
Every screen built in our Java (XemsUi, AiWizard, AutoBoard parts…) is drawn here before it goes to the tablet: the
real Android views, the real layout and drawing (Robolectric, native graphics), the tablet's size, PNGs to look at.

- Run: `sh tools/ui-shot/run.sh` → `tools/ui-shot/out/*.png` (one shot per screen and height).
- The shots: `tools/ui-shot/src/test/java/**/Shots*.java` (`xems.Shots.shot(view, wDp, hDp, name)`; mdpi, 1 dp = 1 px).
  A screen of the `ai` package: a test class in that package (package-private builders), e.g. `ShotsAi`.
- The board's place on the training screen: 1160 dp wide (AutoBoard.DESIGN_W), 330–460 dp high — shoot both.
- First run downloads Robolectric and two Android images (≈ 300 MB, `~/.m2`); after that it runs offline (~10 s).
- Seen in the first shots (1.1.542): a single-line centred TextView draws its text out of view (use `setMaxLines(1)`),
  number steppers wrapped digits onto separate lines — both invisible in code review, obvious on the picture.
- Not covered: vendor XML screens (the rows, the stock dialogs) — those need the tablet.
