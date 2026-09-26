# band-app — Xiaomi Vela quick app (Band 10, 212×520)

- Source: `src/app.ux` (app-level state, link to phone), `src/pages/*/index.ux` (template/script/style blocks —
  use `python3 ../scripts/repo-map.py outline <file>` first; train page is 1100+ lines), `src/common/*.js`.
- Bulgarian is the source; English is generated at build: `scripts/gen-lang.py` + `scripts/en.json`
  (new BG phrase ⇒ add its EN entry). Shared CSS is stamped in by `scripts/gen-pages.py` from `scripts/common.css`.
- Build: `bash build.sh` → `xems-band.rpk` + `xems-band-en.rpk` (needs node ≥18, npm install first time).
- **See every screen:** `node preview/render.mjs <outDir> [filter]` → `<outDir>/sheet.png` — real template + page CSS +
  page script with mock states from `preview/scenes.mjs` in headless Chromium (~1 s). Run `python3 scripts/gen-pages.py`
  first after editing `scripts/common.css`. Approximate fonts; use it for layout/overflow/state checks, then Read the PNG.
- Tests: `bash scripts/test-band.sh` (node tests in `test/`, no emulator). UI frames: `python3 scripts/gen-train-preview.py
  idle|running|multi out.png` — never the Vela emulator. Details: `test/README.md`, `docs/screen-preview.md`.
- Version bump = three places: `src/manifest.json` versionCode/versionName, `src/app.ux` `APP_VERSION`,
  `branding/java/.../wearable/BandAppInstall.java` `VERSION` (then compile-wearable-java.sh + APK rebuild).
  No Android SDK → the constant is inlined in smali: `BandAppInstall.smali` (field, two `const/16`, `"N/"` string) and
  `WearableSettingsSection.smali` (`const/16` after `getBandAppVersion`). `apply-band-app.py` fails the build on a mismatch.
- Any change under `src/` or `scripts/` ships only with rebuilt `.rpk` files **and** a rebuilt `xems27.apk`
  (the APK embeds the rpk via `scripts/apply-band-app.py`).
- Tablet side of the link: `branding/java/src/com/isaigu/gymapp/wearable/` (`BandRemote`, `xiaomi/XiaomiBandSpp*`).
- UI baselines that must not drift without a decision: `docs/ui-versions.md` (train v2/v3, home cards, modules v4).
- Graphics: bake effects into PNGs with `scripts/gen-art.py` / `gen-bg.py` (never CSS gradients/shadows); put
  them as `background-image` of a sized div; keep `python3 scripts/check-art.py` green (memory per page).
  Do not run `gen-icons.py` — it draws the reverted v4 set over the shipped v3 icons.
- Lightness rules: no infinite animations; lists via `putList` (ui.js); mutate list items in place for per-second text.
