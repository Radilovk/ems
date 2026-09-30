#!/usr/bin/env python3
"""The 2nd impulse (active pause) turns on from either of its buttons and starts at the main strength.

TrainPauseHzValueClickListener / TrainPauseMaValueClickListener (built by the active-pause scripts):
onClick → wearable/TrainIndex.pauseClick(item, hz), then ActivePauseStorage.save and the holder's two
UI refreshes (access$100 / access$200) as before. Before: only the Hz button turned it on and the pause
strength was copied from the main one only when it was 0; the MA button did nothing while it was off.
The 5 s auto-clear of the index selection runs in TrainIndex.tick (SessionRecorder).
Runs after apply-active-pause-control-fixes.py (last owner of these listeners).
"""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TRAIN = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "train"
TI = "Lcom/isaigu/gymapp/train/model/TrainItem;"
TVH = "Lcom/isaigu/gymapp/train/TrainViewHolder;"
IDX = "Lcom/isaigu/gymapp/wearable/TrainIndex;"


def body(cls: str, hz: bool) -> str:
    L = f"Lcom/isaigu/gymapp/train/{cls};"
    return f""".method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, {L}->holder:{TVH}

    iget-object v1, v0, {TVH}->item:{TI}

    const/4 v2, {"0x1" if hz else "0x0"}

    invoke-static {{v1, v2}}, {IDX}->pauseClick({TI}Z)V

    invoke-virtual {{v0}}, {TVH}->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {{v1}}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    invoke-static {{v0}}, {TVH}->access$100({TVH})V

    invoke-static {{v0}}, {TVH}->access$200({TVH})V

    return-void
.end method"""


def patch(cls: str, hz: bool) -> None:
    f = TRAIN / f"{cls}.smali"
    if not f.is_file():
        sys.exit(f"apply-train-index: {cls} missing")
    text = f.read_text(encoding="utf-8")
    if IDX in text:
        print(f"{cls}: already TrainIndex")
        return
    sig = ".method public onClick(Landroid/view/View;)V"
    a = text.find(sig)
    if a < 0:
        sys.exit(f"apply-train-index: {cls}.onClick not found")
    b = text.find(".end method", a) + len(".end method")
    if "access$100" not in text[a:b] or "access$200" not in text[a:b]:
        sys.exit(f"apply-train-index: {cls}.onClick is not the expected one")
    f.write_text(text[:a] + body(cls, hz) + text[b:], encoding="utf-8")
    print(f"{cls}: 2nd impulse on from this button too, at the main strength")


def main() -> None:
    wearable = TRAIN.parent / "wearable" / "TrainIndex.smali"
    if not wearable.is_file():
        print("apply-train-index: TrainIndex not installed (BETA_MUSIC=0) — skipped")
        return
    patch("TrainPauseHzValueClickListener", True)
    patch("TrainPauseMaValueClickListener", False)


if __name__ == "__main__":
    main()
