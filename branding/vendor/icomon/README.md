# iComon ICDeviceManager SDK (Android)

`ICDeviceManager.aar` — iComon's (Guangdong Welland) own BLE SDK for every scale it makes: Fitdays, Lepulse /
Lescale, Runstar, Renpho MorphoScan, SACOMA, … From the vendor's public demo repo
`github.com/WELLAND-OPEN/ICDeviceManager-Android-Demo` (commit `4335673`, 2024-06-13), file
`ICDeviceManager/ICDeviceManager.aar`. Docs: http://sdk.icomon.cn. No app key needed.

Inside: `classes.jar` + `libs/ICBleProtocol.jar`, `ICBodyFatAlgorithms.jar`, `ICLogger.jar` (Java 11 bytecode)
and native `jni/{arm64-v8a,armeabi-v7a}/libICBleProtocol.so`, `libICBodyFatAlgorithms.so`, `libICLogger.so`.

How XEMS uses it (docs/xems-scale.md "iComon SDK"):
- `scripts/compile-icomon-sdk.sh` — the jars → real D8 (R8 from Google Maven, desugars Java 11) → baksmali →
  `branding/smali/icomon-sdk/` (committed, like all smali; prebuilt is kept when the tools are missing).
- `scripts/compile-wearable-java.sh` — the jars on javac's classpath for `wearable/scale/ScaleIcomon.java`.
- `scripts/apply-icomon-sdk.py` — the smali into a new `smali_classesN`, the `.so` files into `lib/<abi>/`.
