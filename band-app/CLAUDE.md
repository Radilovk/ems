# band-app — Xiaomi Vela quick app (Band 10, 212×520)

- Source: `src/app.ux` (app-level state, link to phone), `src/pages/*/index.ux` (template/script/style blocks —
  use `python3 ../scripts/repo-map.py outline <file>` first; train page is 1100+ lines), `src/common/*.js`.
- Bulgarian is the source; English is generated at build: `scripts/gen-lang.py` + `scripts/en.json`
  (new BG phrase ⇒ add its EN entry). Shared CSS is stamped in by `scripts/gen-pages.py` from `scripts/common.css`.
- Build: `bash build.sh` → `xems-band.rpk` + `xems-band-en.rpk` (needs node ≥18, npm install first time).
- Tests: `bash scripts/test-band.sh` (node tests in `test/`, no emulator). UI frames: `python3 scripts/gen-train-preview.py
  idle|running|multi out.png` — never the Vela emulator. Details: `test/README.md`, `docs/screen-preview.md`.
- Version bump = three places: `src/manifest.json` versionCode/versionName, `src/app.ux` `APP_VERSION`,
  `branding/java/.../wearable/BandAppInstall.java` `VERSION` (then compile-wearable-java.sh + APK rebuild).
- Any change under `src/` or `scripts/` ships only with rebuilt `.rpk` files **and** a rebuilt `xems27.apk`
  (the APK embeds the rpk via `scripts/apply-band-app.py`).
- Tablet side of the link: `branding/java/src/com/isaigu/gymapp/wearable/` (`BandRemote`, `xiaomi/XiaomiBandSpp*`).
- UI baselines that must not drift without a decision: `docs/ui-versions.md`.
