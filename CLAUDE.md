# XEMS — agent guide

XEMS Pro = EMS-suit training app for tablets, built by **patching a decompiled vendor APK**
(`com.isaigu.gymapp`, base v0.50 from commit `724be17`) + a **Xiaomi Band 10 quick app** (`band-app/`)
+ a **Cloudflare Worker license server** (`server/`). The user writes Bulgarian → answer in Bulgarian, briefly.
Agent-facing files are in English on purpose (≈2–3× fewer tokens than Cyrillic).

## Token protocol — always
1. **Locate before reading.** `grep -in '<concept>' .claude/MAP.md` — one line per script / Java class / page /
   doc heading, with line count, build-apk.sh position, compile script and purpose. Grep it, never Read it whole.
   Try 2–3 synonyms (EN + domain words: `hz`, `pause`, `band`, `ramp`, `timer`, `license`…) before searching sources.
2. **Big file (>300L)?** `python3 scripts/repo-map.py outline <file>` → methods/defs/sections with line numbers
   → Read with `offset`/`limit` on that range only. Never read a 1000+ line file to find one method.
3. **Docs:** MAP lists every `#`–`###` heading with its line → read just that section.
4. **Search is pre-filtered** by `.ignore`: generated smali (`branding/smali`), `branding/java-stubs`, lockfiles,
   APK/RPK/ZIP/PNG. `branding/java/src` is the source of truth; smali is compiler output. Need smali anyway →
   Bash `grep -rn X branding/smali/` or `rg -uu`.
5. **git is pre-filtered** by `.gitattributes` (`-diff` on smali/apk/rpk/lockfiles → "Binary files differ").
   Use `git log --oneline -15 -- <path>`, `git diff --stat`, `git show --stat <sha>`; `git diff -a` only when the
   smali text itself matters.
6. **Wide sweeps** (many files, only the conclusion matters) → Explore subagent; keep raw dumps out of main context.
7. Long command output → `| tail -40` / `grep -nE 'ERROR|FAIL|Traceback'`. Don't re-read files you just edited.
8. Don't open unless the task needs it: `*.apk`, `*.zip`, `*.rpk`, `Screenshot_*.png`, `docs/*.png`, `build/`,
   `diag-logs/` (crash triage only), `server/src/admin.js` (admin UI HTML).

## How it fits together
- `build-apk.sh`: apktool-decompile base APK → `build/decompiled/` (**wiped every build**) → copy
  `translations/`, `branding/layouts/` → ~70 `scripts/apply-*.py` / `remove-*.py` text-patch smali+XML **in order**
  → `scripts/compile-*-java.sh` (javac + d8 + baksmali: `branding/java/src` → `branding/smali/`) → install smali
  → `verify-*.py` → apktool b → sign → `xems27.apk` + `RELEASE_VERSION`.
  Env: `BETA_MUSIC=1` (default; music/timer/wearable/AI/local stack), `DESIGN_PIPELINE=0`, `SKIP_JAVA_RECOMPILE=0`.
- Compile needs `android-sdk/platforms/android-30/android.jar` + `build-tools/30.0.3/d8` in repo root (gitignored).
  **Missing SDK ⇒ compile scripts silently keep the prebuilt smali ⇒ Java edits are NOT shipped.** Check first.
  Cloud session (no dl.google.com): `bash scripts/setup-android-toolchain.sh` (android.jar from Maven Central, d8 → dx
  wrapper, baksmali). dx ≠ d8 output, so after `compile-*-java.sh` keep only the smali of classes you changed (with
  their `$Inner` classes — never mix dx outer + d8 inner) and `git checkout` the rest of `branding/smali/`.
  Then build the APK with `SKIP_JAVA_RECOMPILE=1 bash build-apk.sh` (else it recompiles everything with dx).
