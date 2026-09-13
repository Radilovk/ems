#!/usr/bin/env python3
"""Software ramp up/down by scaling amp (strength) like manual +/- during pulse phases."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
UTILS = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"

HELPER = UTILS / "SoftwareRampHelper.smali"
TICK = UTILS / "SoftwareRampHelper$Tick.smali"

HELPER_SMALI = """.class public Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;
.super Ljava/lang/Object;
.source "SoftwareRampHelper.java"


# static fields
.field private static handler:Landroid/os/Handler;

.field private static rampBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

.field private static rampItem:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static rampMode:I

.field private static rampPauseHz:I

.field private static rampPausePercent:I

.field private static ramping:Z

.field private static rampStep:I

.field private static rampTarget:I

.field private static rampTotal:I

.field private static rampWorkLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beginRamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V
    .locals 2
    .param p0, "item"    # Lcom/isaigu/gymapp/train/model/TrainItem;
    .param p1, "bean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p2, "durationMs"    # I
    .param p3, "mode"    # I
    .param p4, "workLength"    # I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->ramping:Z

    sput-object p0, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    sput-object p1, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    sput p3, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampMode:I

    sput p4, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampWorkLength:I

    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampStep:I

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sput v1, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampTarget:I

    const/16 v1, 0x64

    div-int v0, p2, v1

    if-gtz v0, :cond_ok

    const/4 v0, 0x1

    :cond_ok
    sput v0, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampTotal:I

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->onRampTick()V

    return-void
.end method

.method private static finishRamp()V
    .locals 12

    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->ramping:Z

    sget-object v1, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget v2, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    sget-object v4, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-nez v4, :cond_has_bean

    return-void

    :cond_has_bean
    sget v5, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampWorkLength:I

    iget-object v6, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    if-nez v6, :cond_has_sender

    return-void

    :cond_has_sender
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v6, v4, v5}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    return-void

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sget v2, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampPausePercent:I

    mul-int v0, v0, v2

    div-int/lit8 v0, v0, 0x64

    if-gez v0, :cond_4

    const/4 v0, 0x0

    :cond_4
    const/16 v2, 0x96

    if-le v0, v2, :cond_5

    const/16 v0, 0x96

    :cond_5
    iget-object v8, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    sget v10, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampPauseHz:I

    move-object v7, v4

    move v9, v5

    move v11, v0

    invoke-virtual/range {v6 .. v11}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    :cond_3
    return-void
.end method

.method public static interceptSendPulse(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .locals 6
    .param p0, "item"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->ramping:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_data

    return v3

    :cond_data
    iget-boolean v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    iget v4, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    if-nez v4, :cond_4

    return v3

    :cond_4
    iget-boolean v5, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v5, :cond_6

    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    if-gtz v0, :cond_5

    return v3

    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    if-nez v0, :cond_sender

    return v3

    :cond_sender
    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-nez v5, :cond_parts

    return v3

    :cond_parts
    invoke-static {v2, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getWorkParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;IZ)[B

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend(B[B)V

    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    invoke-static {p0, v2, v0, v1, v4}, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->beginRamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V

    return v1

    :cond_6
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    if-gtz v0, :cond_7

    return v3

    :cond_7
    iget-boolean v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v5, :cond_8

    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    sput v3, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampPauseHz:I

    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    sput v3, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampPausePercent:I

    const/4 v3, 0x3

    invoke-static {p0, v2, v0, v3, v4}, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->beginRamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V

    return v1

    :cond_8
    const/4 v3, 0x2

    invoke-static {p0, v2, v0, v3, v4}, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->beginRamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V

    return v1
.end method

.method static onRampTick()V
    .locals 8

    sget v0, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampStep:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampStep:I

    sget-object v1, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-nez v1, :cond_item

    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->ramping:Z

    return-void

    :cond_item
    sget-object v2, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-nez v2, :cond_bean

    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->ramping:Z

    return-void

    :cond_bean

    sget v3, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampMode:I

    sget v4, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampTarget:I

    sget v5, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->rampTotal:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    mul-int v3, v4, v0

    div-int/2addr v3, v5

    goto :goto_0

    :cond_0
    sub-int v3, v5, v0

    mul-int v3, v4, v3

    div-int/2addr v3, v5

    :goto_0
    if-gez v3, :cond_1

    const/4 v3, 0x0

    :cond_1
    const/16 v4, 0x96

    if-le v3, v4, :cond_2

    move v3, v4

    :cond_2
    iget-object v4, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    iget-object v6, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    if-eqz v4, :cond_send

    if-eqz v6, :cond_send

    invoke-static {v2, v4, v3}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend(B[B)V

    :cond_send

    if-lt v0, v5, :cond_3

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->finishRamp()V

    return-void

    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper$Tick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper$Tick;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
"""

TICK_SMALI = """.class Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper$Tick;
.super Ljava/lang/Object;
.source "SoftwareRampHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->onRampTick()V

    return-void
.end method
"""


def patch_train_item_send_pulse(text: str) -> str:
    if "SoftwareRampHelper;->interceptSendPulse" in text:
        return text
    old = """.method private sendPulse()V
    .locals 9

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0"""
    new = """.method private sendPulse()V
    .locals 9

    .line 135
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->interceptSendPulse(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_ramp_done

    return-void

    :cond_ramp_done
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0"""
    if old not in text:
        raise SystemExit("TrainItem.sendPulse ramp hook marker not found")
    return text.replace(old, new, 1)


def patch_active_pause_match_program(text: str) -> str:
    """Read activePause from matchProgram() bean, not programDataBean only."""
    old = """    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I"""
    new = """    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_4

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I"""
    if old not in text:
        if "matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;" in text.split(":cond_1")[1].split(":cond_4")[0]:
            return text
        raise SystemExit("TrainItem activePause matchProgram patch marker not found")
    text = text.replace(old, new, 1)
    old2 = """    iget v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iget v6, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move-object v4, v1

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V"""
    new2 = """    iget v7, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iget v6, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move-object v4, v1

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V"""
    if old2 in text:
        text = text.replace(old2, new2, 1)
    return text


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1

    UTILS.mkdir(parents=True, exist_ok=True)
    HELPER.write_text(HELPER_SMALI.strip() + "\n", encoding="utf-8")
    TICK.write_text(TICK_SMALI.strip() + "\n", encoding="utf-8")

    text = TRAIN_ITEM.read_text(encoding="utf-8")
    text = patch_train_item_send_pulse(text)
    text = patch_active_pause_match_program(text)
    TRAIN_ITEM.write_text(text, encoding="utf-8")

    print("Applied software ramp (amp-style strength scaling during pulse)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
