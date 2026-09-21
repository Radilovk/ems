#!/usr/bin/env python3
"""Stop background BleDeviceManager scan outside the device-connect flow."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
PERMISSIONS = DECOMPILED / "smali_classes2/com/isaigu/gymapp/PermissionsActivity.smali"
MAIN_ACTIVITY = DECOMPILED / "smali_classes2/com/isaigu/gymapp/MainActivity.smali"
BLE_MANAGER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/ble/BleDeviceManager.smali"
BLE_SCAN_CB = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/ble/BleDeviceManager$1.smali"
NEW_CONNECT = (
    DECOMPILED
    / "smali_classes2/com/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment.smali"
)
OLD_CONNECT = (
    DECOMPILED
    / "smali_classes2/com/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment.smali"
)

PERMISSIONS_START = """    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->start()V"""

PERMISSIONS_STOP = """    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->stop()V"""

MAIN_BLE_STOP_HOOK = """
    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->stop()V

"""

MAIN_MARKER = (
    "    invoke-static {p0}, Lcom/isaigu/gymapp/utils/LanguageUtils;"
    "->applyChangeWithoutRestart(Landroid/app/Activity;)V\n"
)

CONNECT_STOP_SCAN = (
    "    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V\n"
)

CONNECT_STOP_BOTH = (
    "    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V\n\n"
    "    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->stop()V\n"
)

SCAN_FINISHED_OLD = """    .line 139
    sget v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->scan()V

    .line 142
    :cond_0"""

SCAN_FINISHED_NEW = """    .line 142
    :cond_0"""

DECREASE_SCAN_OLD = re.compile(
    r"    sget v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I\n\n"
    r"    if-nez v0, :cond_1\n\n"
    r"    sget-boolean v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->started:Z\n\n"
    r"    if-eqz v0, :cond_1\n\n"
    r"    \.line 244\n"
    r"    invoke-static \{\}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->scan\(\)V\n\n"
    r"    \.line 246\n"
    r"    :cond_1",
    re.MULTILINE,
)

DECREASE_SCAN_NEW = """    .line 246
    :cond_1"""


def patch_permissions(text: str) -> str:
    if PERMISSIONS_STOP in text:
        print("PermissionsActivity.startScan: already stops BleDeviceManager scan")
        return text
    if PERMISSIONS_START not in text:
        raise RuntimeError("PermissionsActivity.startScan BleDeviceManager.start marker not found")
    text = text.replace(PERMISSIONS_START, PERMISSIONS_STOP, 1)
    print("PermissionsActivity.startScan: BleDeviceManager.start -> stop")
    return text


def patch_main_activity(text: str) -> str:
    if "BleDeviceManager;->stop()V" in text:
        print("MainActivity.onCreate: BleDeviceManager.stop hook already applied")
        return text
    if MAIN_MARKER not in text:
        raise RuntimeError("MainActivity.onCreate LanguageUtils marker not found")
    text = text.replace(MAIN_MARKER, MAIN_MARKER + MAIN_BLE_STOP_HOOK, 1)
    print("MainActivity.onCreate: ensure BleDeviceManager scan is stopped on launch")
    return text


def patch_connect_dialog(path: Path) -> None:
    text = path.read_text(encoding="utf-8")
    if CONNECT_STOP_BOTH in text:
        print(f"{path.name}: BleDeviceManager.stop already hooked")
        return
    count = text.count(CONNECT_STOP_SCAN)
    if count == 0:
        raise RuntimeError(f"{path.name}: AndroidBleController.stopScan marker not found")
    text = text.replace(CONNECT_STOP_SCAN, CONNECT_STOP_BOTH, count)
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: stop AndroidBleController + BleDeviceManager scan on destroy")


def patch_scan_callback(text: str) -> str:
    if SCAN_FINISHED_OLD not in text:
        if SCAN_FINISHED_NEW in text and "BleDeviceManager;->scan()V" not in text:
            print("BleDeviceManager$1.onScanFinished: scan restart already removed")
            return text
        raise RuntimeError("BleDeviceManager$1.onScanFinished scan restart block not found")
    text = text.replace(SCAN_FINISHED_OLD, SCAN_FINISHED_NEW, 1)
    print("BleDeviceManager$1.onScanFinished: removed continuous scan restart")
    return text


def patch_decrease_connect(text: str) -> str:
    if DECREASE_SCAN_OLD.search(text):
        text = DECREASE_SCAN_OLD.sub(DECREASE_SCAN_NEW, text, count=1)
        print("BleDeviceManager.decreaseConnect: removed scan restart on disconnect")
        return text
    if DECREASE_SCAN_NEW in text:
        print("BleDeviceManager.decreaseConnect: scan restart already removed")
        return text
    raise RuntimeError("BleDeviceManager.decreaseConnect scan restart block not found")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1

    PERMISSIONS.write_text(patch_permissions(PERMISSIONS.read_text(encoding="utf-8")), encoding="utf-8")
    MAIN_ACTIVITY.write_text(patch_main_activity(MAIN_ACTIVITY.read_text(encoding="utf-8")), encoding="utf-8")
    BLE_SCAN_CB.write_text(patch_scan_callback(BLE_SCAN_CB.read_text(encoding="utf-8")), encoding="utf-8")
    BLE_MANAGER.write_text(patch_decrease_connect(BLE_MANAGER.read_text(encoding="utf-8")), encoding="utf-8")
    patch_connect_dialog(NEW_CONNECT)
    patch_connect_dialog(OLD_CONNECT)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
