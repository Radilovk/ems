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
(uber-apk-signer `--skipZipAlign`, alignment done by the script), backs up `Android/data` + `Android/obb`,
reinstalls, restores them, and on an install failure puts the original back. Internal save data is lost
(new signature). Originals stay in `xems-vr-out/original/<package>/`. Offline: `--apk base.apk [--apk split.apk] --out DIR`.
Check on the headset: `adb logcat -s XemsVrLayer` (`active, session …` then `paired with …`).
Kill switch: env `DISABLE_XR_APILAYER_XEMS_HAPTICS`. Fixed tablet IP: `--tablet` (= `setprop debug.xems.vr.target`,
until reboot).

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
