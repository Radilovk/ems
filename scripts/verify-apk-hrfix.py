#!/usr/bin/env python3
"""Verify v1.1.53-ble HR fix markers in built APK / smali."""

from __future__ import annotations

import subprocess
import sys
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
APK = ROOT / "xems27.apk"
DECOMPILED = ROOT / "build" / "decompiled"
BLE_CLIENT = (
    DECOMPILED
    / "smali_classes2/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient.smali"
)
EMS_COEXIST = DECOMPILED / "smali_classes2/com/isaigu/gymapp/wearable/EmsBleCoexist.smali"
NOTIFY_BRIDGE = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/wearable/NotifyWearableBridge.smali"
)
REALTIME_START = (
    DECOMPILED
    / "smali_classes2/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable.smali"
)
RELEASE = ROOT / "RELEASE_VERSION"
EXPECTED_VERSION = "1.1.53-ble"
BUILD_TAG = "v1.1.53-ble"


def apk_strings() -> str:
    if not APK.is_file():
        return ""
    parts: list[str] = []
    with zipfile.ZipFile(APK, "r") as zf:
        for name in zf.namelist():
            if name.endswith(".dex"):
                parts.append(zf.read(name).decode("latin-1", errors="ignore"))
    return "\n".join(parts)


def main() -> int:
    errors: list[str] = []
    checks: list[str] = []

    if not APK.is_file():
        errors.append(f"missing APK: {APK}")
    else:
        size = APK.stat().st_size
        checks.append(f"APK present ({size} bytes)")

    if RELEASE.is_file():
        text = RELEASE.read_text(encoding="utf-8")
        if f"versionName={EXPECTED_VERSION}" not in text:
            errors.append(f"RELEASE_VERSION missing versionName={EXPECTED_VERSION}")
        else:
            checks.append(f"RELEASE_VERSION={EXPECTED_VERSION}")
    else:
        errors.append("RELEASE_VERSION missing")

    dex_blob = apk_strings()
    if BUILD_TAG not in dex_blob:
        errors.append(f"APK dex missing build tag {BUILD_TAG}")
    else:
        checks.append(f"build tag {BUILD_TAG} in APK")

    for needle, label in (
        ("no first 8/47", "retry START once"),
        ("band ACK timeout", "band ACK timeout (no queue stall)"),
        ("discovering anyway", "MTU callback fallback"),
        ("EmsBleCoexist", "EMS BLE coexist"),
    ):
        if needle not in dex_blob:
            errors.append(f"APK dex missing marker: {label}")
        else:
            checks.append(label)

    if "sendLinkPing" in dex_blob:
        errors.append("APK dex still contains forbidden sendLinkPing")
    else:
        checks.append("link ping removed from APK")

    if "CONFIG_HEART_RATE_SET" in dex_blob:
        errors.append("APK still overwrites the band HR config (CONFIG_HEART_RATE_SET)")
    else:
        checks.append("no HR config overwrite")

    if "keepalive START" in dex_blob:
        errors.append("APK still contains forbidden keepalive START string")

    if BLE_CLIENT.is_file():
        smali = BLE_CLIENT.read_text(encoding="utf-8")
        if "realtimeStartRetries" not in smali:
            errors.append("XiaomiBandBleClient.smali missing realtimeStartRetries")
        else:
            checks.append("START retry field in smali")
        if "sendLinkPing" in smali:
            errors.append("XiaomiBandBleClient.smali still contains sendLinkPing")
        else:
            checks.append("link ping removed from smali")
    else:
        errors.append("XiaomiBandBleClient.smali missing in decompiled tree")

    if not EMS_COEXIST.is_file():
        errors.append("EmsBleCoexist.smali missing")
    else:
        checks.append("EmsBleCoexist.smali present")

    if NOTIFY_BRIDGE.is_file():
        if "EmsBleCoexist;->pauseEmsBle" not in NOTIFY_BRIDGE.read_text(encoding="utf-8"):
            errors.append("NotifyWearableBridge missing EmsBleCoexist.pauseEmsBle hook")
        else:
            checks.append("EMS coexist hook in NotifyWearableBridge")
    else:
        errors.append("NotifyWearableBridge.smali missing")

    if not REALTIME_START.is_file():
        errors.append("XiaomiBandRealtimeStartRunnable.smali missing (d8 compat)")
    else:
        checks.append("XiaomiBandRealtimeStartRunnable.smali present")

    if errors:
        for err in errors:
            print(f"FAIL: {err}", file=sys.stderr)
        return 1

    for item in checks:
        print(f"OK: {item}")
    print("APK HR fix verification passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
