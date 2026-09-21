#!/usr/bin/env python3
"""Music sync: +/- ceiling, block manual slider, lock index/muscle controls."""

from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TRAIN_ITEM_MANAGER = (
    ROOT
    / "build/decompiled/smali_classes2/com/isaigu/gymapp/train/TrainItemManager.smali"
)
TRAIN_VH4 = (
    ROOT
    / "build/decompiled/smali_classes2/com/isaigu/gymapp/train/TrainViewHolder$4.smali"
)
NEW_TRAIN = (
    ROOT
    / "build/decompiled/smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
)

ADD_STRENGTH_OLD = """    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    :cond_ma
    return-void"""

ADD_STRENGTH_NEW = """    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p2, p1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_ma

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    :cond_ma
    return-void"""

ADD_STRENGTH_BROKEN = """    invoke-static {p2, p1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-eqz v0, :cond_ma

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V"""

ADD_STRENGTH_FIXED = """    invoke-static {p2, p1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_ma

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V"""

ADD_STRENGTH_OLD_COND4 = """    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    :cond_4"""

ADD_STRENGTH_NEW_COND4 = """    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p2, p1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    :cond_4"""

ON_CHANGED_END_GUARD = """    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->shouldBlockManualControls()Z

    move-result v0

    if-eqz v0, :cond_allow_slider_end

    return-void

    :cond_allow_slider_end

"""

CHANGE_PART_GUARD = """    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->shouldBlockManualControls()Z

    move-result v0

    if-eqz v0, :cond_allow_part

    return-void

    :cond_allow_part

"""


def patch_train_item_manager(text: str) -> str:
    if ADD_STRENGTH_BROKEN in text:
        text = text.replace(ADD_STRENGTH_BROKEN, ADD_STRENGTH_FIXED, 1)
        print("TrainItemManager: fixed inverted MA +/- music sync branch")
        return text
    if "MusicSyncBridge;->onMaStrengthDelta" in text:
        print("TrainItemManager: MA +/- ceiling hook already applied")
        return text
    if ADD_STRENGTH_OLD in text:
        text = text.replace(ADD_STRENGTH_OLD, ADD_STRENGTH_NEW, 1)
        print("TrainItemManager: route MA +/- to music sync ceiling during sync")
        return text
    if ADD_STRENGTH_OLD_COND4 in text:
        text = text.replace(ADD_STRENGTH_OLD_COND4, ADD_STRENGTH_NEW_COND4, 1)
        print("TrainItemManager: route MA +/- to music sync ceiling during sync")
        return text
    raise RuntimeError("TrainItemManager.addAllPartValue MA marker not found")


def patch_circle_slider(text: str) -> str:
    if "cond_sync_block_slider" in text or "cond_allow_slider_end" in text:
        print("TrainViewHolder$4: manual slider block already applied")
        return text
    marker = ".method public onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V\n    .locals 4\n"
    if marker not in text:
        raise RuntimeError("TrainViewHolder$4.onChangedEnd marker not found")
    text = text.replace(marker, marker + ON_CHANGED_END_GUARD, 1)
    print("TrainViewHolder$4: block manual circle slider during music sync")
    return text


def patch_change_part(text: str) -> str:
    if "cond_sync_block_part" in text:
        print("NewTrainFragment.changePartControl: sync lock already applied")
        return text
    marker = ".method private changePartControl(I)V\n    .locals 2\n"
    if marker not in text:
        raise RuntimeError("NewTrainFragment.changePartControl marker not found")
    text = text.replace(marker, marker + CHANGE_PART_GUARD, 1)
    print("NewTrainFragment: block muscle selection during music sync")
    return text


def main() -> int:
    paths = [
        (TRAIN_ITEM_MANAGER, patch_train_item_manager),
        (TRAIN_VH4, patch_circle_slider),
        (NEW_TRAIN, patch_change_part),
    ]
    for path, patcher in paths:
        if not path.is_file():
            raise SystemExit(f"Missing: {path}")
        text = path.read_text(encoding="utf-8")
        path.write_text(patcher(text), encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