- Patch scripts find anchors in vendor smali (`*_MARKER`, `OLD`/`NEW` constants) — outline shows them as `const`.
- Tests without device: `bash scripts/ble-sim/run*.sh`, `bash scripts/ai-sim/run.sh`, `bash scripts/ai-sim/run-auto.sh`, `bash scripts/music-sim/run.sh`, `bash scripts/fit-sim/run.sh`,
  `cd band-app && bash scripts/test-band.sh`, `cd server && npm test`, `python3 scripts/ui-map.py --check`.

## Invariants (breaking one = broken release)
- Never edit `build/decompiled/`; change `scripts/apply-*.py`, `branding/`, or Java.
- Java edited → run its compile script (MAP: `compile:X`) and commit the regenerated `branding/smali/`.
- New patch script → add to `build-apk.sh` at the right spot (MAP flags `NOT-IN-BUILD`).
- dx-safe Java: **no lambdas, no anonymous inner classes** (use named classes); `MusicPlayerHelper$1` is a build error.
- Never rename/remove `@id/*` (smali hooks bind to them). Login smali only via `apply-login-fix.py`.
- Touching `band-app/src|scripts`, `branding/java|smali`, `translations/`, `scripts/apply-*|compile-*` ⇒ bump
  `RELEASE_VERSION` (versionName `1.1.N-ai`, versionCode +1), rebuild, commit `xems27.apk` + `RELEASE_VERSION`
  (+ both `band-app/*.rpk` if band-app changed). Gate: `python3 scripts/verify-apk-shipped.py --base origin/main`.
- Band version triple must match: `band-app/src/manifest.json` versionCode = `app.ux` `APP_VERSION`
  = `BandAppInstall.VERSION`.
- Commits: `type(scope): summary (band 5.9.N / 1.1.N-ai)` for source, then `Build 1.1.N-ai` for the APK.

## UI standard (owner's requirement — every screen, every level: tablet, band, report, card, PWA)
- **Attention priority:** the one thing the user needs now is biggest and first; secondary info smaller or folded;
  rare/edge content (e.g. contraindication lists) behind one question, never a central block.
- **Intuitive:** one-tap choices over typing and dropdowns; plain, warm, natural Bulgarian (no form-speak);
  the next step is obvious; state is visible (sent ✓, changed, loading).
- **Strong aesthetics + interactivity:** consistent kit (`XemsUi` / page tokens), press feedback, smooth
  enter/transition, clear selected state, light and dark themes. Check with a screenshot before shipping.

## Deeper context (read only the section you need — headings/lines are in MAP)
| Topic | File |
|---|---|
| UI bug patterns (seek, overlays, timers, swipe) — read before new UI | `branding/UI-PITFALLS.md` |
| Screens, train-row columns, `@id`s, controls, BLE path | `branding/ui-map.yaml`, `branding/train-controls-map.yaml` |
| Dev workflow, adding UI elements | `branding/DEVELOPMENT.md` (+ `branding/CLAUDE.md`) |
| Shared UI kit `XemsUi` | `docs/xems-ui-kit.md` |
| Band 10 app & link | `band-app/CLAUDE.md`, `docs/xiaomi-band10.md` |
| Smart Session (AI) | `docs/xems-smart-session-spec.md`, `docs/xems-ai-session-implementation.md` |
| Automatic mode (ready programs) | `docs/xems-auto-mode-spec.md` |
| "План" tab, calendar, next client | `docs/xems-plan.md` |
| Saved program as base, personalisation, diskette | `docs/xems-program-fit.md` |
| Client list rows, search keyboard, quick start | `docs/xems-client-list.md` |
| Client ↔ tablet ↔ server sync, CF costs | `docs/xems-client-sync.md` |
| Pulse / strength control | `docs/xems-pulse-control.md`, `docs/xems-part-strength.md` |
| License server | `server/CLAUDE.md`, `docs/xems-license-api.md`, `docs/xems-server-spec.md` |

## Keeping the map true
Added/renamed a script, Java class, page or doc heading → `python3 scripts/repo-map.py` and commit
`.claude/MAP.md` with the change. The SessionStart hook reports if it is stale.
