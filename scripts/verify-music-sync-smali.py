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
UTILS_DIR = (
    ROOT
    / "build"
    / "decompiled"
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "utils"
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
    (
        r"MasterStrengthControl;->setMasterStrength\(I(?:Z)?\)V",
        "mic calls control channel",
    ),
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


def check_player_engine_deps() -> list[str]:
    required = (
        "AudioOutputLatency.smali",
        "MusicUriSource.smali",
        "SoundEnvelopeMapper.smali",
    )
    if not UTILS_DIR.is_dir():
        return ["MISSING: train/utils (run build first)"]
    errs: list[str] = []
    for name in required:
        if not (UTILS_DIR / name).is_file():
            errs.append(f"MISSING in APK: train/utils/{name} (apply-music-player install_smali)")
    engine = UTILS_DIR / "MusicPlayerEngine.smali"
    if engine.is_file():
        text = engine.read_text(encoding="utf-8")
        for cls in ("AudioOutputLatency", "MusicUriSource"):
            if cls in text and f"{cls}.smali" not in {
                p.name for p in UTILS_DIR.glob("*.smali")
            }:
                errs.append(f"MusicPlayerEngine references {cls} but smali not installed")
    return errs


def check_stale_player_helper() -> list[str]:
    stale = SMALI_DIR / "MusicPlayerHelper$1.smali"
    if stale.is_file():
        return [
            "MusicPlayerHelper$1.smali: stale inner class from removed openDialog(); "
            "run compile-music-sync-java.sh after rm -rf build/music-sync-java/classes",
        ]
    return []


def main() -> int:
    errs: list[str] = []
    errs.extend(check_player_engine_deps())
    errs.extend(check_stale_player_helper())
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
