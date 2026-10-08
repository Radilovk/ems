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
| `tablet/src/com/isaigu/gymapp/vr/` | `VrTelemetryReceiver` (UDP thread), `VrClockSync`, `VrHapticEvent`, `VrHapticSink`, `VrWire` — dx-safe Java 8 |
| `test/run.sh` | Host end-to-end: real layer `.so` + fake loader/runtime → loopback → real receiver |

Not in `build-apk.sh` yet: wiring `VrHapticSink` to `wearable/SafeGuard` + `MusicSync` and moving the
tablet classes into `branding/java/src` is the next step (then the usual RELEASE_VERSION bump).

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
`bash vr-bridge/test/run.sh` (needs `bash scripts/setup-android-toolchain.sh` for android.jar).
Host loopback: hook cost ≈ 50–80 µs worst case, call → tablet dispatch ≈ 0.4 ms.
