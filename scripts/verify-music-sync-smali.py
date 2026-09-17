#!/usr/bin/env python3
"""Static verification of MusicSync smali branch logic."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SMALI_DIR = ROOT / "branding" / "smali"

# (filename, required regex, description)
RULES = [
    (
        "MusicSync.smali",
        r"\.method public static start\(Landroid/app/Activity;II\)V[\s\S]*?if-nez p0, :cond_start_ok",
        "start() returns when activity is null",
    ),
    (
        "MusicSync.smali",
        r"\.method public static start\(Landroid/app/Activity;II\)V[\s\S]*?if-nez v1, :cond_request_permission",
        "start() requests permission only when not granted",
    ),
    (
        "MusicSync.smali",
        r"\.method private static computeStrength\(\)I[\s\S]*?if-nez v0, :cond_no_record",
        "computeStrength() returns cached value when audioRecord is null",
    ),
    (
        "MusicSync.smali",
        r"\.method private static ensureHandler\(\)V[\s\S]*?if-nez v0, :cond_skip_create",
        "ensureHandler() creates handler when missing",
    ),
    (
        "MusicSync.smali",
        r"\.method private static openAudioAtRate\(I\)Z[\s\S]*?getState\(\)I[\s\S]*?if-eq v0, v1, :cond_fail",
        "openAudioAtRate() fails only when AudioRecord is not INITIALIZED",
    ),
    (
        "MusicSync.smali",
        r"\.method private static scheduleTick\(\)V[\s\S]*?if-eqz v0, :cond_skip_schedule",
        "scheduleTick() runs only while music sync is active",
    ),
    (
        "MusicSync.smali",
        r"\.method private static startCapture\(\)V[\s\S]*?openAudioAtRate\(I\)Z",
        "startCapture() uses openAudioAtRate helper",
    ),
    (
        "MusicSync$PermissionCallback.smali",
        r"if-eqz p3, :cond_denied",
        "PermissionCallback grants path when p3 is true",
    ),
    (
        "MusicSync$StrengthApplier.smali",
        r"if-eqz v0, :cond_skip_item",
        "StrengthApplier skips empty train items",
    ),
    (
        "MusicSync$StrengthApplier.smali",
        r"if-eq v0, v1, :cond_skip_program",
        "StrengthApplier skips when strength unchanged",
    ),
    (
        "MusicSync$TickRunnable.smali",
        r"if-eqz v0, :cond_skip_tick",
        "TickRunnable runs only while music sync is active",
    ),
    (
        "MusicSyncHelper.smali",
        r"\.method public static getActivity\(\)[\s\S]*?resolveActivityForDialog",
        "getActivity() delegates to resolveActivityForDialog()",
    ),
    (
        "MusicSyncHelper.smali",
        r"resolveActivityForDialog\(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;\)",
        "resolveActivityForDialog() exists for robust activity lookup",
    ),
    (
        "MusicSyncHelper.smali",
        r"MainActivity;->getInstance\(\)Lcom/isaigu/gymapp/MainActivity;",
        "resolveActivityForDialog() falls back to MainActivity.getInstance()",
    ),
    (
        "MusicSyncHelper.smali",
        r"\.method public static resolveActivity\([\s\S]*?if-nez p0, :cond_no_context",
        "resolveActivity() returns null when context is missing",
    ),
    (
        "MusicSyncHelper.smali",
        r"\.method public static bind\([\s\S]*?if-nez p0, :cond_has_root[\s\S]*?return-void[\s\S]*?:cond_has_root",
        "bind() returns when root view is null, continues when non-null",
    ),
    (
        "MusicSyncHelper$StartListener.smali",
        r"resolveActivityForDialog\(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;\)",
        "StartListener resolves activity via resolveActivityForDialog()",
    ),
    (
        "MusicSyncHelper$StartListener.smali",
        r"if-nez v0, :cond_start",
        "StartListener errors when activity is null",
    ),
    (
        "MusicSyncBridge.smali",
        r"\.method public static attachManager\([\s\S]*?if-nez p0, :cond_missing_activity",
        "attachManager() returns when activity is null",
    ),
    (
        "MusicSyncBridge.smali",
        r"if-nez v0, :cond_not_fragment_activity",
        "attachManager() requires FragmentActivity",
    ),
]

ANTI_PATTERNS = [
    (
        "MusicSync.smali",
        r"\.method public static start\(Landroid/app/Activity;II\)V[\s\S]*?if-eqz p0, :cond_start_ok",
        "start() must not return when activity is valid",
    ),
    (
        "MusicSync$PermissionCallback.smali",
        r"if-nez p3, :cond_denied",
        "PermissionCallback must not invert grant flag",
    ),
    (
        "MusicSyncHelper.smali",
        r"\.method public static bind\([\s\S]*?if-eqz p0, :cond_has_root[\s\S]*?return-void",
        "bind() must not return when root view is valid (inverted null guard)",
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
