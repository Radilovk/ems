#!/usr/bin/env python3
"""Register circle slider + MA label with MusicSync when TrainViewHolder binds."""

from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TRAIN_VH = (
    ROOT
    / "build/decompiled/smali_classes2/com/isaigu/gymapp/train/TrainViewHolder.smali"
)

BIND_OLD = """    .line 194
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isEmpty:Z

    if-nez v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindNotEmpty()V"""

BIND_NEW = """    .line 194
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isEmpty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 195
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindNotEmpty()V"""

LOCALS_BROKEN = """.method public bind(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V
    .locals 1"""

LOCALS_FIXED = """.method public bind(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V
    .locals 3"""


def main() -> int:
    if not TRAIN_VH.is_file():
        raise SystemExit(f"TrainViewHolder.smali not found: {TRAIN_VH}")
    text = TRAIN_VH.read_text(encoding="utf-8")

    if "MusicSync;->registerUi" not in text:
        if BIND_OLD not in text:
            raise RuntimeError("TrainViewHolder.bind marker not found")
        text = text.replace(BIND_OLD, BIND_NEW, 1)
        print("TrainViewHolder.bind: register circle slider for music sync")
    else:
        print("TrainViewHolder.bind: music slider hook already applied")

    if LOCALS_BROKEN in text:
        text = text.replace(LOCALS_BROKEN, LOCALS_FIXED, 1)
        print("TrainViewHolder.bind: fixed .locals 3 (was 1, caused register crash)")
    elif LOCALS_FIXED in text:
        print("TrainViewHolder.bind: .locals already correct")
    elif "MusicSync;->registerUi" in text:
        raise RuntimeError("TrainViewHolder.bind: registerUi present but .locals not fixed")

    TRAIN_VH.write_text(text, encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
