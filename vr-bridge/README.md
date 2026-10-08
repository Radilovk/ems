# XEMS VR haptic bridge

Quest 3 game haptics → XEMS tablet → suit. The headset only reports; **all safety is on the tablet**
(SafeGuard: fatigue model τ = 30 s, 6 s continuous-pulse cap) before anything reaches the BLE channels.

```
game ──xrApplyHapticFeedback──▶ quest-layer (implicit OpenXR API layer) ──▶ runtime (unchanged)
                                     │ UDP 47800, 40 B/event, MSG_DONTWAIT, DSCP EF
                                     ▼
                     tablet: VrTelemetryReceiver ──▶ VrHapticSink ──▶ SafeGuard ─▶ MusicSync ─▶ BLE
```

| Path | What |
|---|---|
| `quest-layer/src/xems_wire.h` | Wire format + clock-sync math (single source of truth; Java mirror `VrWire`) |
| `quest-layer/src/xems_haptic_layer.cpp` | Layer: negotiation, hooks (`xrApplyHapticFeedback`, `xrStopHapticFeedback`, `xrPollEvent`, `xrDestroyAction`, `xrDestroyInstance`), discovery, PONG |
| `quest-layer/CMakeLists.txt` | NDK build, arm64-v8a, one exported symbol |
| `quest-layer/manifest/…json` | Implicit-layer manifest |
| `branding/java/src/com/isaigu/gymapp/wearable/vr/` | Tablet side (compile: `compile-wearable-java.sh`) — see below |
| `test/run.sh` | Host end-to-end: real layer `.so` + fake loader/runtime → loopback → real receiver |

## Tablet (in the APK since 1.1.395-ai)
```
VrTelemetryReceiver (UDP thread: pairing, clock sync, seq / stale filter)
  └▶ VrHapticRouter (the VrHapticSink) ──▶ SafeGuard.vrPulse / vrStop      (records only)
VrDrive (main thread, 10 ms tick while linked)
  └▶ SafeGuard.vrLevel(row, now)  = VrFatigue: τ 30 s, F_max 18.4, soft limit from 0.6·F_max to 0.3 output at F_max,
  │                                 lockout until F_rec; 6 s continuous (gaps < 1 s) → 4 s rest; pulse ≥ 120 ms
  └▶ MusicSync algorithm: rise limit (MusicSync smoothness) → MasterStrengthControl.scaleFromSound (floor..ceiling =
     MA slider) → newest value only when the row's BLE queue is empty → setMasterStrength → onParamsChange →
     SoftRamp → SafeGuard.enforce (absolute row limits)
```
- Lifecycle: `VrBridge.attach/detach/onTrainingStopped` from `wearable/NotifyWearableBridge` (training screen
  open / closed / full stop). Driven row = MusicSync's target (`MasterStrengthControl.getTarget()`), only while it runs.
- Music player running → it owns the strength, VR waits (toast). MA +/− during VR moves the ceiling
  (`MusicSyncBridge.onMaStrengthDelta`); manual slider edits are blocked like in music sync.
- Whole-suit strength for now; the hand (L/R/both) is carried to the guard but not yet mapped to arm channels.
- Build: `scripts/apply-vr-bridge.py` (after `apply-wearable-permissions.py`) adds WAKE_LOCK +
  CHANGE_WIFI_MULTICAST_STATE and fails the build if the receiver → SafeGuard → controller calls are missing.

## Build (layer)
```
cmake -S vr-bridge/quest-layer -B build-vr -G Ninja \
  -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_HOME/build/cmake/android.toolchain.cmake \
  -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-29 -DANDROID_STL=c++_static -DCMAKE_BUILD_TYPE=Release
cmake --build build-vr
```
Offline: add `-DOPENXR_SDK_DIR=<OpenXR-SDK checkout>` (headers only).

## Deploy on Quest 3
Retail Quest apps load layers only from their own APK, so each game is repacked (sideload, own device):
- `lib/arm64-v8a/libXrApiLayer_xems_haptics.so`
- `assets/openxr/1/api_layers/implicit.d/XrApiLayer_xems_haptics.json`
- `android.permission.INTERNET` in the manifest (most games already have it); re-sign, reinstall.

Works only for games that drive haptics through the Khronos OpenXR loader. Games on the legacy
VrApi / OVRPlugin-native haptics path never call `xrApplyHapticFeedback` — check with
`adb logcat -s XemsVrLayer` (`active, session …` then `paired with …`).
Kill switch: env `DISABLE_XR_APILAYER_XEMS_HAPTICS`. Fixed tablet IP (skips broadcast discovery):
`adb shell setprop debug.xems.vr.target 192.168.1.50`.

## Protocol
See the header comment of `xems_wire.h`. Layer: HELLO broadcast every 0.5 s until ACKed, then unicast
heartbeat every 2 s; no ACK for 6 s → rediscover. HAPTIC/STOP are sent only while paired.
Tablet: PING every 250 ms, min-RTT offset over 16 samples, drops duplicate/reordered (seq) and stale
(> 60 ms, configurable) haptics, never drops STOP; silence > 5 s or STOP(SHUTDOWN) → link down + stop all.
Session left FOCUSED → STOP(BOTH, UNFOCUS).

## Test
`bash vr-bridge/test/run.sh` (needs `bash scripts/setup-android-toolchain.sh` for android.jar): the fatigue model
(`VrFatigueHostTest`: 6 s cap, gaps, boxing 10 min, heavy 10 min, τ recovery, min pulse) + the layer → receiver run.
Host loopback: hook cost ≈ 50–80 µs worst case, call → tablet dispatch ≈ 0.4 ms.
