#!/usr/bin/env python3
"""Mic → MasterStrengthControl.setMasterStrength (no PDU hook)."""

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
TRAIN_VH = (
    ROOT
    / "build"
    / "decompiled"
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "TrainViewHolder.smali"
)

RULES = [
    ("MasterStrengthControl.smali", r"\.method public static setMasterStrength\(I\)V", "setMasterStrength()"),
    ("MasterStrengthControl.smali", r"iput.*ProgramDataBean;->strenth:I", "writes bean.strenth"),
    ("MasterStrengthControl.smali", r"CircleSeekBar;->setCurProcess\(I\)V", "moves circle slider"),
    ("MasterStrengthControl.smali", r"TrainItem;->onParamsChange\(\)V", "BLE via onParamsChange"),
    ("MusicSync.smali", r"\.method public static isRunning\(\)Z", "isRunning()"),
]

GLOBAL_RULES = [
    (r"MasterStrengthControl;->setMasterStrength\(I\)V", "mic calls control channel"),
]

ANTI = [
    (r"TrainItem;->addStrenth\(I\)V", "must not call addStrenth"),
    (r"TrainItemManager", "must not use TrainItemManager"),
    (r"inStart:Z", "must not gate on impulse phase"),
]


def check_pdu() -> list[str]:
    if not COMMAND_UTIL.is_file():
        return ["MISSING: CommandUtil (run build first)"]
    t = COMMAND_UTIL.read_text(encoding="utf-8")
    if "MusicSync;->getLiveStrength()I" in t or "MasterStrengthControl" in t.split("getPartsParamsPdu")[0]:
        if "MusicSync;->getLiveStrength()I" in t:
            return ["BUG: PDU hook must be removed"]
    return []


def check_train_vh() -> list[str]:
    if not TRAIN_VH.is_file():
        return ["MISSING: TrainViewHolder (run build first)"]
    t = TRAIN_VH.read_text(encoding="utf-8")
    if "MusicSync;->registerUi" not in t and "MasterStrengthControl;->bind" not in t:
        return ["MISSING: TrainViewHolder.bind UI registration hook"]
    return []


def main() -> int:
    errs: list[str] = []
    paths = sorted(SMALI_DIR.glob("*.smali"))
    paths = [p for p in paths if p.name.startswith("MusicSync") or p.name.startswith("MasterStrength")]
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
    errs.extend(check_train_vh())
    if errs:
        print("FAILED:")
        for e in errs:
            print(f"  - {e}")
        return 1
    print("PASSED")
    return 0


if __name__ == "__main__":
    sys.exit(main())
