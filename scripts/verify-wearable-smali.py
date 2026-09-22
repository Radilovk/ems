#!/usr/bin/env python3
"""Verify wearable bridge smali and train hooks."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
WEARABLE = DECOMPILED / "smali_classes2/com/isaigu/gymapp/wearable/NotifyWearableBridge.smali"
NEW_TRAIN = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"


def main() -> int:
    errors = []
    if not WEARABLE.exists():
        errors.append("NotifyWearableBridge.smali missing")
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
