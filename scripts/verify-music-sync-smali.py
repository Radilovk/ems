#!/usr/bin/env python3
"""Static verification of MusicSync smali (compiled from Java)."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SMALI_DIR = ROOT / "branding" / "smali"
COMMAND_UTIL = (
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
        r"MusicSync\$AudioLoopRunnable",
        "audio thread updates liveStrength without sendPulse",
    ),
]

ANTI_PATTERNS = [
    (
        "MusicSync.smali",
        r"TrainItem;->onParamsChange\(\)V",
        "MusicSync must not call onParamsChange (breaks pulse/pause rhythm)",
    ),
    (
        "MusicSync.smali",
        r"TrainItem;->addStrenth\(I\)V",
        "MusicSync must not call addStrenth",
    ),
    (
        "MusicSyncHelper$StartListener.smali",
        r"0x7f0d010c",
        "StartListener must not block mic start with training-screen error",
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
    if not COMMAND_UTIL.is_file():
        return ["MISSING: CommandUtil PDU hook (build/decompiled not found)"]
    content = COMMAND_UTIL.read_text(encoding="utf-8")
    errors: list[str] = []
    if "cond_music_work_strength" not in content:
        errors.append("MISSING: work-phase hook in getPartsParamsPdu")
    if "getPartsParamsPduWithStrength" in content.split("cond_music_work_strength")[0]:
        pass
    # Pause path must NOT have music hook
    ws = content.split(".method public static getPartsParamsPduWithStrength", 1)
    if len(ws) > 1 and "MusicSync;->getLiveStrength()I" in ws[1].split(".end method", 1)[0]:
        errors.append("BUG: music hook must not be in getPartsParamsPduWithStrength (pause phase)")
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
