#!/usr/bin/env python3
"""Active pause avatar button: Hz-style control around the user icon (default mode only)."""

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
PUBLIC_XML = DECOMPILED / "res" / "values" / "public.xml"
IDS_XML = DECOMPILED / "res" / "values" / "ids.xml"
R_ID = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "R$id.smali"
TRAIN_ITEM = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "model"
    / "TrainItem.smali"
)
TRAIN_VIEW_HOLDER = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "TrainViewHolder.smali"
)
TRAIN_VIEW_HOLDER_4 = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "TrainViewHolder$4.smali"
)
TRAIN_ITEM_MANAGER = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "TrainItemManager.smali"
)
HZ_LISTENER = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "train" / "TrainHzValueClickListener.smali"
TRAIN_DIR = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "train"
DRAWABLE_SRC = ROOT / "branding" / "drawable"
DRAWABLE_NIGHT_SRC = ROOT / "branding" / "drawable-night"

GREEN_BG = 0x7f080091
BLACK_BG = 0x7f080090
ID_NAME = "pauseHzValue"

PAUSE_HZ_VALUE_VIEW = (
    '<TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" '
    'android:textStyle="bold" android:gravity="center" android:id="@id/pauseHzValue" '
    'android:background="@drawable/light_black_button_drawable_r30" android:layout_width="50.0dip" '
    'android:layout_height="50.0dip" android:layout_alignParentRight="true" '
    'android:layout_marginTop="10.0dip" android:text="50Hz" />'
)

ADD_PAUSE_HZ_METHOD = """
.method public addPauseHz(I)V
    .locals 2
    .param p1, "value"    # I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    add-int/2addr v1, p1

    const/16 p1, 0x78

    if-le v1, p1, :cond_0

    const/16 v1, 0x78

    :cond_0
    const/4 p1, 0x1

    if-ge v1, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    return-void
.end method
"""

PAUSE_HZ_SELECTED_FIELD = """.field private pauseHzSelected:Z
"""

PAUSE_HZ_SELECTED_INIT = """    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseHzSelected:Z
"""

PAUSE_HZ_SELECTED_METHODS = """
.method public isPauseHzSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseHzSelected:Z

    return v0
.end method

.method public setPauseHzSelected(Z)V
    .locals 0
    .param p1, "pauseHzSelected"    # Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseHzSelected:Z

    return-void
.end method
"""


def bind_pause_hz_value_click_smali(pause_hz_id: int) -> str:
    return f"""
.method private bindPauseHzValueClick()V
    .locals 3

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {pause_hz_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_end

    new-instance v1, Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;

    invoke-direct {{v1, p0}}, Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {{v0, v1}}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_end
    return-void
.end method
""".strip()


def update_pause_hz_display_smali(pause_hz_id: int) -> str:
    return f"""
.method private updatePauseHzDisplay()V
    .locals 5

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {pause_hz_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {{p0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-eqz v2, :cond_visible

    const/16 v2, 0x8

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v3, 0x0

    invoke-virtual {{v2, v3}}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    return-void

    :cond_visible
    const/4 v2, 0x0

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {{v3}}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    invoke-virtual {{v3, v4}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Hz"

    invoke-virtual {{v3, v4}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {{v3}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {{v0, v3}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_off

    const v2, {GREEN_BG:#x}

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_off
    const v2, {BLACK_BG:#x}

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
""".strip()


PAUSE_HZ_CLICK_LISTENER = """.class public Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;
.super Ljava/lang/Object;
.source "TrainPauseHzValueClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final holder:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v1

    if-eqz v1, :cond_enable

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-boolean v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    goto :cond_clear

    :cond_enable
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v2, :cond_already_on

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    :cond_already_on
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    :cond_clear
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void
.end method
"""

ON_CHANGED_PAUSE_PREFIX = """    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v0

    if-eqz v0, :cond_pause_hz_change

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {pause_id:#x}

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_pause_hz_done

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p2, 0x78

    div-int/lit8 v2, v2, 0x4b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_pause_hz_done
    return-void

    :cond_pause_hz_change
"""

ON_CHANGED_END_PAUSE_PREFIX = """    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v0

    if-eqz v0, :cond_pause_hz_end

    mul-int/lit8 v0, p2, 0x78

    div-int/lit8 v0, v0, 0x4b

    const/4 v1, 0x1

    if-ge v0, v1, :cond_pause_hz_min

    const/4 v0, 0x1

    :cond_pause_hz_min
    const/16 v1, 0x78

    if-le v0, v1, :cond_pause_hz_store

    const/16 v0, 0x78

    :cond_pause_hz_store
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void

    :cond_pause_hz_end
"""

