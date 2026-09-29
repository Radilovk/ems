#!/usr/bin/env python3
"""The double impulse (2nd impulse / active pause) per mode: Основен, Кардио, Масаж — not Мускули.

The pulse engine already reads the running mode's bean (TrainProgram.matchProgram); the training row did not:
- TrainViewHolder: the 2nd-impulse MA / Hz buttons showed only in Основен (useType 0) and read
  programDataBean → shown in every mode but Мускули (useType 1), values of the running mode's bean.
- TrainItem.setUserType: a mode change switched Основен's 2nd impulse off → each mode keeps its own.
The ⚙ dialog sets it per mode (dialog/PauseSetting); the buttons turn it on (wearable/TrainIndex).
Runs after apply-train-index.py.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TRAIN = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "train"
HOLDER = TRAIN / "TrainViewHolder.smali"
ITEM = TRAIN / "model" / "TrainItem.smali"
TP = "Lcom/isaigu/gymapp/bean/TrainProgram;"
PDB = "Lcom/isaigu/gymapp/bean/ProgramDataBean;"
MARK = "# xems: double impulse per mode"

GATE = re.compile(
    r"(    iget v2, v1, " + re.escape(TP) + r"->useType:I\n\n)    if-eqz v2, :cond_visible\n")
BEAN = re.compile(r"    iget-object (v\d+), (v\d+), " + re.escape(TP) + r"->programDataBean:" + re.escape(PDB) + "\n")


def patch_holder() -> None:
    text = HOLDER.read_text(encoding="utf-8")
    if MARK in text:
        print("TrainViewHolder: already per mode")
        return
    text, n = GATE.subn(lambda m: m.group(1) + f"    {MARK}\n    const/4 v3, 0x1\n\n    if-ne v2, v3, :cond_visible\n", text)
    if n != 2:
        sys.exit(f"apply-double-impulse: expected 2 pause-button mode gates, found {n}")
    k = 0

    def to_match(m: re.Match) -> str:
        nonlocal k
        k += 1
        return (f"    invoke-virtual {{{m.group(2)}}}, {TP}->matchProgram(){PDB}\n\n"
                f"    move-result-object {m.group(1)}\n")

    text = BEAN.sub(to_match, text)
    if k != 4:
        sys.exit(f"apply-double-impulse: expected 4 programDataBean reads in TrainViewHolder, found {k}")
    HOLDER.write_text(text, encoding="utf-8")
    print("TrainViewHolder: 2nd-impulse buttons in every mode but Мускули, running mode's values")


def patch_item() -> None:
    text = ITEM.read_text(encoding="utf-8")
    if MARK in text:
        return
    a = text.find(".method public setUserType(I)V")
    if a < 0:
        sys.exit("apply-double-impulse: TrainItem.setUserType not found")
    b = text.find(".end method", a)
    body = text[a:b]
    off = f"    iput-boolean p1, v1, {PDB}->activePause:Z\n"
    if body.count(off) != 1:
        sys.exit("apply-double-impulse: setUserType is not the expected one")
    body = body.replace(off, f"    {MARK}: the mode keeps its own 2nd impulse\n")
    ITEM.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("TrainItem.setUserType: a mode change keeps each mode's 2nd impulse")


def main() -> None:
    patch_holder()
    patch_item()


if __name__ == "__main__":
    main()
