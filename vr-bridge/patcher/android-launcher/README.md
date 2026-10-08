# XEMS VR Launcher (on-device front end)

A one-screen tablet app that runs the **existing** `../xems_vr_patch.py` inside **Termux** on the same tablet —
no PC. It patches nothing itself: it hands commands to Termux over the documented `RunCommandService` IPC,
reads the answers and does the next step by itself.

```
app ──RUN_COMMAND──▶ Termux: bash ~/ems/…/termux/termux-run.sh <verb> …
     check                          → ok/missing lines (python3, java, adb, git, patcher, layer)
     find  <tablet-ip>              → scans the /24 for :5555, keeps Oculus/Meta devices → "quest <ip> <model>"
     games <quest-ip>               → adb connect, third-party packages → "game <pkg>"
     patch <quest-ip> <pkg> [tablet] → adb connect, ANDROID_SERIAL=… python3 xems_vr_patch.py <pkg> --yes [--tablet]
   + bash -c <termux-setup.sh shipped in the APK>  → pkg install python openjdk-17 android-tools git,
                                                     sparse clone of vr-bridge/ into ~/ems, then check
app ◀──PendingIntent (exit code + output, background or session)── Termux → PatchResultReceiver → RunStore → screen
```

## Install (once)
1. **Termux** from F-Droid or GitHub (the Play Store build is outdated).
2. **This app:** install `xems-vr-launcher.apk` (committed, signed with `debug.keystore` so new builds install over it).
3. Open the app. It asks for *Run commands in Termux* → allow.
4. If Termux refuses (fresh install): the status card offers **Копирай реда и отвори Termux** — paste, Enter,
   come back. That one line (`allow-external-apps=true`) is the only thing ever typed in Termux.
5. The card then offers **Подготви Termux** → python, java, adb, git and the `vr-bridge/` files install by
   themselves (5–10 min, internet). Afterwards it looks for the headset on its own.
6. **Quest 3:** developer mode; once over USB from anything with adb: `adb tcpip 5555` (lost on headset reboot).
   The first connection asks *Allow USB debugging* in the headset → accept (remembered).

## Every time
Open the app → it finds the headset on the Wi-Fi → shows its games → **tap a game** → **Сложи хаптиката** →
confirm → 1–3 min → ✓ (or the reason + what to press). The tablet's own Wi-Fi IP goes to `--tablet` by itself.
Fields are remembered; 🔍 / ☰ redo the search / the game list.

## Screen (landscape, XemsUi tokens, light + dark, Bulgarian + English)
- Left card: headset IP (🔍 find), game (☰ list from the headset), tablet IP (auto, ↻), folded *Гледай хода в
  Termux* (the patch / setup runs in a visible session; the result still comes back), small *Подготви Termux* /
  *Проверка*.
- Right: the green **Сложи хаптиката** and the status card — what runs now, ✓ / ✗ with the last lines, and one
  button for the next step when something is missing (set up, find again, show games, allow).
- Before every patch: a confirmation (the script runs with `--yes`): internal saves are lost, `Android/data` +
  `obb` are kept, the original stays in `xems-vr-out/original/<pkg>`.

## Pieces
| File | Role |
|---|---|
| `termux/termux-run.sh` | Termux side: `check` / `find` / `games` / `patch` |
| `termux/termux-setup.sh` | One-time Termux setup; packaged as an APK asset and run via `bash -c` |
| `TermuxScript.kt` | argv per task (pure) · `TermuxReport.kt` reads the machine lines (pure) |
| `PatchRequest.kt` | Field validation (pure) · `LanAddress.kt` tablet Wi-Fi IPv4 (wlan → eth → private) |
| `TermuxBridge.kt` | RUN_COMMAND Intent + mutable PendingIntent for the result |
| `PatchResultReceiver.kt`, `RunStore.kt` | Result bundle → prefs; the screen listens, acts once (fill / pick) |
| `PatchResult.kt` | Exit code → outcome, output tail (pure) |

Exit codes: `0` done · `2` bad arguments · `3` no adb · `4` headset not reachable / not found · `5` headset not
authorised · `6` setup incomplete · `127` (no `~/ems` script) = not set up · else the patcher's own code.

## Limits (what still needs a hand)
- `adb tcpip 5555` after every headset reboot (Quest has no persistent Wi-Fi adb without it).
- A game update from the store replaces the patched build → run it again.
- Games without `lib/arm64-v8a/libopenxr_loader.so` or INTERNET are refused by the patcher (clear message).
- `termux-setup.sh` clones `main`: the new `termux/` scripts must be merged there (`XEMS_BRANCH` overrides).
- A visible Termux session started from the app may need Termux's *Display over other apps* permission.

## Build & test
```
./gradlew :app:testDebugUnitTest :app:assembleDebug :app:lintDebug   # needs ANDROID_HOME (platform 34)
cp app/build/outputs/apk/debug/app-debug.apk xems-vr-launcher.apk    # refresh the committed build
bash test/termux-run-test.sh                                          # fake adb/python3, no device
```
Standalone Gradle project — not part of the XEMS APK-patch pipeline (`build-apk.sh`).