UPDATE_UI_SEEKBAR_OLD = """    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x78

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x64

    :goto_0"""

UPDATE_UI_SEEKBAR_NEW = """    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v2

    if-eqz v2, :cond_pause_seek

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x78

    goto :goto_0

    :cond_pause_seek
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x78

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x64

    :goto_0"""

LAMBDA_ADD_ALL_OLD = """.method static synthetic lambda$addAllPartValue$6(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p0, "anySelected"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "value"    # I
    .param p2, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addHz(I)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    :cond_1
    return-void
.end method"""

LAMBDA_ADD_ALL_NEW = """.method static synthetic lambda$addAllPartValue$6(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p0, "anySelected"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "value"    # I
    .param p2, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v0

    if-eqz v0, :cond_pause

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseHz(I)V

    return-void

    :cond_pause
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v0

    if-eqz v0, :cond_hz

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addHz(I)V

    return-void

    :cond_hz
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-eqz v0, :cond_ma

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    :cond_ma
    return-void
.end method"""

MA_CLICK_CLEAR_HZ = """    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V"""

MA_CLICK_CLEAR_BOTH = """    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V"""

HZ_CLICK_CLEAR_MA = """    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    :cond_0"""

HZ_CLICK_CLEAR_BOTH = """    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    :cond_0"""


def next_id_value() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_ID):
        if path.exists():
            ids.extend(int(value, 16) for value in re.findall(r"0x7f09[0-9a-f]+", path.read_text(encoding="utf-8")))
    if not ids:
        raise RuntimeError("could not determine next view id")
    return max(ids) + 1


def register_id(name: str) -> int:
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    match = re.search(rf'type="id" name="{name}" id="(0x[0-9a-f]+)"', public_text)
    if match:
        return int(match.group(1), 16)

    resource_id = next_id_value()
    resource_hex = f"0x{resource_id:08x}"
    public_text = public_text.replace(
        "</resources>",
        f'    <public type="id" name="{name}" id="{resource_hex}" />\n</resources>',
        1,
    )
    PUBLIC_XML.write_text(public_text, encoding="utf-8")

    ids_text = IDS_XML.read_text(encoding="utf-8")
    if f'name="{name}"' not in ids_text:
        IDS_XML.write_text(
            ids_text.replace(
                "</resources>",
                f'    <item type="id" name="{name}" />\n</resources>',
                1,
            ),
            encoding="utf-8",
        )

    r_text = R_ID.read_text(encoding="utf-8")
    if f".field public static final {name}:I" not in r_text:
        R_ID.write_text(
            r_text.replace(
                "\n\n# direct methods",
                f"\n.field public static final {name}:I = {resource_hex}\n\n\n# direct methods",
                1,
            ),
            encoding="utf-8",
        )
    print(f"registered id {name} -> {resource_hex}")
    return resource_id


def ensure_green_drawable() -> None:
    for src_dir in (DRAWABLE_NIGHT_SRC, DRAWABLE_SRC):
        src = src_dir / "light_green_button_drawable_r30.xml"
        if not src.exists():
            continue
        for dest_dir_name in ("drawable", "drawable-night"):
            dest = DECOMPILED / "res" / dest_dir_name / "light_green_button_drawable_r30.xml"
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_text(src.read_text(encoding="utf-8"), encoding="utf-8")
    branding_day = DRAWABLE_SRC / "light_green_button_drawable_r30.xml"
    if not branding_day.exists() and (DRAWABLE_NIGHT_SRC / "light_green_button_drawable_r30.xml").exists():
        branding_day.write_text(
            (DRAWABLE_NIGHT_SRC / "light_green_button_drawable_r30.xml").read_text(encoding="utf-8"),
            encoding="utf-8",
        )


