# XEMS VR Launcher (on-device front end)

A one-screen tablet app that runs the **existing** `../xems_vr_patch.py` inside **Termux** on the same tablet —
no PC. It patches nothing itself: it hands commands to Termux over the documented `RunCommandService` IPC,
reads the answers and does the next step by itself.

```
app ──RUN_COMMAND──▶ Termux: bash ~/ems/…/termux/termux-run.sh <verb> …
     check                          → ok/missing lines (python3, java, adb, git, patcher, layer)
     find  <tablet-ip>              → scans the /24 for :5555, keeps Oculus/Meta devices → "quest <ip> <model>"
     games <quest-ip>               → adb connect, third-party packages → "game <pkg> ok|vrapi|?" (OpenXR loader in the APK?)
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
6. **Quest 3:** developer mode. After every headset reboot: plug it into the tablet's USB-C (OTG cable) → the app
   opens by itself and runs `adb tcpip 5555` (`UsbAdb`, no PC), then searches the Wi-Fi. The first time the
   headset asks *Allow USB debugging* for the app's key → Always allow + Allow (remembered). The prompt shows
   only inside the headset, so wear it while the cable goes in. Since 1.7 Termux's adb offers the same key
   (`--key` → `~/.android/xems_launcher.adbkey` → `ADB_VENDOR_KEYS`), so this one approval also covers Wi-Fi;
   before, Termux used its own key and Quest never asked for it over Wi-Fi (endless "waiting for permission").

## Game catalog (1.5) — `../catalog.json`
**🎮 Каталог** lists games outside the Meta Store that take the layer (a store game re-signed by the patcher is
refused by Horizon OS / its entitlement check — catalog games are installed as plain APKs, so that never applies).
Tap one → `termux-run.sh install <quest> <id> [tablet]` → `catalog.py resolve`: `url` = a fixed link (our XEMS Studio:
release `xems-studio-latest`, built by CI, fetched again only when it changed); `github` = newest release APK
downloaded by the tablet (cached in `~/.xems-vr/apk`); `page` (itch.io) = exit 7 + `page <url>`, the app opens it,
the user presses Download, the second tap finds the file in Downloads (`termux-setup-storage` once, exit 8 → the
app runs it) → `xems_vr_patch.py --install <apk>` (package read from the binary manifest, no aapt) → backup/move
Android/data+obb if already installed → install. Add a game = one entry in `catalog.json` (merged to main, the
Termux side updates itself).

## Any APK — 📥 Downloads (1.6)
`catalog.py downloads` lists every APK in Downloads with its fit (✓ OpenXR loader inside / ✗ VrApi / ?), OpenXR first;
tap one → `termux-run.sh installfile <quest> <apk> [tablet]` → `xems_vr_patch.py --install`. Covers games from
anywhere (itch.io, SideQuest, GitHub) without a catalog entry. Catalog page games (fitness/boxing first) open their page;
the downloaded file is found by the entry's `file` regex or picked here.

## Cable mode (1.8) — the stable path
Headset on the tablet's USB-C → the app allows it once (`UsbAdb`, headset on: Always allow + Allow) and then relays
adb over the cable (`UsbBridge`: `127.0.0.1:15555` TCP ⇄ USB bulk, same adb messages). Termux's adb connects to
that address with the already-allowed key, so finding games, patching and installing need no Wi-Fi, no `tcpip`,
and survive the headset going to sleep. Keep the cable in while a game goes on; unplugged → the Wi-Fi search again.
Since 1.8.3 a plug-in is never ignored: the cable going out drops the relay and its marks (`USB_DEVICE_DETACHED`), a
relay that died is made again, a failure inside the USB handshake comes back as a result instead of leaving the app
"busy" until a reinstall, the screen looks again on every return, and 🔍 with the headset on the cable reconnects over
the cable from scratch. Termux's side always drops the old `127.0.0.1:15555` connection before connecting.

**1.8.4 — the relay is a foreground service** (`CableService`, type *connected device*, its own notification "XEMS
VR: шлемът е на кабела", a partial wake lock). Before, the relay ran as threads of the app's screen: with Termux in
front (*Гледай хода в Termux*) Android froze the app as a cached background process and a 250 MB install stood still at
"качвам на шлема" until adb's 15 min limit. Now it keeps relaying whatever is on screen, the screen off too; it
ends with the cable (or when the relay dies).

## XEMS Studio comes ready (1.8.3)
CI puts the suit link into the game itself (`xems_vr_patch.py --apk`, release asset `xems-studio-xems.apk`); the catalog
entry has `"ready": true`, so the tablet only downloads it (progress every 10 %, checked for a whole file) and installs it
(`--install … --ready`: an update in place keeps the game's data; a clean install only if the headset refuses it). No
250 MB repack and re-sign on the tablet any more, and `adb install` has a 15 min limit instead of waiting for ever.

## Every time
Open the app → it finds the headset on the Wi-Fi → shows its games (✓ OpenXR = works · ✗ old VrApi = cannot, not filled in · ? = not recognised) → **tap a game** → **Сложи хаптиката** →
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
| `AdbProtocol.kt` | adb packets, RSA token signing, adb public-key format (pure) |
| `UsbAdb.kt` | USB host: headset (vendor 0x2833, adb interface) → CNXN/AUTH → `tcpip:5555`; `res/xml/usb_quest.xml` |

Exit codes: `0` done · `2` bad arguments · `3` no adb · `4` headset not reachable / not found · `5` headset not
authorised · `6` setup incomplete · `127` (no `~/ems` script) = not set up · else the patcher's own code.

## Limits (what still needs a hand)
- Without the cable, Wi-Fi adb needs port 5555 open on the headset (lost on reboot and often on sleep) — use the cable.
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
