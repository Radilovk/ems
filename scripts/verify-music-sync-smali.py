#!/usr/bin/env python3
"""Static verification of MusicSync smali (compiled from Java)."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SMALI_DIR = ROOT / "branding" / "smali"

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
        r"\.method static startCapture\(\)V[\s\S]*?openMicrophone\(\)Z[\s\S]*?if-nez v\d+, :cond_[a-z0-9_]+[\s\S]*?startRecording\(\)V",
        "startCapture() starts recording when openMicrophone succeeds",
    ),
    (
        "MusicSync.smali",
        r"\.method private static tryOpen\(IIII\)Z[\s\S]*?getMinBufferSize\(III\)I[\s\S]*?if-gtz v\d+, :cond_[a-z0-9_]+",
        "tryOpen() continues only when buffer size is valid",
    ),
    (
        "MusicSync.smali",
        r"\.method private static tryOpen\(IIII\)Z[\s\S]*?if-lt v\d+, v\d+, :cond_[a-z0-9_]+[\s\S]*?AudioRecord\$Builder",
        "tryOpen() uses AudioRecord.Builder on API 23+",
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
        r"MainActivity;->getInstance\(\)Lcom/isaigu/gymapp/MainActivity;",
        "resolveActivityForDialog() falls back to MainActivity.getInstance()",
    ),
    (
        "MusicSyncHelper.smali",
        r"\.method public static bind\([\s\S]*?if-nez p0, :cond_[a-z0-9_]+[\s\S]*?return-void",
        "bind() returns when root view is null",
    ),
    (
        "MusicSyncHelper$StartListener.smali",
        r"if-nez p\d+, :cond_[a-z0-9_]+[\s\S]*?0x7f0d010b",
        "StartListener reports missing activity error",
    ),
    (
        "MusicSyncBridge.smali",
        r"\.method public static attachManager\([\s\S]*?if-nez p0, :cond_[a-z0-9_]+",
        "attachManager() returns when activity is null",
    ),
]

ANTI_PATTERNS = [
    (
        "MusicSync.smali",
        r"\.method public static start\(Landroid/app/Activity;II\)V[\s\S]*?if-eqz p0, :cond_[a-z0-9_]+[\s\S]*?return-void",
        "start() must not return when activity is valid",
    ),
    (
        "MusicSync.smali",
        r"\.method static startCapture\(\)V[\s\S]*?openMicrophone\(\)Z[\s\S]*?if-eqz v\d+, :cond_[a-z0-9_]+\n\n    :cond_[a-z0-9_]+\n    const v\d+, 0x7f0d010e",
        "startCapture() must not show mic error when openMicrophone succeeds",
    ),
    (
        "MusicSync.smali",
        r"\.method private static tryOpen\(IIII\)Z[\s\S]*?if-ge v\d+, v\d+, :cond_[a-z0-9_]+[\s\S]*?AudioRecord\$Builder",
        "tryOpen() must not skip Builder path on API 23+",
    ),
    (
        "MusicSync$PermissionCallback.smali",
        r"if-nez p3, :cond_[a-z0-9_]+[\s\S]*?startCapture\(\)V",
        "PermissionCallback must not invert grant flag",
    ),
    (
        "MusicSyncHelper.smali",
        r"getDialog\(\)Landroid/app/Dialog;[\s\S]*?if-nez v\d+, :goto_[a-z0-9_]+",
        "resolveActivityForDialog() must not skip getOwnerActivity when dialog exists",
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

    if all_errors:
        print("MusicSync smali verification FAILED:")
        for e in all_errors:
            print(f"  - {e}")
        return 1

    print("MusicSync smali verification PASSED")
    return 0


if __name__ == "__main__":
    sys.exit(main())
