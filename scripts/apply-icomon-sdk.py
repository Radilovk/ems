#!/usr/bin/env python3
"""iComon's ICDeviceManager SDK into the decompiled APK (docs/xems-scale.md "iComon SDK"): its smali
(branding/smali/icomon-sdk, from compile-icomon-sdk.sh) into a new smali_classesN, and its native libraries
(libICBleProtocol / libICBodyFatAlgorithms / libICLogger, arm64-v8a + armeabi-v7a) from the .aar into lib/<abi>/.
The base APK has no native code, so these two ABIs are the only ones and every tablet (ARM) loads them."""
import re
import shutil
import sys
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DECOMPILED = ROOT / "build" / "decompiled"
SMALI = ROOT / "branding" / "smali" / "icomon-sdk"
AAR = ROOT / "branding" / "vendor" / "icomon" / "ICDeviceManager.aar"
ABIS = ("arm64-v8a", "armeabi-v7a")
MARKER = "cn/icomon/icdevicemanager/ICDeviceManager.smali"


def main() -> int:
    if not (SMALI / MARKER).exists():
        raise RuntimeError(f"Missing iComon SDK smali: {SMALI / MARKER} (run scripts/compile-icomon-sdk.sh)")
    dirs = [p for p in DECOMPILED.iterdir() if p.is_dir() and re.fullmatch(r"smali(_classes\d+)?", p.name)]
    for d in dirs:
        if (d / MARKER).exists():
            shutil.rmtree(d)          # an earlier run of this script in the same tree
            dirs.remove(d)
            break
    n = max([int(d.name[len("smali_classes"):]) if d.name != "smali" else 1 for d in dirs] + [1]) + 1
    dst = DECOMPILED / f"smali_classes{n}"
    shutil.copytree(SMALI, dst)
    count = sum(1 for _ in dst.rglob("*.smali"))

    libs = 0
    with zipfile.ZipFile(AAR) as z:
        for name in z.namelist():
            m = re.fullmatch(r"jni/([^/]+)/([^/]+\.so)", name)
            if not m or m.group(1) not in ABIS:
                continue
            out = DECOMPILED / "lib" / m.group(1) / m.group(2)
            out.parent.mkdir(parents=True, exist_ok=True)
            out.write_bytes(z.read(name))
            libs += 1
    if libs != 6:
        raise RuntimeError(f"iComon SDK: expected 6 native libraries, found {libs}")
    print(f"iComon SDK: {count} classes → {dst.name}, {libs} native libraries → lib/")
    return 0


if __name__ == "__main__":
    sys.exit(main())