def patch_layouts() -> None:
    ma_close = re.compile(
        r'(<TextView[^>]*android:id="@id/ma"[^>]*/>)',
    )
    for layout_dir in ("layout", "layout-night"):
        for name in ("new_user_train_control_item_layout.xml", "user_train_control_item_layout.xml"):
            path = DECOMPILED / "res" / layout_dir / name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")
            if "@id/pauseHzValue" in text:
                print(f"{layout_dir}/{name}: pauseHzValue already present")
                continue
            if not ma_close.search(text):
                raise RuntimeError(f"ma TextView not found in {layout_dir}/{name}")
            text = ma_close.sub(rf"\1\n            {PAUSE_HZ_VALUE_VIEW}", text, count=1)
            path.write_text(text, encoding="utf-8")
            print(f"patched {layout_dir}/{name}: added pauseHzValue")


def patch_train_item() -> None:
    text = TRAIN_ITEM.read_text(encoding="utf-8")
    if "addPauseHz(I)V" not in text:
        marker = ".method public addHz(I)V"
        if marker not in text:
            raise RuntimeError("TrainItem.addHz marker not found")
        text = text.replace(marker, ADD_PAUSE_HZ_METHOD.strip() + "\n\n" + marker, 1)
        print("TrainItem: added addPauseHz()")

    if "pauseHzSelected:Z" not in text:
        text = text.replace(
            ".field private hzSelected:Z\n",
            ".field private hzSelected:Z\n\n.field private pauseHzSelected:Z\n",
            1,
        )
        text = text.replace(
            "    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z\n",
            PAUSE_HZ_SELECTED_INIT,
            1,
        )
        text = text.replace(
            ".method public isHzSelected()Z",
            PAUSE_HZ_SELECTED_METHODS.strip() + "\n\n.method public isHzSelected()Z",
            1,
        )
        print("TrainItem: added pauseHzSelected state")

    TRAIN_ITEM.write_text(text, encoding="utf-8")


def patch_train_view_holder(pause_hz_id: int) -> None:
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    bind_block = bind_pause_hz_value_click_smali(pause_hz_id)
    display_block = update_pause_hz_display_smali(pause_hz_id)

    if "bindPauseHzValueClick()V" not in text:
        text = text.replace(
            "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindHzValueClick()V\n\n    return-void\n.end method",
            "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindHzValueClick()V\n\n"
            "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindPauseHzValueClick()V\n\n"
            "    return-void\n.end method",
            1,
        )
        text = text.replace(
            ".method private bindHzValueClick()V",
            bind_block + "\n\n" + display_block + "\n\n.method private bindHzValueClick()V",
            1,
        )
        print("TrainViewHolder: added bindPauseHzValueClick + updatePauseHzDisplay")
    else:
        text = re.sub(
            r"\.method private bindPauseHzValueClick\(\)V.*?\.end method",
            bind_block,
            text,
            count=1,
            flags=re.DOTALL,
        )
        text = re.sub(
            r"\.method private updatePauseHzDisplay\(\)V.*?\.end method",
            display_block,
            text,
            count=1,
            flags=re.DOTALL,
        )

    if UPDATE_UI_SEEKBAR_OLD in text:
        text = text.replace(UPDATE_UI_SEEKBAR_OLD, UPDATE_UI_SEEKBAR_NEW, 1)
        print("TrainViewHolder.updateUI: pause-Hz-aware seekbar")

    if "updatePauseHzDisplay()V" not in text.split("updateHzDisplay()V")[1].split(".method")[0]:
        text = text.replace(
            "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateHzDisplay()V\n",
            "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateHzDisplay()V\n\n"
            "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updatePauseHzDisplay()V\n",
            1,
        )
        print("TrainViewHolder.updateUI: calls updatePauseHzDisplay")

    if MA_CLICK_CLEAR_BOTH not in text:
        if MA_CLICK_CLEAR_HZ in text:
            text = text.replace(MA_CLICK_CLEAR_HZ, MA_CLICK_CLEAR_BOTH, 1)
            print("TrainViewHolder: ma click clears pauseHzSelected")
        else:
            raise RuntimeError("TrainViewHolder ma click patch marker not found")

    TRAIN_VIEW_HOLDER.write_text(text, encoding="utf-8")


def patch_hz_listener() -> None:
    text = HZ_LISTENER.read_text(encoding="utf-8")
    if "setPauseHzSelected" in text:
        print("TrainHzValueClickListener: already clears pauseHzSelected")
        return
    if HZ_CLICK_CLEAR_MA not in text:
        raise RuntimeError("TrainHzValueClickListener patch marker not found")
    HZ_LISTENER.write_text(text.replace(HZ_CLICK_CLEAR_MA, HZ_CLICK_CLEAR_BOTH, 1), encoding="utf-8")
    print("TrainHzValueClickListener: clears pauseHzSelected when Hz selected")


