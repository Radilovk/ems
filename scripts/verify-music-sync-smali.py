#!/usr/bin/env python3
"""Music player → MasterStrengthControl.setMasterStrength (no PDU hook)."""

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
    ("MusicSync.smali", r"\.method public static onBleWriteComplete\(\)V", "BLE write-complete hook"),
]

GLOBAL_RULES = [
    (
        r"MasterStrengthControl;->setMasterStrength\(I(?:Z)?\)V",
        "player calls control channel",
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
    if not UTILS_DIR.is_dir():
        return ["MISSING: train/utils (run build first)"]
    errs: list[str] = []
    engine = UTILS_DIR / "MusicPlayerEngine.smali"
    if engine.is_file():
        text = engine.read_text(encoding="utf-8")
        installed = {p.name for p in UTILS_DIR.glob("*.smali")}
        for cls in ("MusicUriSource",):
            if cls in text and f"{cls}.smali" not in installed:
                errs.append(f"MusicPlayerEngine references {cls} but smali not installed")
    if not (UTILS_DIR / "SoundEnvelopeMapper.smali").is_file():
        errs.append("MISSING in APK: train/utils/SoundEnvelopeMapper.smali")
    return errs


def check_ble_pacing_hooks() -> list[str]:
    model = UTILS_DIR.parent / "model"
    callback = model / "CommandSender$1.smali"
    if not callback.is_file():
        return ["MISSING: CommandSender$1 (run build first)"]
    errs: list[str] = []
    if callback.read_text(encoding="utf-8").count("MusicSync;->onBleWriteComplete()V") != 2:
        errs.append("CommandSender$1: onWriteSuccess/onWriteFailure must call MusicSync.onBleWriteComplete()")
    if "isBusy()Z" not in (model / "CommandSender.smali").read_text(encoding="utf-8"):
        errs.append("CommandSender: MISSING isBusy()")
    if ".method public isSenderBusy()Z" not in (model / "TrainItem.smali").read_text(encoding="utf-8"):
        errs.append("TrainItem: MISSING isSenderBusy() (MusicSync pacing would crash)")
    return errs


def check_player_file_picker() -> list[str]:
    pick = SMALI_DIR / "MusicPlayerHelper$PickListener.smali"
    if not pick.is_file():
        return ["MISSING: MusicPlayerHelper$PickListener.smali"]
    text = pick.read_text(encoding="utf-8")
    if "startActivityForResult" not in text:
        return ["MusicPlayerHelper$PickListener: missing startActivityForResult"]
    before = text.split("startActivityForResult", 1)[0]
    if "hide()V" not in before:
        return [
            "MusicPlayerHelper$PickListener: must call overlayDialog.hide() before SAF picker "
            "(prevents dismiss crash on file pick)"
        ]
    return []


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
    errs.extend(check_ble_pacing_hooks())
    errs.extend(check_player_file_picker())
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
