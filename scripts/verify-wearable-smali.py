#!/usr/bin/env python3
"""Verify wearable bridge smali, xiaomi BLE classes, and train hooks."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING_WEARABLE = ROOT / "branding" / "smali" / "wearable"
WEARABLE = DECOMPILED / "smali_classes2/com/isaigu/gymapp/wearable/WearableSyncHelper.smali"
XIAOMI_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/wearable/xiaomi"
LAYOUT = DECOMPILED / "res/layout/wearable_sync_dialog.xml"
NEW_TRAIN = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"

REQUIRED_XIAOMI = [
    "XiaomiBandBleClient.smali",
    "XiaomiBandGattCallback.smali",
    "XiaomiBandCrypto.smali",
    "XiaomiBandFraming.smali",
    "XiaomiBandProto.smali",
    "XiaomiBandWriteQueue.smali",
    "XiaomiBandAuthStartRunnable.smali",
    "XiaomiBandAuthTimeoutTask.smali",
]

REQUIRED_WEARABLE = [
    "WearableBlePermissions.smali",
    "WearableBleDiagLog.smali",
    "HrDemandPolicy.smali",
    "NotifyWearableBridge.smali",
    "NotifyWearableBridge$ConnectAfterPermission.smali",
    "WearableBlePermissions$PermissionCallback.smali",
]


def check_branding_xiaomi() -> list[str]:
    errors = []
    xiaomi = BRANDING_WEARABLE / "xiaomi"
    if not xiaomi.is_dir():
        errors.append("branding/smali/wearable/xiaomi/ missing")
        return errors
    for name in REQUIRED_XIAOMI:
        if not (xiaomi / name).is_file():
            errors.append(f"missing branding xiaomi/{name}")
    return errors


def check_branding_wearable() -> list[str]:
    errors = []
    for name in REQUIRED_WEARABLE:
        if not (BRANDING_WEARABLE / name).is_file():
            errors.append(f"missing branding wearable/{name}")
    bridge = BRANDING_WEARABLE / "NotifyWearableBridge.smali"
    policy = BRANDING_WEARABLE / "HrDemandPolicy.smali"
    if bridge.is_file():
        text = bridge.read_text(encoding="utf-8")
        if "HrDemandPolicy;->wantsHeartRate" not in text:
            errors.append("NotifyWearableBridge.applyHr must delegate to HrDemandPolicy")
    if policy.is_file():
        text = policy.read_text(encoding="utf-8")
        if 'const-string v0, "settings"' not in text:
            errors.append("HrDemandPolicy.smali missing settings owner check")
    return errors


def main() -> int:
    errors = []
    errors.extend(check_branding_wearable())
    errors.extend(check_branding_xiaomi())
    if not WEARABLE.exists():
        errors.append("WearableSyncHelper.smali missing")
    if not LAYOUT.exists():
        errors.append("wearable_sync_dialog.xml missing")
    if XIAOMI_DIR.is_dir():
        for name in REQUIRED_XIAOMI:
            if not (XIAOMI_DIR / name).is_file():
                errors.append(f"missing decompiled xiaomi/{name}")
    if not NEW_TRAIN.exists():
        errors.append("NewTrainFragment.smali missing")
    else:
        text = NEW_TRAIN.read_text(encoding="utf-8")
        for needle in (
            "NotifyWearableBridge;->attachMasterPanel",
            "NotifyWearableBridge;->syncTrainingState",
            "NotifyWearableBridge;->onTrainingFullStop",
        ):
            if needle not in text:
                errors.append(f"NewTrainFragment missing {needle}")
    if not TRAIN_ITEM.exists():
        errors.append("TrainItem.smali missing")
    elif "NotifyWearableBridge;->syncTrainingState" not in TRAIN_ITEM.read_text(encoding="utf-8"):
        errors.append("TrainItem missing wearable sync hooks")
    if errors:
        for err in errors:
            print(f"ERROR: {err}", file=sys.stderr)
        return 1
    print("Wearable bridge smali verification passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
