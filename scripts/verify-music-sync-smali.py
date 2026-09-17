#!/usr/bin/env python3
"""Static verification of MusicSync smali (compiled from Java)."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SMALI_DIR = ROOT / "branding" / "smali"
DECOMPILED_COMMAND_UTIL = (
    ROOT
    / "build"
    / "decompiled"
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "utils"
    / "CommandUtil.smali"
)

RULES = [
    (
        "MusicSync.smali",
        r"\.method public static start\(Landroid/app/Activity;II\)V[\s\S]*?if-nez p0, :cond_[a-z0-9_]+",
        "start() returns when activity is null",
    ),
    (
        "MusicSync.smali",
        r"\.method static startCapture\(\)V[\s\S]*?hasRecordPermission\(\)Z[\s\S]*?if-nez v\d+, :cond_[a-z0-9_]+[\s\S]*?openMicrophone\(\)Z",
        "startCapture() checks permission then opens microphone",
    ),
    (
        "MusicSync.smali",
        r"\.method public static isRunning\(\)Z",
        "isRunning() exists for PDU hook",
    ),
    (
        "MusicSync.smali",
        r"\.method public static getLiveStrength\(\)I",
        "getLiveStrength() exists for PDU hook",
    ),
    (
        "MusicSync.smali",
        r"sput.*liveStrength",
        "tick updates liveStrength",
    ),
    (
        "MusicSync$PermissionCallback.smali",
        r"if-eqz p3, :cond_[a-z0-9_]+[\s\S]*?startCapture\(\)V",
        "PermissionCallback calls startCapture when granted",
    ),
    (
        "MusicSyncHelper.smali",
        r"resolveActivityForDialog\(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;\)",
        "resolveActivityForDialog() exists",
    ),
    (
        "MusicSyncHelper.smali",
        r"\.method public static setTargetItem\(Lcom/isaigu/gymapp/train/model/TrainItem;\)V",
        "setTargetItem() exposes live TrainItem from gear dialog",
    ),
    (
        "MusicSyncHelper$StartListener.smali",
        r"setTargetMacAddress\(Ljava/lang/String;\)V",
        "StartListener preserves target MAC before start",
    ),
]

ANTI_PATTERNS = [
    (
        "MusicSync.smali",
        r"TrainItem;->addStrenth\(I\)V",
        "MusicSync must not call addStrenth (PDU hook applies strength)",
    ),
    (
        "MusicSync.smali",
        r"TrainItemManager;->getItemList\(\)Ljava/util/List;",
        "MusicSync must not iterate TrainItemManager (PDU hook applies strength)",
    ),
    (
        "MusicSyncHelper$StartListener.smali",
        r"0x7f0d010c",
        "StartListener must not block mic start with training-screen error",
    ),
    (
        "MusicSyncBridge.smali",
        r"fragment_now",
        "attachManager() must not access private MainFragment.fragment_now",
    ),
]


def check_file(name: str, content: str) -> list[str]:
    errors: list[str] = []
    for fname, pattern, desc in RULES:
        if fname != name:
            continue
        if not re.search(pattern, content):
            errors.append(f"MISSING: {desc}")
    for fname, pattern, desc in ANTI_PATTERNS:
        if fname != name:
            continue
        if re.search(pattern, content):
            errors.append(f"BUG: {desc}")
    return errors


def check_pdu_hook() -> list[str]:
    if not DECOMPILED_COMMAND_UTIL.is_file():
        return ["MISSING: CommandUtil PDU hook (build/decompiled not found)"]
    content = DECOMPILED_COMMAND_UTIL.read_text(encoding="utf-8")
    if "MusicSync;->getLiveStrength()I" not in content:
        return ["MISSING: CommandUtil.getPartsParamsPduWithStrength music-sync hook"]
    return []


def main() -> int:
    if not SMALI_DIR.is_dir():
        print(f"ERROR: smali dir not found: {SMALI_DIR}")
        return 1

    all_errors: list[str] = []
    for path in sorted(SMALI_DIR.glob("*.smali")):
        if not path.name.startswith("MusicSync"):
            continue
        content = path.read_text(encoding="utf-8")
        errs = check_file(path.name, content)
        for e in errs:
            all_errors.append(f"{path.name}: {e}")

    all_errors.extend(check_pdu_hook())

    if all_errors:
        print("MusicSync smali verification FAILED:")
        for e in all_errors:
            print(f"  - {e}")
        return 1

    print("MusicSync smali verification PASSED")
    return 0


if __name__ == "__main__":
    sys.exit(main())
