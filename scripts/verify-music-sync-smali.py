#!/usr/bin/env python3
"""Static verification: mic + work-phase PDU hook + gated onParamsChange push."""

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
    ("MusicSync.smali", r"\.method public static isRunning\(\)Z", "isRunning()"),
    ("MusicSync.smali", r"\.method public static getLiveStrength\(\)I", "getLiveStrength()"),
    ("MusicSync.smali", r"sput.*liveStrength", "updates liveStrength from mic"),
    ("MusicSync.smali", r"inStart:Z", "work-phase gate checks inStart"),
    ("MusicSync.smali", r"connected:Z", "connected gate before BLE push"),
]

GLOBAL_RULES = [
    (r"TrainItem;->onParamsChange\(\)V", "work-phase BLE refresh via onParamsChange"),
]

ANTI = [
    (r"TrainItem;->addStrenth\(I\)V", "must not call addStrenth"),
    (r"TrainItemManager", "must not use TrainItemManager"),
]


def check_pdu() -> list[str]:
    if not COMMAND_UTIL.is_file():
        return ["MISSING: CommandUtil (run build first)"]
    t = COMMAND_UTIL.read_text(encoding="utf-8")
    out: list[str] = []
    if "cond_music_work_strength" not in t:
        out.append("MISSING: work-phase PDU hook in getPartsParamsPdu")
    ws = t.split(".method public static getPartsParamsPduWithStrength", 1)
    if len(ws) > 1 and "MusicSync;->getLiveStrength()I" in ws[1].split(".end method", 1)[0]:
        out.append("BUG: hook must not be in getPartsParamsPduWithStrength (pause path)")
    return out


def main() -> int:
    errs: list[str] = []
    paths = sorted(SMALI_DIR.glob("MusicSync*.smali"))
    combined = "\n".join(p.read_text(encoding="utf-8") for p in paths)
    for path in paths:
        c = path.read_text(encoding="utf-8")
        for f, p, d in RULES:
            if f == path.name and not re.search(p, c):
                errs.append(f"{path.name}: MISSING {d}")
        for p, d in ANTI:
            if re.search(p, c):
                errs.append(f"{path.name}: BUG {d}")
    for p, d in GLOBAL_RULES:
        if not re.search(p, combined):
            errs.append(f"MusicSync*.smali: MISSING {d}")
    errs.extend(check_pdu())
    if errs:
        print("FAILED:")
        for e in errs:
            print(f"  - {e}")
        return 1
    print("PASSED")
    return 0


if __name__ == "__main__":
    sys.exit(main())
