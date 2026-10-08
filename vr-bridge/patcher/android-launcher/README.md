# XEMS VR Launcher (on-device front end)

A tiny Android app that runs the **existing** `../xems_vr_patch.py` locally on the
phone instead of on a PC. It does not patch, decompile or sign anything itself —
it only hands a ready-made command line to **Termux** over the documented
`RunCommandService` IPC. All the real work stays in the Python script.

```
GUI (this app)  ──Intent──▶  Termux RunCommandService  ──▶  python3 xems_vr_patch.py <pkg> --tablet <ip> --yes
```

## UI
- **Target Package Name** — the Quest game package (`xems_vr_patch.py --list fight` to find it).
- **Quest / Tablet IP Address** — passed through as `--tablet <ip>`.
- **Execute Local Patch** — builds the Intent and fires it.

## What the button sends
A `com.termux.RUN_COMMAND` Intent targeting `com.termux.app.RunCommandService`, with:

| Extra | Value |
|---|---|
| `RUN_COMMAND_PATH` | `/data/data/com.termux/files/usr/bin/python3` |
| `RUN_COMMAND_ARGUMENTS` | `["xems_vr_patch.py", "<pkg>", "--tablet", "<ip>", "--yes"]` |
| `RUN_COMMAND_WORKDIR` | `…/files/home/ems/vr-bridge/patcher` |
| `RUN_COMMAND_BACKGROUND` | `true` |

`--yes` is added so the headless background run does not hang on the reinstall
confirmation prompt.

## Device setup (one time)
1. Install Termux, then inside it:
   `pkg install python android-tools` and clone/copy the `ems/` tree so that
   `~/ems/vr-bridge/patcher/` (with `../prebuilt/`) exists.
2. Add `allow-external-apps=true` to `~/.termux/termux.properties`, then
   `termux-reload-settings`.
3. Install this app; grant it `com.termux.permission.RUN_COMMAND`.
4. Same adb prerequisites as a PC run: the Quest in developer mode, reachable by
   `adb` from Termux (USB-OTG or `adb connect`).

## Build
`./gradlew :app:assembleDebug` (standard Android/Gradle; not part of the XEMS
APK-patch pipeline).
