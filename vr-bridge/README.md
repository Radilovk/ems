# XEMS VR haptic bridge

Quest 3 game haptics → XEMS tablet → suit. The headset only reports. On the tablet VR runs in **manual mode**
(owner, 1.1.396): the row's own program (impulse / pause as the trainer set it — below 20 Hz no pause is needed)
and the owner's absolute limits at every send (`SafeGuard.enforce` → `ai/SafeLimits`, docs/xems-safety-limits.md)
are the only limits. Less fatigue comes from zones: while VR drives, traps, back, lower back and calf are off.

```
game ──xrApplyHapticFeedback──▶ quest-layer (implicit OpenXR API layer) ──▶ runtime (unchanged)
                                     │ UDP 47800, 40 B/event, MSG_DONTWAIT, DSCP EF
                                     ▼
                     tablet: VrTelemetryReceiver ─▶ VrPulses ─▶ VrDrive (MusicSync way) ─▶ SoftRamp ─▶ SafeGuard.enforce ─▶ BLE
```

| Path | What |
|---|---|
| `quest-layer/src/xems_wire.h` | Wire format + clock-sync math (single source of truth; Java mirror `VrWire`) |
| `quest-layer/src/xems_haptic_layer.cpp` | Layer: negotiation, hooks (`xrApplyHapticFeedback`, `xrStopHapticFeedback`, `xrPollEvent`, `xrDestroyAction`, `xrDestroyInstance`), discovery, PONG |
| `quest-layer/CMakeLists.txt` | NDK build, arm64-v8a, one exported symbol |
| `quest-layer/manifest/…json` | Implicit-layer manifest |
| `branding/java/src/com/isaigu/gymapp/wearable/vr/` | Tablet side (compile: `compile-wearable-java.sh`) — see below |
| `test/run.sh` | Host end-to-end: real layer `.so` + fake loader/runtime → loopback → real receiver |

## Tablet (in the APK since 1.1.395-ai; manual mode + zones since 1.1.396-ai)
```
VrTelemetryReceiver (UDP thread: pairing, clock sync, seq / stale filter)
  └▶ VrHapticRouter (the VrHapticSink) ──▶ VrNoiseGate ──▶ VrPulses (per hand: amplitude until the end, ≥ 120 ms)
     gate (1.1.397): amplitude < 0.4 → out; < 35 ms (runtime-shortest = 0 ms) → out unless ≥ 0.7 (a hit);
     PCM append chunks only need the amplitude
VrDrive (main thread, 10 ms tick while linked and the target row runs)
  └▶ MusicSync algorithm: rise limit (MusicSync smoothness) → MasterStrengthControl.scaleFromSound (floor..ceiling =
     MA slider) → newest value only when the row's BLE queue is empty → setMasterStrength → onParamsChange →
     SoftRamp → SafeGuard.enforce (the owner's absolute limits)
  └▶ VrZones: TrainItem.partsDisabled on for traps (buwei6), back (buwei7), lower back (buwei8), calf (buwei4)
     while driving; only the channels it switched off are switched back on (the trainer's own off stays)
```
- Lifecycle: `VrBridge.attach/detach/onTrainingStopped` from `wearable/NotifyWearableBridge` (training screen
  open / closed / full stop). Driven row = MusicSync's target (`MasterStrengthControl.getTarget()`), only while it runs.
- Music player running → it owns the strength, VR waits (toast). MA +/− during VR moves the ceiling
  (`MusicSyncBridge.onMaStrengthDelta`); manual slider edits are blocked like in music sync.
- Whole-suit strength for now; the hand (L/R/both) is carried to the guard but not yet mapped to arm channels.
- Build: `scripts/apply-vr-bridge.py` (after `apply-wearable-permissions.py`) adds WAKE_LOCK +
  CHANGE_WIFI_MULTICAST_STATE and fails the build if the receiver → drive → controller / zones calls are missing.

## Build (layer)
`bash vr-bridge/quest-layer/build-ndk.sh` — downloads NDK r27c if `$ANDROID_NDK_HOME` is not set, builds arm64-v8a
and refreshes `vr-bridge/prebuilt/` (committed: `arm64-v8a/libXrApiLayer_xems_haptics.so` + the manifest json).
Offline headers: `OPENXR_SDK_DIR=<OpenXR-SDK checkout>`.

