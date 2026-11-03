#!/usr/bin/env python3
"""A mode change is a new stage of the same training; the training clock keeps real time (owner, 1.1.493).

- TrainItem.setUserType (Основен / Мускули / Кардио / Масаж): the vendor stop() and the new mode's full time made
  every mode change a new training. Now (train/utils/ProgramLive.stageLive) a training under way — running, or
  paused part-way — goes on: the time left stays, the session record goes on, the pulse restarts at once with the
  new mode's times (and its Hz / 2nd impulse); the strength and channel percents come from the mode it leaves
  (PartStrength.modeCarry, hooked by apply-double-impulse.py). Only ■ or the end of the time ends the training.
  A row not started yet keeps the vendor path (stop + the new mode's full time).
- TrainItem$1.onTick: the vendor cut the milliseconds left to whole seconds, so every ❚❚ / ▶ lost up to 1.1 s and a
  20:00 training showed 19:59 at once. ProgramLive.tickWork rounds the shown second up and keeps the exact rest;
  TrainItem.start restarts the countdown from it (ProgramLive.workMs).
Runs after apply-double-impulse.py (modeCarry + xemsRestartPulse) and apply-live-settings.py.
"""
from __future__ import annotations

import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MODEL = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "train" / "model"
UTILS = MODEL.parent / "utils"
ITEM = MODEL / "TrainItem.smali"
TICK = MODEL / "TrainItem$1.smali"
PL_SRC = ROOT / "branding" / "smali" / "ProgramLive.smali"

TI = "Lcom/isaigu/gymapp/train/model/TrainItem;"
W = "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;"
PL = "Lcom/isaigu/gymapp/train/utils/ProgramLive;"
MARK = "# xems: a mode change is a new stage"

STOP = f"    invoke-virtual {{p0}}, {TI}->stop()V\n"

STAGE = f"""    {MARK}
    invoke-static {{p0}}, {PL}->stageLive({TI})Z

    move-result v0

    if-eqz v0, :cond_xems_new_training

    iget-object v0, p0, {TI}->pulseCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_xems_stage_nocd

    invoke-virtual {{v0}}, Landroid/os/CountDownTimer;->cancel()V

    :cond_xems_stage_nocd
    iget-object v0, p0, {TI}->data:{W}

    const/4 v1, 0x0

    iput-boolean v1, v0, {W}->inStart:Z

    iput v1, v0, {W}->secondValue:I

    iget-boolean v1, v0, {W}->start:Z

    if-eqz v1, :cond_xems_stage_done

    invoke-virtual {{p0}}, {TI}->xemsRestartPulse()Z

    move-result v1

    if-nez v1, :cond_xems_stage_done

    invoke-direct {{p0}}, {TI}->startPulse()V

    :cond_xems_stage_done
    invoke-direct {{p0}}, {TI}->onTrainItemChange()V

    return-void

    :cond_xems_new_training
"""

TICK_RE = re.compile(
    r"    const-wide/16 (v\d+), 0x3e8\n(?:\s*\.line \d+\n)?\s*"
    r"div-long \1, p1, \1\n(?:\s*\.line \d+\n)?\s*"
    r"long-to-int (v\d+), \1\n(?:\s*\.line \d+\n)?\s*"
    r"iput \2, (v\d+), " + re.escape(TI) + r"->workLength:I\n")

START_RE = re.compile(
    r"    iget (v\d+), p0, " + re.escape(TI) + r"->workLength:I\n(?:\s*\.line \d+\n)?\s*"
    r"mul-int/lit16 \1, \1, 0x3e8\n(?:\s*\.line \d+\n)?\s*"
    r"int-to-long (v\d+), \1\n")


def method(text: str, sig: str) -> tuple[int, int]:
    a = text.find(sig)
    if a < 0:
        sys.exit(f"apply-mode-stages: {sig} not found")
    return a, text.find(".end method", a)


def main() -> None:
    if not (UTILS / "ProgramLive.smali").is_file():
        if not PL_SRC.is_file():
            sys.exit("apply-mode-stages: branding/smali/ProgramLive.smali missing — run compile-music-sync-java.sh")
        UTILS.mkdir(parents=True, exist_ok=True)
        shutil.copy2(PL_SRC, UTILS / "ProgramLive.smali")

    text = ITEM.read_text(encoding="utf-8")
    if MARK in text:
        print("apply-mode-stages: already applied")
        return
    a, b = method(text, ".method public setUserType(I)V")
    body = text[a:b]
    if "PartStrength;->modeCarry" not in body or ".method public xemsRestartPulse()Z" not in text:
        sys.exit("apply-mode-stages: run apply-double-impulse.py first")
    if body.count(STOP) != 1 or "->onTrainItemChange()V" not in body:
        sys.exit("apply-mode-stages: setUserType is not the expected one")
    if not re.search(r"\.locals [2-9]\b", body):
        sys.exit("apply-mode-stages: setUserType needs two locals")
    body = body.replace(STOP, STAGE + STOP, 1)
    text = text[:a] + body + text[b:]
    print("TrainItem.setUserType: a mode change in a training is a new stage of it")

    a, b = method(text, ".method public start()V")
    body = text[a:b]
    m = START_RE.search(body)
    if not m or len(START_RE.findall(body)) != 1:
        sys.exit("apply-mode-stages: TrainItem.start workLength * 1000 not found")
    body = body[:m.start()] + (f"    invoke-static {{p0}}, {PL}->workMs({TI})J\n\n"
                               f"    move-result-wide {m.group(2)}\n") + body[m.end():]
    text = text[:a] + body + text[b:]
    ITEM.write_text(text, encoding="utf-8")
    print("TrainItem.start: the countdown resumes from the exact milliseconds left")

    tick = TICK.read_text(encoding="utf-8")
    m = TICK_RE.search(tick)
    if not m or len(TICK_RE.findall(tick)) != 1:
        sys.exit("apply-mode-stages: TrainItem$1.onTick seconds cut not found")
    obj = m.group(3)
    tick = tick[:m.start()] + (f"    invoke-static {{{obj}, p1, p2}}, {PL}->tickWork({TI}J)I\n\n"
                               f"    move-result {m.group(2)}\n\n"
                               f"    iput {m.group(2)}, {obj}, {TI}->workLength:I\n") + tick[m.end():]
    TICK.write_text(tick, encoding="utf-8")
    print("TrainItem$1.onTick: the shown second is rounded up, the exact rest kept")


if __name__ == "__main__":
    main()
