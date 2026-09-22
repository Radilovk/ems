#!/usr/bin/env python3
"""Notify for Xiaomi wearable bridge: live HR on train screen."""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING_SMALI = ROOT / "branding" / "smali" / "wearable"
WEARABLE_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/wearable"
NEW_TRAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"

WEARABLE_SYNC_HOOK = (
    "    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;"
    "->syncTrainingState()V\n"
)

WEARABLE_ATTACH_HOOK = """
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

"""


def install_smali() -> None:
    if not BRANDING_SMALI.exists():
        raise RuntimeError(f"Missing wearable smali: {BRANDING_SMALI}")
    WEARABLE_DIR.mkdir(parents=True, exist_ok=True)
    for src in sorted(BRANDING_SMALI.glob("*.smali")):
        shutil.copy2(src, WEARABLE_DIR / src.name)
        print(f"Installed {src.name}")


def patch_new_train_fragment(text: str) -> str:
    if "NotifyWearableBridge;->syncTrainingState" not in text:
        text = text.replace(
            "    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingState()V\n\n    return-void",
            "    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingState()V\n\n"
            + WEARABLE_SYNC_HOOK
            + "\n    return-void",
            1,
        )
        print("NewTrainFragment: wearable sync on allStartPause")
    else:
        print("NewTrainFragment: wearable sync on allStartPause already applied")

    if "NotifyWearableBridge;->onTrainingFullStop" not in text:
        text = text.replace(
            "    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onTrainingFullStop()V\n\n    .line 100",
            "    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onTrainingFullStop()V\n\n"
            "    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onTrainingFullStop()V\n\n"
            "    .line 100",
            1,
        )
        print("NewTrainFragment: wearable stop on allStop")
    else:
        print("NewTrainFragment: wearable stop on allStop already applied")

    if "NotifyWearableBridge;->attachMasterPanel" in text:
        print("NewTrainFragment: wearable attach already applied")
        return text

    marker = (
        "invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;"
        "->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V\n"
    )
    if marker not in text:
        raise RuntimeError("NewTrainFragment: IntervalTimerHelper attach hook missing")
    text = text.replace(marker, marker + WEARABLE_ATTACH_HOOK, 1)
    print("NewTrainFragment: wearable attach on onCreateView")
    return text


START_WEARABLE_OLD = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncTrainingState()V

    .line 95
    return-void"""

START_WEARABLE_NEW = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncTrainingState()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->syncTrainingState()V

    .line 95
    return-void"""


def patch_train_item(text: str) -> str:
    if START_WEARABLE_OLD in text:
        text = text.replace(START_WEARABLE_OLD, START_WEARABLE_NEW, 1)
        print("TrainItem.start: wearable sync hook added")

    if "NotifyWearableBridge;->syncTrainingState" in text and START_WEARABLE_OLD not in text:
        music_done = "MusicPlayerHelper;->syncTrainingState" in text
        if music_done and text.count("NotifyWearableBridge;->syncTrainingState") >= 2:
            print("TrainItem: wearable sync already applied")
            return text

    music_hook = (
        "    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;"
        "->syncTrainingState()V\n"
    )
    music_wearable = music_hook + WEARABLE_SYNC_HOOK
    count = text.count(music_hook)
    if count:
        text = text.replace(music_hook, music_wearable, count)
        print(f"TrainItem: wearable sync after music hook ({count}x)")

    if "NotifyWearableBridge;->syncTrainingState" not in text:
        raise RuntimeError("TrainItem: could not attach wearable sync hooks")
    return text


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    install_smali()
    NEW_TRAIN_FRAGMENT.write_text(
        patch_new_train_fragment(NEW_TRAIN_FRAGMENT.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    TRAIN_ITEM.write_text(
        patch_train_item(TRAIN_ITEM.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    print("Wearable bridge patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
