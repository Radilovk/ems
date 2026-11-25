# XEMS bHaptics listener (`com.bhaptics.player` look-alike) — personal research tool

**Owner's decision (2026-11-25): built for private research with the licence risk accepted** (bHaptics SDK licence §1.1 /
§2.1 — see `docs/xems-bhaptics-research.md`). Not part of any customer APK, not in the catalog, no release is published.

What it does: a Quest game that supports a bHaptics vest binds the Player's service (`com.bhaptics.player`, action
`com.bhaptics.player.BhapticsHapticService`). This app is that service. It tells the game that a vest, arms, visor and
hands are connected, then **records every call** (event patterns the game registers, motor arrays, paths, positions,
timing, caller) and uploads the recording by itself to the licence server's vrlog store (`/v1/vrlog`, 14 days).
The game developer's API key is masked. It drives nothing yet (no suit output) — phase 1 is "what do the games send".

## Use (the owner: install once, then only play)
1. Quest: the real bHaptics Player must not be installed (same package; our install replaces it — pairing is lost).
2. Install `xems-bhaptics-spy.apk` on the headset (tablet: Launcher → 📥 Downloads, or `adb install`).
3. Start the game (Thrill of the Fight, …), play 2–3 min, quit. After 45 s idle / when the game lets go of the
   service the recording is uploaded; the app's screen shows the code.
4. The reader (Claude): `curl https://license.biocode-bg.com/v1/vrlog/recent` → codes of the last 24 h →
   `GET /v1/vrlog/<code>/<part>` (gzip, first line `{"summary":…}`, then one JSON line per call).

## Build / test
`bash scripts/setup-android-toolchain.sh` (once) → `bash bhaptics-spy/build.sh` → `bhaptics-spy/build/xems-bhaptics-spy.apk`.
`bash bhaptics-spy/run-test.sh` — host test (decoding, masking, thinning, packing) and `check-table.py`, which compares
`Sig.TABLE` with the vendor's published AIDL interface (`bhaptics/tact-android` aar; no vendor code is inside our APK:
the Binder is decoded by hand).

## Files
`src/com/xems/bhspy/`: `Sig` (57-method table + decoder) · `SpyBinder` (Binder, Parcel) · `SpyService` · `Spy`
(session, idle upload) · `CallLog` (JSONL, masking, thinning) · `Responder` (what we answer) · `Uploader` (gzip, parts)
· `MainActivity` (status screen). `skeleton/` = manifest for apktool; `build.sh`.