def build_seekbar_listener(pause_hz_id: int, hz_value_id: int) -> str:
    pause_prefix = ON_CHANGED_PAUSE_PREFIX.replace("{pause_id:#x}", f"{pause_hz_id:#x}")
    end_prefix = ON_CHANGED_END_PAUSE_PREFIX
    hz_id = f"{hz_value_id:#x}"
    return """.class Lcom/isaigu/gymapp/train/TrainViewHolder$4;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .locals 5
    .param p1, "seekbar"    # Lcom/isaigu/gymapp/widget/CircleSeekBar;
    .param p2, "curValue"    # I

""" + pause_prefix + """    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v0

    if-eqz v0, :cond_strength

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, """ + hz_id + """

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_hz_done

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p2, 0x78

    div-int/lit8 v2, v2, 0x4b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_hz_done
    return-void

    :cond_strength
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$500(Lcom/isaigu/gymapp/train/TrainViewHolder;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit8 v3, p2, 0x64

    div-int/lit8 v3, v3, 0x4b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .locals 4
    .param p1, "seekbar"    # Lcom/isaigu/gymapp/widget/CircleSeekBar;
    .param p2, "curValue"    # I

""" + end_prefix + """    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

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

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void

    :cond_strength
    mul-int/lit8 v0, p2, 0x64

    div-int/lit8 v0, v0, 0x4b

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int v2, v0, v1

    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    add-int/lit8 v0, v1, 0x14

    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    iput v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void
.end method
"""


def patch_seekbar_listener_simple(pause_hz_id: int) -> None:
    hz_value_id = 0x7f090206
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    match = re.search(r'type="id" name="hzValue" id="(0x[0-9a-f]+)"', public_text)
    if match:
        hz_value_id = int(match.group(1), 16)
    TRAIN_VIEW_HOLDER_4.write_text(build_seekbar_listener(pause_hz_id, hz_value_id).strip() + "\n", encoding="utf-8")
    print("TrainViewHolder$4: pause-Hz-aware circle slider")


def patch_train_item_manager() -> None:
    text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    if "isPauseHzSelected()Z" in text.split("lambda$addAllPartValue$6", 1)[-1].split(".method", 1)[0]:
        print("TrainItemManager: pause Hz master controls already patched")
        return
    if LAMBDA_ADD_ALL_OLD in text:
        TRAIN_ITEM_MANAGER.write_text(text.replace(LAMBDA_ADD_ALL_OLD, LAMBDA_ADD_ALL_NEW, 1), encoding="utf-8")
        print("TrainItemManager: lambda checks pauseHzSelected first")
        return
    raise RuntimeError("TrainItemManager lambda marker not found")


def write_listener() -> None:
    (TRAIN_DIR / "TrainPauseHzValueClickListener.smali").write_text(
        PAUSE_HZ_CLICK_LISTENER.strip() + "\n",
        encoding="utf-8",
    )


def patch_hz_controls_avatar_template() -> None:
    """Keep apply-hz-controls avatar template in sync for clean rebuilds."""
    hz_script = ROOT / "scripts" / "apply-hz-controls.py"
    text = hz_script.read_text(encoding="utf-8")
    if "@id/pauseHzValue" in text:
        return
    old = (
        '<TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" '
        'android:textStyle="bold" android:gravity="center" android:id="@id/ma" '
        'android:background="@drawable/light_black_button_drawable_r30" android:layout_width="50.0dip" '
        'android:layout_height="50.0dip" android:layout_marginTop="10.0dip" android:text="35mA" />'
    )
    new = old + "\n            " + PAUSE_HZ_VALUE_VIEW
    if old in text:
        hz_script.write_text(text.replace(old, new, 1), encoding="utf-8")
        print("apply-hz-controls.py: AVATAR_NEW includes pauseHzValue")


def main() -> None:
    pause_hz_id = register_id(ID_NAME)
    ensure_green_drawable()
    patch_layouts()
    patch_train_item()
    patch_train_view_holder(pause_hz_id)
    patch_hz_listener()
    patch_seekbar_listener_simple(pause_hz_id)
    patch_train_item_manager()
    write_listener()
    patch_hz_controls_avatar_template()
    print("Active pause avatar button patches applied.")


if __name__ == "__main__":
    main()
