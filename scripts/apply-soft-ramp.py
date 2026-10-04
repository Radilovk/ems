#!/usr/bin/env python3
"""Tablet-side impulse ramp (train.model.SoftRamp): the suit ignores the PDU ramp bytes.

- copies branding/smali/softramp/SoftRamp*.smali into train/model;
- TrainItem.startPulse: SoftRamp.phase(this) right before its sendPulse (a phase begins);
- TrainItem.sendPulse: the ON-phase CommandSender.sendDuration goes through SoftRamp.sendDuration;
- TrainItem.sendPulse: the whole pause-phase branch (2nd impulse or plain pause) goes through SoftRamp.sendPause,
  so every pause send is inside the limits (no 2nd impulse at strength 0, ≤ 10 Hz, never above the main one).
"""
from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
MODEL = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model"
TRAIN_ITEM = MODEL / "TrainItem.smali"
SRC = ROOT / "branding/smali/softramp"

SEND = ("    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/train/model/CommandSender;"
        "->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V")
SEND_NEW = ("    invoke-static {p0, v1, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;"
            "->sendDuration(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V")
CALL = "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V"
# the pause branch of sendPulse after apply-active-pause-fixes.py (absolute 2nd-impulse strength, cap 100)
PAUSE_A = """    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1
"""
PAUSE_Z = """    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
"""
PAUSE_NEW = """
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    iget v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {p0, v1, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendPause(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
"""
PHASE = "    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->phase(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n\n"


def method(text: str, sig: str) -> tuple[int, int]:
    a = text.find(sig)
    if a < 0:
        sys.exit(f"apply-soft-ramp: {sig} not found")
    b = text.find(".end method", a)
    return a, b


def main() -> None:
    files = sorted(SRC.glob("SoftRamp*.smali"))
    if not files:
        sys.exit("apply-soft-ramp: branding/smali/softramp/SoftRamp*.smali missing")
    for f in files:
        shutil.copy(f, MODEL / f.name)
    text = TRAIN_ITEM.read_text(encoding="utf-8")
    if "SoftRamp;->phase" not in text:
        a, b = method(text, ".method private declared-synchronized startPulse()V")
        body = text[a:b]
        if body.count(CALL) != 1:
            sys.exit("apply-soft-ramp: startPulse sendPulse call not found once")
        text = text[:a] + body.replace(CALL, PHASE + CALL) + text[b:]
    if "SoftRamp;->sendDuration" not in text:
        a, b = method(text, ".method private sendPulse()V")
        body = text[a:b]
        if body.count(SEND) != 1:
            sys.exit("apply-soft-ramp: sendPulse sendDuration call not found once")
        text = text[:a] + body.replace(SEND, SEND_NEW) + text[b:]
    if "SoftRamp;->sendPause" not in text:
        a, b = method(text, ".method private sendPulse()V")
        body = text[a:b]
        i = body.find(PAUSE_A)
        j = body.find(PAUSE_Z, i)
        if i < 0 or j < 0 or body.count(PAUSE_A) != 1:
            sys.exit("apply-soft-ramp: sendPulse pause branch not found once")
        body = body[:i + len(PAUSE_A)] + PAUSE_NEW + body[j + len(PAUSE_Z):]
        text = text[:a] + body + text[b:]
    TRAIN_ITEM.write_text(text, encoding="utf-8")
    print(f"apply-soft-ramp: {len(files)} classes, TrainItem hooked")


if __name__ == "__main__":
    main()
