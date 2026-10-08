# XEMS VR Launcher (on-device front end)

A one-screen tablet app that runs the **existing** `../xems_vr_patch.py` inside **Termux** on the same tablet,
instead of on a PC. It patches nothing itself: it hands a command line to Termux over the documented
`RunCommandService` IPC and shows what came back.

```
app ──RUN_COMMAND──▶ Termux: bash android-launcher/termux-run.sh <quest-ip[:port]> <pkg> [tablet-ip]
                               ├─ adb connect <quest-ip>:5555, waits for "device"
                               └─ ANDROID_SERIAL=<quest> python3 xems_vr_patch.py <pkg> --yes [--tablet <tablet-ip>]
app ◀──PendingIntent (exit code + output, background or session)── Termux  →  PatchResultReceiver → RunStore → screen
```

## Screen (landscape, XemsUi tokens, light + dark)
- Left card: **IP на шлема** (`192.168.1.23`, optional `:port`), **Игра** (package — `xems_vr_patch.py --list`),
  **IP на таблета** — filled automatically with this tablet's Wi-Fi IPv4 (↻ re-detects; empty = the layer
  finds the tablet by broadcast). Fields are remembered.
- Right: one green button **Сложи хаптиката** and the status card — running (spinner, 1–3 min), done ✓, or
  the reason with the last lines of the output.
- Before every run: a confirmation (the script runs with `--yes`, so its own reinstall question is asked here) —
  internal saves are lost, `Android/data` + `obb` are kept, the original stays in `xems-vr-out/original/<pkg>`.
- Folded option *Гледай хода в Termux*: the run opens a Termux session; the result (exit code + terminal
  transcript) still comes back to the app when it ends (Termux 0.118+).

## Pieces
| File | Role |
|---|---|
| `termux-run.sh` | Termux side: validates args, `adb connect`, waits for authorisation, runs the patcher |
| `PatchRequest.kt` | Field validation → argv (pure, unit-tested) |
| `LanAddress.kt` | Picks the tablet's Wi-Fi IPv4 (wlan → eth → other private; no cellular/VPN) |
| `TermuxBridge.kt` | RUN_COMMAND Intent + mutable PendingIntent for the result |
| `PatchResultReceiver.kt`, `RunStore.kt` | Result bundle → prefs; the screen listens and redraws |
| `PatchResult.kt` | Exit code → outcome, output tail (pure, unit-tested) |

`termux-run.sh` exit codes: `0` done · `2` bad arguments · `3` no adb in Termux · `4` `adb connect` failed ·
`5` headset not authorised · anything else = the patcher's own code.

## Device setup (one time)
1. Termux (F-Droid), then inside it: `pkg install python openjdk-17 android-tools git` and clone the repo so
   that `~/ems/vr-bridge/patcher/` (with `../prebuilt/`) exists.
2. `echo allow-external-apps=true >> ~/.termux/termux.properties && termux-reload-settings`.
3. Install this app; allow *Run commands in Termux* when it asks.
4. Quest 3 in developer mode; once over USB from any computer: `adb tcpip 5555` (Wi-Fi adb stays on until the
   headset reboots). First `adb connect` → accept *Allow USB debugging* in the headset.

## Build & test
```
./gradlew :app:testDebugUnitTest :app:assembleDebug :app:lintDebug   # needs ANDROID_HOME (platform 34)
bash test/termux-run-test.sh                                          # fake adb/python3, no device
```
Standalone Gradle project — not part of the XEMS APK-patch pipeline (`build-apk.sh`).
