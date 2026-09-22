#!/usr/bin/env python3
"""Fix active-pause control routing, main-mode button styling, and mode-exit behavior."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
TRAIN_ITEM = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
)
TRAIN_ITEM_MANAGER = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainItemManager.smali"
)
TRAIN_VIEW_HOLDER_4 = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainViewHolder$4.smali"
)
ROW_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

SET_MAIN_FROM_SLIDER = """
.method public setMainAndPauseStrenthFromSlider(I)V
    .locals 7
    .param p1, "strength"    # I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    move v3, p1

    const/16 v4, 0x64

    if-le v3, v4, :cond_main_cap

    move v3, v4

    :cond_main_cap
    if-gez v3, :cond_main_floor

    const/4 v3, 0x0

    :cond_main_floor
    iget-boolean v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v5, :cond_only_main

    if-nez v3, :cond_has_main

    const/4 v5, 0x0

    goto :cond_pause_clamp

    :cond_has_main
    if-lez v1, :cond_from_zero

    mul-int v5, v3, v2

    move v6, v1

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    div-int v5, v5, v1

    goto :cond_pause_clamp

    :cond_from_zero
    if-nez v2, :cond_keep_pause

    move v5, v3

    goto :cond_pause_clamp

    :cond_keep_pause
    move v5, v2

    :cond_pause_clamp
    if-le v5, v4, :cond_pause_cap

    move v5, v4

    :cond_pause_cap
    if-gez v5, :cond_pause_floor

    const/4 v5, 0x0

    :cond_pause_floor
    iput v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    goto :cond_done

    :cond_only_main
    iput v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :cond_done
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    return-void
.end method
"""

SET_USER_TYPE_OLD = """.method public setUserType(I)V
    .locals 1
    .param p1, "userType"    # I

    .line 145
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iput p1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 146
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V"""

SET_USER_TYPE_NEW = """.method public setUserType(I)V
    .locals 2
    .param p1, "userType"    # I

    .line 145
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iput p1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-eqz p1, :cond_disable_active_pause

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    :cond_disable_active_pause
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V"""

LAMBDA_ADD_ALL_MA_SYNC = """    invoke-static {p2, p1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_ma_done

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    :cond_ma_done
    return-void"""

LAMBDA_ADD_ALL_MA_PLAIN = """    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    return-void"""

LAMBDA_ADD_ALL_REPLACEMENT = """.method static synthetic lambda$addAllPartValue$6(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 2
    .param p0, "anySelected"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "value"    # I
    .param p2, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseHz(I)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addHz(I)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

__MA_STRENGTH_BODY__

    :cond_3
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_coupled

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    return-void

    :cond_coupled
    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addMainAndPauseStrenth(I)V

    return-void
.end method"""

ADD_ALL_PART_VALUE_LAMBDA7 = """    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$UF59B4EXu0W6VouWuS5ErUQhZs4;

    invoke-direct {v2, p1}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$UF59B4EXu0W6VouWuS5ErUQhZs4;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 74
    :cond_0
    return-void"""

ADD_ALL_PART_VALUE_NO_LAMBDA7 = """    return-void"""

MUSIC_SYNC_GUARD = """    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->shouldBlockManualControls()Z

    move-result v0

    if-eqz v0, :cond_allow_slider_end

    return-void

    :cond_allow_slider_end

"""


def lookup_public_id(kind: str, name: str) -> int:
    public_text = (DECOMPILED / "res/values/public.xml").read_text(encoding="utf-8")
    match = re.search(rf'type="{kind}" name="{name}" id="(0x[0-9a-f]+)"', public_text)
    if not match:
        raise RuntimeError(f"{kind}/{name} not found in public.xml")
    return int(match.group(1), 16)


def build_seekbar_listener(pause_ma_id: int, pause_hz_id: int, hz_value_id: int) -> str:
    body = f""".class Lcom/isaigu/gymapp/train/TrainViewHolder$4;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .locals 6
    .param p1, "seekbar"    # Lcom/isaigu/gymapp/widget/CircleSeekBar;
    .param p2, "curValue"    # I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v0

    if-eqz v0, :cond_pause_ma_change

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {pause_ma_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_pause_ma_done

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v1}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$500(Lcom/isaigu/gymapp/train/TrainViewHolder;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d006e

    invoke-virtual {{v1, v2}}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit8 v3, p2, 0x64

    div-int/lit8 v3, v3, 0x4b

    invoke-static {{v3}}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {{v1, v2}}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {{v0, v1}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_pause_ma_done
    return-void

    :cond_pause_ma_change
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v0

    if-eqz v0, :cond_pause_hz_change

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {pause_hz_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_pause_hz_done

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {{v1}}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p2, 0x78

    div-int/lit8 v2, v2, 0x4b

    invoke-virtual {{v1, v2}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Hz"

    invoke-virtual {{v1, v2}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {{v1}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {{v0, v1}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_pause_hz_done
    return-void

    :cond_pause_hz_change
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v0

    if-eqz v0, :cond_strength

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {hz_value_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_hz_done

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {{v1}}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p2, 0x78

    div-int/lit8 v2, v2, 0x4b

    invoke-virtual {{v1, v2}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Hz"

    invoke-virtual {{v1, v2}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {{v1}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {{v0, v1}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_hz_done
    return-void

    :cond_strength
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v1}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$500(Lcom/isaigu/gymapp/train/TrainViewHolder;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d006e

    invoke-virtual {{v1, v2}}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit8 v3, p2, 0x64

    div-int/lit8 v3, v3, 0x4b

    invoke-static {{v3}}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {{v1, v2}}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {{v0, v1}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-nez v0, :cond_main_done

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget-boolean v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_main_done

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v1}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v1

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, {pause_ma_id:#x}

    invoke-virtual {{v1, v2}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_main_done

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-nez v3, :cond_preview_has_main

    move v4, v5

    goto :cond_preview_pause

    :cond_preview_has_main
    if-lez v2, :cond_preview_from_zero

    mul-int v4, v3, v0

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    div-int/2addr v4, v2

    goto :cond_preview_pause

    :cond_preview_from_zero
    if-nez v0, :cond_preview_keep

    move v4, v3

    goto :cond_preview_pause

    :cond_preview_keep
    move v4, v0

    :cond_preview_pause
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$500(Lcom/isaigu/gymapp/train/TrainViewHolder;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d006e

    invoke-virtual {{v0, v2}}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {{v4}}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {{v0, v2}}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {{v1, v0}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_main_done
    return-void
.end method

.method public onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .locals 4
    .param p1, "seekbar"    # Lcom/isaigu/gymapp/widget/CircleSeekBar;
    .param p2, "curValue"    # I

__MUSIC_SYNC_GUARD__
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v0

    if-eqz v0, :cond_pause_ma_end

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x64

    div-int/lit8 v1, v1, 0x4b

    if-gez v1, :cond_pause_ma_min

    const/4 v1, 0x0

    :cond_pause_ma_min
    const/16 v2, 0x64

    if-le v1, v2, :cond_pause_ma_store

    const/16 v1, 0x64

    :cond_pause_ma_store
    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void

    :cond_pause_ma_end
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v0

    if-eqz v0, :cond_pause_hz_end

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x78

    div-int/lit8 v1, v1, 0x4b

    const/4 v2, 0x1

    if-ge v1, v2, :cond_pause_hz_min

    const/4 v1, 0x1

    :cond_pause_hz_min
    const/16 v2, 0x78

    if-le v1, v2, :cond_pause_hz_store

    const/16 v1, 0x78

    :cond_pause_hz_store
    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void

    :cond_pause_hz_end
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v0

    if-eqz v0, :cond_strength

    mul-int/lit8 v0, p2, 0x78

    div-int/lit8 v0, v0, 0x4b

    const/4 v1, 0x1

    if-ge v0, v1, :cond_hz_min

    const/4 v0, 0x1

    :cond_hz_min
    const/16 v1, 0x78

    if-le v0, v1, :cond_hz_store

    const/16 v0, 0x78

    :cond_hz_store
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void

    :cond_strength
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-eqz v0, :cond_ma_index_strength

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_ma_index_strength

    mul-int/lit8 v0, p2, 0x64

    div-int/lit8 v0, v0, 0x4b

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int v2, v0, v1

    const/16 v3, 0x14

    if-le v2, v3, :cond_coupled_rate

    add-int/lit8 v0, v1, 0x14

    :cond_coupled_rate
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v1, v0}}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMainAndPauseStrenthFromSlider(I)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void

    :cond_ma_index_strength
    mul-int/lit8 v0, p2, 0x64

    div-int/lit8 v0, v0, 0x4b

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int v2, v0, v1

    const/16 v3, 0x14

    if-le v2, v3, :cond_ma_rate

    add-int/lit8 v0, v1, 0x14

    :cond_ma_rate
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void
.end method
"""
    return body.replace("__MUSIC_SYNC_GUARD__", MUSIC_SYNC_GUARD)


def patch_train_item() -> None:
    text = TRAIN_ITEM.read_text(encoding="utf-8")
    if "setMainAndPauseStrenthFromSlider(I)V" not in text:
        marker = ".method public addMainAndPauseStrenth(I)V"
        if marker not in text:
            raise RuntimeError("TrainItem.addMainAndPauseStrenth marker not found")
        text = text.replace(marker, SET_MAIN_FROM_SLIDER.strip() + "\n\n" + marker, 1)
        print("TrainItem: added setMainAndPauseStrenthFromSlider()")
    else:
        text = re.sub(
            r"\.method public setMainAndPauseStrenthFromSlider\(I\)V.*?\.end method",
            SET_MAIN_FROM_SLIDER.strip(),
            text,
            count=1,
            flags=re.DOTALL,
        )
        print("TrainItem: updated setMainAndPauseStrenthFromSlider()")

    if "cond_disable_active_pause" in text.split("setUserType(I)V", 1)[-1].split(".method", 1)[0]:
        print("TrainItem.setUserType: active pause disable already patched")
    elif SET_USER_TYPE_OLD in text:
        text = text.replace(SET_USER_TYPE_OLD, SET_USER_TYPE_NEW, 1)
        print("TrainItem.setUserType: disable active pause when leaving default mode")
    else:
        raise RuntimeError("TrainItem.setUserType patch marker not found")

    TRAIN_ITEM.write_text(text, encoding="utf-8")


def _lambda_routing_ok(lambda_body: str) -> bool:
    if "isMainModeSelected" in lambda_body:
        return False
    if ":cond_4" in lambda_body:
        return False
    cond_3_tail = lambda_body.split(":cond_3", 1)[-1]
    if "addMainAndPauseStrenth(I)V" not in cond_3_tail:
        return False
    if ":cond_coupled" not in cond_3_tail:
        return False
    if "activePause:Z" not in cond_3_tail.split(":cond_coupled", 1)[0]:
        return False
    markers = (
        "isPauseMaSelected()Z",
        "isPauseHzSelected()Z",
        "isHzSelected()Z",
        "isMaSelected()Z",
    )
    positions = [lambda_body.find(m) for m in markers]
    return all(pos >= 0 for pos in positions) and positions == sorted(positions)


def patch_train_item_manager() -> None:
    text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    lambda_body = text.split("lambda$addAllPartValue$6", 1)[-1].split(".end method", 1)[0]
    if _lambda_routing_ok(lambda_body):
        print("TrainItemManager: lambda$6 index routing already correct")
        return
    ma_body = (
        LAMBDA_ADD_ALL_MA_SYNC
        if "MusicSyncBridge;->onMaStrengthDelta" in text
        else LAMBDA_ADD_ALL_MA_PLAIN
    )
    replacement = LAMBDA_ADD_ALL_REPLACEMENT.replace("__MA_STRENGTH_BODY__", ma_body.rstrip())
    text = re.sub(
        r"\.method static synthetic lambda\$addAllPartValue\$6\(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;\)V.*?\.end method",
        replacement.strip(),
        text,
        count=1,
        flags=re.DOTALL,
    )
    if "isPauseMaSelected()Z" not in text.split("lambda$addAllPartValue$6", 1)[-1].split(".method", 1)[0]:
        raise RuntimeError("TrainItemManager lambda$addAllPartValue$6 replacement failed")
    TRAIN_ITEM_MANAGER.write_text(text, encoding="utf-8")
    print("TrainItemManager: route pause/hz/ma index for master +/-")


def patch_add_all_part_value() -> None:
    text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    if ADD_ALL_PART_VALUE_LAMBDA7 not in text:
        print("TrainItemManager.addAllPartValue: per-item fallback already routed in lambda$6")
        return
    text = text.replace(ADD_ALL_PART_VALUE_LAMBDA7, ADD_ALL_PART_VALUE_NO_LAMBDA7, 1)
    TRAIN_ITEM_MANAGER.write_text(text, encoding="utf-8")
    print("TrainItemManager.addAllPartValue: drop global lambda$7 fallback")


def patch_seekbar_listener() -> None:
    pause_ma_id = lookup_public_id("id", "pauseMaValue")
    pause_hz_id = lookup_public_id("id", "pauseHzValue")
    hz_value_id = lookup_public_id("id", "hzValue")
    manager_text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    sync_bridge = (
        DECOMPILED
        / "smali_classes2/com/isaigu/gymapp/train/utils/MusicSyncBridge.smali"
    )
    global MUSIC_SYNC_GUARD
    if (
        "MusicSyncBridge;->onMaStrengthDelta" not in manager_text
        and not sync_bridge.exists()
    ):
        MUSIC_SYNC_GUARD = ""
    listener = build_seekbar_listener(pause_ma_id, pause_hz_id, hz_value_id)
    TRAIN_VIEW_HOLDER_4.write_text(listener.strip() + "\n", encoding="utf-8")
    print("TrainViewHolder$4: active-pause-aware circle slider")


def patch_main_mode_button_text_color() -> None:
    changed = False
    tag_pattern = re.compile(
        r'(<com\.isaigu\.gymapp\.widget\.MyButton\b[^>]*android:id="@id/mainModeBtn"[^>]*/>)'
    )
    for layout_dir in ("layout", "layout-night"):
        for name in ROW_LAYOUTS:
            path = DECOMPILED / "res" / layout_dir / name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")

            def _fix_tag(match: re.Match[str]) -> str:
                tag = match.group(1)
                if 'android:textColor="@color/mode_button_text_active"' in tag:
                    return tag
                if 'android:textColor="@color/mode_button_text"' not in tag:
                    return tag
                return tag.replace(
                    'android:textColor="@color/mode_button_text"',
                    'android:textColor="@color/mode_button_text_active"',
                    1,
                )

            new_text, count = tag_pattern.subn(_fix_tag, text, count=1)
            if count and new_text != text:
                path.write_text(new_text, encoding="utf-8")
                changed = True
                print(f"patched {layout_dir}/{name}: mainModeBtn text color")
    if not changed:
        print("mainModeBtn text color already matches mode buttons")


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    patch_train_item()
    patch_train_item_manager()
    patch_add_all_part_value()
    patch_seekbar_listener()
    patch_main_mode_button_text_color()
    print("Active pause control fixes applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
