# branding/ — resources patched into the APK

- `java/src/com/isaigu/gymapp/**` — our Java (source of truth). `smali/` — its compiled output (generated; do not
  hand-edit, do not read unless debugging the compiler/installer). `java-stubs/` — vendor class stubs for javac.
- `layouts/`, `drawable*/`, `theme/` — copied/patched into `build/decompiled/res`.
- `design/` + `design-config.yaml` — train-row layouts, applied only with `DESIGN_PIPELINE=1` (default off).
- Maps: `ui-map.yaml` (screens, `@id`s, pipeline), `train-controls-map.yaml` (every control → bean field → BLE).
  Outline them (`python3 scripts/repo-map.py outline branding/ui-map.yaml`) and read only the needed block.
- Before any new UI: the relevant section of `UI-PITFALLS.md`; reuse `widget/XemsUi` (see `docs/xems-ui-kit.md`).
- Signing keys never go in the repo (`*.keystore`/`*.jks` are gitignored). build-apk.sh debug-signs with uber-apk-signer's embedded key (pinned SHA-256 check).
