#!/usr/bin/env python3
"""Settings saved from ⚙ Master (right panel) or a row's gear do not interrupt the training.

TrainItem.setTrainProgram used to call reset(): the training stopped, the time started again and the mode
(useType: 0 main, 1 strength, 2 aerobic, 3 massage) went back to 0. Now (train/utils/ProgramLive):
- the mode stays what it was before the settings (same client);
- a manual training in progress (running, or paused part-way) goes on with the new parameters: the time done
  stays; a running one gets its countdown restarted from the new remaining time and the new pulse at once.
AI / automatic sessions and another client's program keep the reset (then the mode is set back).
Runs after apply-active-pause-fixes.py (which adds ActivePauseStorage.apply here).
"""
from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
UTILS = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils"
SRC = ROOT / "branding/smali/ProgramLive.smali"

TI = "Lcom/isaigu/gymapp/train/model/TrainItem;"
TP = "Lcom/isaigu/gymapp/bean/TrainProgram;"
W = "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;"
PL = "Lcom/isaigu/gymapp/train/utils/ProgramLive;"

METHOD = f""".method public setTrainProgram({TP})V
    .locals 8

    iget-object v6, p0, {TI}->data:{W}

    iget-object v7, v6, {W}->trainProgram:{TP}

    invoke-static {{v7, p1}}, {PL}->keepMode({TP}{TP})I

    move-result v5

    invoke-static {{p0, v7, p1, v5}}, {PL}->liveRemaining({TI}{TP}{TP}I)I

    move-result v4

    iput-object p1, v6, {W}->trainProgram:{TP}

    invoke-static {{p1}}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->apply({TP})V

    if-gez v4, :cond_xems_live

    invoke-virtual {{p0}}, {TI}->reset()V

    iget-object v6, p0, {TI}->data:{W}

    iget-object v6, v6, {W}->trainProgram:{TP}

    iput v5, v6, {TP}->useType:I

    invoke-direct {{p0}}, {TI}->onTrainItemChange()V

    return-void

    :cond_xems_live
    iput v4, p0, {TI}->workLength:I

    iget-object v6, p0, {TI}->data:{W}

    iget-boolean v6, v6, {W}->start:Z

    if-eqz v6, :cond_xems_paused

    iget-object v0, p0, {TI}->workCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_xems_nocd

    invoke-virtual {{v0}}, Landroid/os/CountDownTimer;->cancel()V

    :cond_xems_nocd
    new-instance v0, Lcom/isaigu/gymapp/train/model/TrainItem$1;

    move-object v1, p0

    mul-int/lit16 v2, v4, 0x3e8

    int-to-long v2, v2

    const-wide/16 v4, 0x64

    invoke-direct/range {{v0 .. v5}}, Lcom/isaigu/gymapp/train/model/TrainItem$1;-><init>({TI}JJ)V

    iput-object v0, p0, {TI}->workCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {{v0}}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    invoke-virtual {{p0}}, {TI}->onParamsChange()V

    :cond_xems_paused
    invoke-direct {{p0}}, {TI}->onTrainItemChange()V

    return-void
.end method"""


def main() -> None:
    if not SRC.is_file():
        sys.exit("apply-live-settings: branding/smali/ProgramLive.smali missing — run compile-music-sync-java.sh")
    UTILS.mkdir(parents=True, exist_ok=True)
    shutil.copy2(SRC, UTILS / "ProgramLive.smali")
    text = ITEM.read_text(encoding="utf-8")
    if PL + "->liveRemaining" in text:
        print("apply-live-settings: already applied")
        return
    sig = f".method public setTrainProgram({TP})V"
    a = text.find(sig)
    if a < 0:
        sys.exit("apply-live-settings: TrainItem.setTrainProgram not found")
    b = text.find(".end method", a) + len(".end method")
    body = text[a:b]
    if "ActivePauseStorage;->apply" not in body or "->reset()V" not in body:
        sys.exit("apply-live-settings: setTrainProgram is not the expected one (ActivePauseStorage.apply + reset)")
    ITEM.write_text(text[:a] + METHOD + text[b:], encoding="utf-8")
    print("apply-live-settings: settings apply live (manual), the mode stays")


if __name__ == "__main__":
    main()