## Loader shim (default — confirmed on a Quest 3 with Open Saber, Godot 4)
Many Quest loaders (Godot's) never read implicit layers from `assets/openxr/…` — the layer then never loads and
`logcat -s XemsVrLayer` stays empty. So the patcher renames the game's `libopenxr_loader.so` →
`libopenxr_loader_orig_xems.so` and puts `libopenxr_loader_xems_shim.so` (built from `quest-layer/src/loader_shim.cpp`,
which compiles the layer in) under the loader's name. The shim builds the one-layer chain itself
(`xrGetInstanceProcAddr` / `xrCreateInstance`), routes the five hooked calls through the layer and trampolines every
other `xr*` (283, `loader_exports.txt`, regenerate with `gen_exports.py`) into the original. If the game's loader
exports an `xr*` the shim doesn't know, the patcher falls back to the asset layer. Re-patching keeps the original.
Host test: `test/run.sh` third run (`fake_loader.cpp` = original). Log: `loader shim: original loader loaded`, then
`active, session …`.

## Deploy on Quest 3 — `vr-bridge/patcher/xems_vr_patch.py`
Retail Quest apps load layers only from their own APK, so each game is repacked. One command on a PC with adb +
Java 8+ + Python 3, headset in developer mode on USB:
```
python3 vr-bridge/patcher/xems_vr_patch.py --list fight          # find the package name
python3 vr-bridge/patcher/xems_vr_patch.py <package> [--tablet <ip>]
```
It pulls every split, refuses games without `lib/arm64-v8a/libopenxr_loader.so` (VrApi / OVRPlugin-native: the
layer cannot load there) or without INTERNET, puts the `.so` next to the loader (stored, 16 KB page-aligned) and the
json into `base.apk` (`assets/openxr/1/api_layers/implicit.d/`), re-signs all splits with one debug key
(uber-apk-signer `--skipZipAlign`, alignment done by the script), moves `Android/data` + `Android/obb` aside on the headset (`/sdcard/xems-vr-backup`, instant; tar to the PC only if the move is refused),
reinstalls, restores them, and on an install failure puts the original back. Internal save data is lost
(new signature). Originals stay in `xems-vr-out/original/<package>/`. Offline: `--apk base.apk [--apk split.apk] --out DIR`.
Check on the headset: `adb logcat -s XemsVrLayer` (`active, session …` then `paired with …`).
No PC: `vr-bridge/patcher/android-launcher/xems-vr-launcher.apk` — a tablet app that sets Termux up, finds the
headset on the Wi-Fi, lists its games and runs the same script there (tablet IP as `--tablet`, result in the app).
Kill switch: env `DISABLE_XR_APILAYER_XEMS_HAPTICS`. Fixed tablet IP: `--tablet` is written into the layer `.so`
inside the game (slot after `XEMS_VR_TARGET_SLOT=`, `bake_target()`), so it survives headset reboots; a new tablet IP
= patch again. `setprop debug.xems.vr.target` still overrides it until reboot (the patcher clears it).
Headset reboot → Wi-Fi adb is off: plug the Quest into the tablet's USB-C, the launcher opens and runs
`adb tcpip 5555` itself (`UsbAdb`), then finds the headset on the Wi-Fi.

## Tablet UI — the "VR" tile (1.1.402)
`wearable/vr/VrPanel` (sheet) + `VrSettings` (prefs `xems_vr`, one set for the tablet, every client). The tile sits in
the ☰ menu and moves onto the module bar by itself the first time a headset links (`XemsNav.onVrLinked`); its
status: `● <game>` / `Чака играта` / `Чака — музиката води` / `⏸ На пауза` / `Няма шлем`.
- Left: the game, the strength sent to the suit (hero %), the game's level bar, hits passed / dropped, and
  *Играта управлява силата* (off = pause for the moment, not saved: VrDrive lets go, the row keeps the trainer's
  strength).
- Right: *Кои удари минават* = `VrNoiseGate` preset — Само силни (amp ≥ 0.6, ≥ 50 ms or ≥ 0.85) · Нормално
  (0.4 / 35 ms / 0.7, the 1.1.397 values) · Всички (≥ 0.12); *Най-слаб удар* = floor % of the trainer's
  strength while VR drives (default 20, the music floor is put back on release); *Нарастване* = rise smoothness
  Рязко 0 · Средно 20 · Меко 50; *Почиват във VR* = channels `VrZones` switches off (default traps, back, lower
  back, calf). Every change applies at once, mid-row too. Explanations: the header ⓘ (`XemsModuleInfo.VR`).

## Protocol
See the header comment of `xems_wire.h`. Layer: HELLO broadcast every 0.5 s until ACKed, then unicast
heartbeat every 2 s; no ACK for 6 s → rediscover. HAPTIC/STOP are sent only while paired.
Tablet: PING every 250 ms, min-RTT offset over 16 samples, drops duplicate/reordered (seq) and stale
(> 60 ms, configurable) haptics, never drops STOP; silence > 5 s or STOP(SHUTDOWN) → link down + stop all.
Session left FOCUSED → STOP(BOTH, UNFOCUS).

## Test
`bash vr-bridge/test/run.sh` (needs `bash scripts/setup-android-toolchain.sh` for android.jar): the pulse envelope
(`VrPulsesHostTest`: min pulse, two hands, append, infinite, stops) + the layer → receiver run.
Host loopback: hook cost ≈ 50–80 µs worst case, call → tablet dispatch ≈ 0.4 ms.
