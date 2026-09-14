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
YELLOW_DRAWABLE_NAME = "light_yellow_button_drawable_r30"
PAUSE_MA_ID_NAME = "pauseMaValue"
PAUSE_HZ_ID_NAME = "pauseHzValue"
PAUSE_MA_ID = 0x7f090218
PAUSE_HZ_ID = 0x7f090219
PUBLIC_ID_INSERT_AFTER = '<public type="id" name="pauseSegmentRemove3" id="0x7f090217" />'

PAUSE_MA_VALUE_VIEW = (
    '<TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" '
    'android:textStyle="bold" android:gravity="center" android:id="@id/pauseMaValue" '
    'android:background="@drawable/light_black_button_drawable_r30" android:layout_width="50.0dip" '
    'android:layout_height="50.0dip" android:layout_alignParentRight="true" '
    'android:layout_marginTop="-2.0dip" android:layout_marginRight="-6.0dip" android:text="0%" />'
)

PAUSE_HZ_VALUE_VIEW = (
    '<TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" '
    'android:textStyle="bold" android:gravity="center" android:id="@id/pauseHzValue" '
    'android:background="@drawable/light_black_button_drawable_r30" android:layout_width="50.0dip" '
    'android:layout_height="50.0dip" android:layout_alignParentRight="true" '
    'android:layout_alignParentBottom="true" android:layout_marginBottom="-2.0dip" '
    'android:layout_marginRight="-6.0dip" android:text="7Hz" />'
)

AVATAR_INDEX_OUTWARD_REPLACEMENTS = (
    (
        'android:id="@id/ma" android:background="@drawable/light_black_button_drawable_r30" '
        'android:layout_width="50.0dip" android:layout_height="50.0dip" android:layout_marginTop="10.0dip"',
        'android:id="@id/ma" android:background="@drawable/light_black_button_drawable_r30" '
        'android:layout_width="50.0dip" android:layout_height="50.0dip" '
        'android:layout_alignParentLeft="true" android:layout_marginTop="-2.0dip" android:layout_marginLeft="-6.0dip"',
    ),
    (
        'android:id="@id/hzValue" android:background="@drawable/light_black_button_drawable_r30" '
        'android:layout_width="50.0dip" android:layout_height="50.0dip" '
        'android:layout_alignParentBottom="true" android:layout_marginBottom="10.0dip"',
        'android:id="@id/hzValue" android:background="@drawable/light_black_button_drawable_r30" '
        'android:layout_width="50.0dip" android:layout_height="50.0dip" '
        'android:layout_alignParentBottom="true" android:layout_alignParentLeft="true" '
        'android:layout_marginBottom="-2.0dip" android:layout_marginLeft="-6.0dip"',
    ),
    (
        'android:id="@id/pauseMaValue" android:background="@drawable/light_black_button_drawable_r30" '
        'android:layout_width="50.0dip" android:layout_height="50.0dip" android:layout_alignParentRight="true" '
        'android:layout_marginTop="10.0dip"',
        'android:id="@id/pauseMaValue" android:background="@drawable/light_black_button_drawable_r30" '
        'android:layout_width="50.0dip" android:layout_height="50.0dip" android:layout_alignParentRight="true" '
        'android:layout_marginTop="-2.0dip" android:layout_marginRight="-6.0dip"',
    ),
    (
        'android:id="@id/pauseHzValue" android:background="@drawable/light_black_button_drawable_r30" '
        'android:layout_width="50.0dip" android:layout_height="50.0dip" android:layout_alignParentRight="true" '
        'android:layout_alignParentBottom="true" android:layout_marginBottom="10.0dip"',
        'android:id="@id/pauseHzValue" android:background="@drawable/light_black_button_drawable_r30" '
        'android:layout_width="50.0dip" android:layout_height="50.0dip" android:layout_alignParentRight="true" '
        'android:layout_alignParentBottom="true" android:layout_marginBottom="-2.0dip" '
        'android:layout_marginRight="-6.0dip"',
    ),
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

ADD_PAUSE_STRENTH_METHOD = """
.method public addPauseStrenth(I)V
    .locals 2
    .param p1, "value"    # I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    add-int/2addr v1, p1

    const/16 p1, 0x64

    if-le v1, p1, :cond_0

    const/16 v1, 0x64

    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    return-void
.end method
"""

PAUSE_HZ_SELECTED_INIT = """    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseHzSelected:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseMaSelected:Z
"""

PAUSE_HZ_SELECTED_METHODS = """
.method public isPauseMaSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseMaSelected:Z

    return v0
.end method

.method public setPauseMaSelected(Z)V
    .locals 0
    .param p1, "pauseMaSelected"    # Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseMaSelected:Z

    return-void
.end method

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


def bind_pause_ma_value_click_smali(pause_ma_id: int) -> str:
    return f"""
.method private bindPauseMaValueClick()V
    .locals 3

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {pause_ma_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_end

    new-instance v1, Lcom/isaigu/gymapp/train/TrainPauseMaValueClickListener;

    invoke-direct {{v1, p0}}, Lcom/isaigu/gymapp/train/TrainPauseMaValueClickListener;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {{v0, v1}}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_end
    return-void
.end method
""".strip()


def update_pause_ma_display_smali(pause_ma_id: int) -> str:
    return f"""
.method private updatePauseMaDisplay()V
    .locals 6

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {pause_ma_id:#x}

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

    invoke-virtual {{v2, v3}}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    return-void

    :cond_visible
    const/4 v2, 0x0

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    const v4, 0x7f0d006e

    invoke-virtual {{v3, v4}}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-static {{v5}}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x0

    aput-object v5, v4, v2

    invoke-static {{v3, v4}}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v3, :cond_enabled

    const/4 v2, 0x0

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v3, 0x0

    invoke-virtual {{v2, v3}}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    const v2, {BLACK_BG:#x}

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_enabled
    const/4 v2, 0x1

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v2}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v2

    if-nez v2, :cond_green

    const v2, {BLACK_BG:#x}

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_green
    const v2, {GREEN_BG:#x}

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
""".strip()


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


def update_pause_hz_display_smali(pause_hz_id: int, yellow_bg: int) -> str:
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

    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v3}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v3

    if-nez v3, :cond_green

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v2, :cond_yellow

    const v2, {BLACK_BG:#x}

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_yellow
    const v2, {yellow_bg:#x}

    invoke-virtual {{v0, v2}}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_green
    const v2, {GREEN_BG:#x}

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

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    :cond_clear
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainPauseHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void
.end method
"""

PAUSE_MA_CLICK_LISTENER = """.class public Lcom/isaigu/gymapp/train/TrainPauseMaValueClickListener;
.super Ljava/lang/Object;
.source "TrainPauseMaValueClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final holder:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainPauseMaValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainPauseMaValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_end

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    if-eqz v1, :cond_clear

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    :cond_clear
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainPauseMaValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainPauseMaValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainPauseMaValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    :cond_end
    return-void
.end method
"""

ON_CHANGED_PAUSE_MA_PREFIX = """    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v0

    if-eqz v0, :cond_pause_ma_change

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {pause_ma_id:#x}

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_pause_ma_done

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

    :cond_pause_ma_done
    return-void

    :cond_pause_ma_change
"""

ON_CHANGED_END_PAUSE_MA_PREFIX = """    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v0

    if-eqz v0, :cond_pause_ma_end

    mul-int/lit8 v0, p2, 0x64

    div-int/lit8 v0, v0, 0x4b

    if-gez v0, :cond_pause_ma_min

    const/4 v0, 0x0

    :cond_pause_ma_min
    const/16 v1, 0x64

    if-le v0, v1, :cond_pause_ma_store

    const/16 v0, 0x64

    :cond_pause_ma_store
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void

    :cond_pause_ma_end
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

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void

    :cond_pause_hz_end
"""

UPDATE_UI_SEEKBAR_HZ_ONLY = """    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

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

    :goto_0
    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V"""

UPDATE_UI_SEEKBAR_HZ_CONTROLS = """    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v2

    if-eqz v2, :cond_seek_strength

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x78

    goto :goto_seek_set

    :cond_seek_strength
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x64

    :goto_seek_set
    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V"""

UPDATE_UI_SEEKBAR_PAUSE = """    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v2

    if-eqz v2, :cond_pause_ma_seek

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x64

    goto :goto_seek_set

    :cond_pause_ma_seek
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v2

    if-eqz v2, :cond_pause_hz_seek

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x78

    goto :goto_seek_set

    :cond_pause_hz_seek
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v2

    if-eqz v2, :cond_seek_strength

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x78

    goto :goto_seek_set

    :cond_seek_strength
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x64

    :goto_seek_set
    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V"""

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

LAMBDA_ADD_ALL_PAUSE_HZ = """.method static synthetic lambda$addAllPartValue$6(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;)V
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

    :cond_pause"""

LAMBDA_ADD_ALL_NEW = """.method static synthetic lambda$addAllPartValue$6(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p0, "anySelected"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "value"    # I
    .param p2, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v0

    if-eqz v0, :cond_pause_ma

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    return-void

    :cond_pause_ma
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v0

    if-eqz v0, :cond_pause_hz

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseHz(I)V

    return-void

    :cond_pause_hz
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

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

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

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    :cond_0"""


def next_id_value() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_ID):
        if path.exists():
            ids.extend(int(value, 16) for value in re.findall(r"0x7f09[0-9a-f]+", path.read_text(encoding="utf-8")))
    if not ids:
        raise RuntimeError("could not determine next view id")
    return max(ids) + 1


def register_id(name: str, resource_id: int) -> int:
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    match = re.search(rf'type="id" name="{name}" id="(0x[0-9a-f]+)"', public_text)
    if match:
        existing = int(match.group(1), 16)
        if existing != resource_id:
            raise RuntimeError(f"{name} already registered as {match.group(1)}, expected 0x{resource_id:08x}")
        return existing

    resource_hex = f"0x{resource_id:08x}"
    if PUBLIC_ID_INSERT_AFTER in public_text:
        public_text = public_text.replace(
            PUBLIC_ID_INSERT_AFTER,
            f"{PUBLIC_ID_INSERT_AFTER}\n    <public type=\"id\" name=\"{name}\" id=\"{resource_hex}\" />",
            1,
        )
    else:
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


def next_drawable_id() -> int:
    ids: list[int] = []
    r_drawable = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "R$drawable.smali"
    for path in (PUBLIC_XML, r_drawable):
        if path.exists():
            ids.extend(int(value, 16) for value in re.findall(r"0x7f08[0-9a-f]+", path.read_text(encoding="utf-8")))
    return max(ids) + 1 if ids else 0x7f0800dc


def copy_branding_drawable(name: str) -> None:
    for src_dir in (DRAWABLE_NIGHT_SRC, DRAWABLE_SRC):
        src = src_dir / f"{name}.xml"
        if not src.exists():
            continue
        for dest_dir_name in ("drawable", "drawable-night"):
            dest = DECOMPILED / "res" / dest_dir_name / f"{name}.xml"
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_text(src.read_text(encoding="utf-8"), encoding="utf-8")


def ensure_green_drawable() -> None:
    copy_branding_drawable("light_green_button_drawable_r30")
    branding_day = DRAWABLE_SRC / "light_green_button_drawable_r30.xml"
    if not branding_day.exists() and (DRAWABLE_NIGHT_SRC / "light_green_button_drawable_r30.xml").exists():
        branding_day.write_text(
            (DRAWABLE_NIGHT_SRC / "light_green_button_drawable_r30.xml").read_text(encoding="utf-8"),
            encoding="utf-8",
        )


def ensure_yellow_drawable() -> int:
    copy_branding_drawable(YELLOW_DRAWABLE_NAME)
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    match = re.search(rf'name="{YELLOW_DRAWABLE_NAME}" id="(0x[0-9a-f]+)"', public_text)
    if match:
        return int(match.group(1), 16)

    resource_id = next_drawable_id()
    resource_hex = f"0x{resource_id:08x}"
    PUBLIC_XML.write_text(
        public_text.replace(
            "</resources>",
            f'    <public type="drawable" name="{YELLOW_DRAWABLE_NAME}" id="{resource_hex}" />\n</resources>',
            1,
        ),
        encoding="utf-8",
    )

    r_drawable = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "R$drawable.smali"
    r_text = r_drawable.read_text(encoding="utf-8")
    if f".field public static final {YELLOW_DRAWABLE_NAME}:I" not in r_text:
        r_drawable.write_text(
            r_text.replace(
                "\n\n# direct methods",
                f"\n.field public static final {YELLOW_DRAWABLE_NAME}:I = {resource_hex}\n\n\n# direct methods",
                1,
            ),
            encoding="utf-8",
        )
    print(f"registered drawable {YELLOW_DRAWABLE_NAME} -> {resource_hex}")
    return resource_id


def patch_avatar_button_outward() -> None:
    for layout_dir in ("layout", "layout-night"):
        for name in ("new_user_train_control_item_layout.xml", "user_train_control_item_layout.xml"):
            path = DECOMPILED / "res" / layout_dir / name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")
            changed = False
            for old, new in AVATAR_INDEX_OUTWARD_REPLACEMENTS:
                if old in text and new not in text:
                    text = text.replace(old, new, 1)
                    changed = True
            if changed:
                path.write_text(text, encoding="utf-8")
                print(f"patched {layout_dir}/{name}: moved avatar index buttons outward")
            else:
                print(f"{layout_dir}/{name}: avatar index buttons already outward")


def patch_layouts() -> None:
    ma_close = re.compile(r'(<TextView[^>]*android:id="@id/ma"[^>]*/>)')
    hz_close = re.compile(r'(<TextView[^>]*android:id="@id/hzValue"[^>]*/>)')
    wrong_pause_hz = re.compile(
        r'<TextView[^>]*android:id="@id/pauseHzValue"[^>]*android:layout_marginTop="10\.0dip"[^>]*/>'
    )
    for layout_dir in ("layout", "layout-night"):
        for name in ("new_user_train_control_item_layout.xml", "user_train_control_item_layout.xml"):
            path = DECOMPILED / "res" / layout_dir / name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")
            changed = False
            if wrong_pause_hz.search(text):
                text = wrong_pause_hz.sub(PAUSE_HZ_VALUE_VIEW, text, count=1)
                changed = True
                print(f"patched {layout_dir}/{name}: moved pauseHzValue to bottom-right")
            if "@id/pauseMaValue" not in text:
                if not ma_close.search(text):
                    raise RuntimeError(f"ma TextView not found in {layout_dir}/{name}")
                text = ma_close.sub(rf"\1\n            {PAUSE_MA_VALUE_VIEW}", text, count=1)
                changed = True
                print(f"patched {layout_dir}/{name}: added pauseMaValue (top-right)")
            if "@id/pauseHzValue" not in text:
                if hz_close.search(text):
                    text = hz_close.sub(rf"\1\n            {PAUSE_HZ_VALUE_VIEW}", text, count=1)
                elif ma_close.search(text):
                    text = ma_close.sub(rf"\1\n            {PAUSE_HZ_VALUE_VIEW}", text, count=1)
                else:
                    raise RuntimeError(f"hzValue TextView not found in {layout_dir}/{name}")
                changed = True
                print(f"patched {layout_dir}/{name}: added pauseHzValue (bottom-right)")
            if changed:
                path.write_text(text, encoding="utf-8")
            else:
                print(f"{layout_dir}/{name}: pause avatar buttons already positioned")


def patch_train_item() -> None:
    text = TRAIN_ITEM.read_text(encoding="utf-8")
    if "addPauseHz(I)V" not in text:
        marker = ".method public addHz(I)V"
        if marker not in text:
            raise RuntimeError("TrainItem.addHz marker not found")
        text = text.replace(marker, ADD_PAUSE_HZ_METHOD.strip() + "\n\n" + marker, 1)
        print("TrainItem: added addPauseHz()")

    if "addPauseStrenth(I)V" not in text:
        marker = ".method public addPauseHz(I)V"
        if marker not in text:
            marker = ".method public addHz(I)V"
        text = text.replace(marker, ADD_PAUSE_STRENTH_METHOD.strip() + "\n\n" + marker, 1)
        print("TrainItem: added addPauseStrenth()")
    else:
        text = re.sub(
            r"\.method public addPauseStrenth\(I\)V.*?\.end method",
            ADD_PAUSE_STRENTH_METHOD.strip(),
            text,
            count=1,
            flags=re.DOTALL,
        )
        print("TrainItem: updated addPauseStrenth() to use matchProgram()")

    if "pauseMaSelected:Z" not in text:
        if "pauseHzSelected:Z" not in text:
            text = text.replace(
                ".field private hzSelected:Z\n",
                ".field private hzSelected:Z\n\n.field private pauseHzSelected:Z\n\n.field private pauseMaSelected:Z\n",
                1,
            )
        else:
            text = text.replace(
                ".field private pauseHzSelected:Z\n",
                ".field private pauseHzSelected:Z\n\n.field private pauseMaSelected:Z\n",
                1,
            )
        text = text.replace(
            "    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z\n",
            PAUSE_HZ_SELECTED_INIT,
            1,
        )
        if "isPauseMaSelected()Z" not in text:
            text = text.replace(
                ".method public isHzSelected()Z",
                PAUSE_HZ_SELECTED_METHODS.strip() + "\n\n.method public isHzSelected()Z",
                1,
            )
        print("TrainItem: added pauseMa/pauseHz selected state")

    TRAIN_ITEM.write_text(text, encoding="utf-8")


def patch_train_view_holder(pause_ma_id: int, pause_hz_id: int, yellow_bg: int) -> None:
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    bind_ma = bind_pause_ma_value_click_smali(pause_ma_id)
    display_ma = update_pause_ma_display_smali(pause_ma_id)
    bind_hz = bind_pause_hz_value_click_smali(pause_hz_id)
    display_hz = update_pause_hz_display_smali(pause_hz_id, yellow_bg)
    pause_methods = bind_ma + "\n\n" + display_ma + "\n\n" + bind_hz + "\n\n" + display_hz

    if "bindPauseMaValueClick()V" not in text:
        if "bindPauseHzValueClick()V" in text:
            text = text.replace(
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindPauseHzValueClick()V\n",
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindPauseMaValueClick()V\n\n"
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindPauseHzValueClick()V\n",
                1,
            )
            text = text.replace(
                ".method private bindPauseHzValueClick()V",
                bind_ma + "\n\n" + display_ma + "\n\n.method private bindPauseHzValueClick()V",
                1,
            )
            if "updatePauseMaDisplay()V" not in text:
                text = text.replace(
                    ".method private updatePauseHzDisplay()V",
                    display_ma + "\n\n.method private updatePauseHzDisplay()V",
                    1,
                )
            print("TrainViewHolder: added pause ma bind + display")
        else:
            text = text.replace(
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindHzValueClick()V\n\n    return-void\n.end method",
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindHzValueClick()V\n\n"
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindPauseMaValueClick()V\n\n"
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindPauseHzValueClick()V\n\n"
                "    return-void\n.end method",
                1,
            )
            text = text.replace(
                ".method private bindHzValueClick()V",
                pause_methods + "\n\n.method private bindHzValueClick()V",
                1,
            )
            print("TrainViewHolder: added pause ma/hz bind + display methods")
    else:
        for pattern, block in (
            (r"\.method private bindPauseMaValueClick\(\)V.*?\.end method", bind_ma),
            (r"\.method private updatePauseMaDisplay\(\)V.*?\.end method", display_ma),
            (r"\.method private bindPauseHzValueClick\(\)V.*?\.end method", bind_hz),
            (r"\.method private updatePauseHzDisplay\(\)V.*?\.end method", display_hz),
        ):
            text = re.sub(pattern, block, text, count=1, flags=re.DOTALL)

    if ":cond_pause_ma_seek" in text:
        print("TrainViewHolder.updateUI: pause ma/hz seekbar routing already patched")
    elif UPDATE_UI_SEEKBAR_HZ_ONLY in text:
        text = text.replace(UPDATE_UI_SEEKBAR_HZ_ONLY, UPDATE_UI_SEEKBAR_PAUSE, 1)
        print("TrainViewHolder.updateUI: pause ma/hz seekbar routing")
    elif UPDATE_UI_SEEKBAR_HZ_CONTROLS in text:
        text = text.replace(UPDATE_UI_SEEKBAR_HZ_CONTROLS, UPDATE_UI_SEEKBAR_PAUSE, 1)
        print("TrainViewHolder.updateUI: pause ma/hz seekbar routing (hz-controls base)")
    else:
        raise RuntimeError("TrainViewHolder updateUI seekbar patch marker not found")

    update_ui_display_old = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateHzDisplay()V

    .line 218"""
    update_ui_display_new = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateHzDisplay()V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updatePauseMaDisplay()V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updatePauseHzDisplay()V

    .line 218"""
    if update_ui_display_new in text:
        print("TrainViewHolder.updateUI: pause display calls already patched")
    elif update_ui_display_old in text:
        text = text.replace(update_ui_display_old, update_ui_display_new, 1)
        print("TrainViewHolder.updateUI: calls updatePauseMa/HZ display")

    if "setPauseMaSelected(Z)V" not in text.split("lambda$bindListener$7", 1)[-1].split(".method")[0]:
        ma_pause_hz_only = """    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V"""
        ma_pause_both = """    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V"""
        if ma_pause_hz_only in text:
            text = text.replace(ma_pause_hz_only, ma_pause_both, 1)
            print("TrainViewHolder: ma click clears pauseMaSelected too")
        elif MA_CLICK_CLEAR_HZ in text:
            text = text.replace(MA_CLICK_CLEAR_HZ, MA_CLICK_CLEAR_BOTH, 1)
            print("TrainViewHolder: ma click clears pause selections")
        else:
            raise RuntimeError("TrainViewHolder ma click patch marker not found")

    TRAIN_VIEW_HOLDER.write_text(text, encoding="utf-8")


def patch_hz_listener() -> None:
    text = HZ_LISTENER.read_text(encoding="utf-8")
    if "setPauseMaSelected" in text:
        print("TrainHzValueClickListener: already clears pause selections")
        return
    if HZ_CLICK_CLEAR_MA not in text:
        raise RuntimeError("TrainHzValueClickListener patch marker not found")
    HZ_LISTENER.write_text(text.replace(HZ_CLICK_CLEAR_MA, HZ_CLICK_CLEAR_BOTH, 1), encoding="utf-8")
    print("TrainHzValueClickListener: clears pauseHzSelected when Hz selected")


def build_seekbar_listener(pause_ma_id: int, pause_hz_id: int, hz_value_id: int) -> str:
    pause_ma_prefix = ON_CHANGED_PAUSE_MA_PREFIX.replace("{pause_ma_id:#x}", f"{pause_ma_id:#x}")
    pause_hz_prefix = ON_CHANGED_PAUSE_PREFIX.replace("{pause_id:#x}", f"{pause_hz_id:#x}")
    end_ma_prefix = ON_CHANGED_END_PAUSE_MA_PREFIX
    end_hz_prefix = ON_CHANGED_END_PAUSE_PREFIX
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

""" + pause_ma_prefix + pause_hz_prefix + """    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

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

""" + end_ma_prefix + end_hz_prefix + """    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

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


def patch_seekbar_listener_simple(pause_ma_id: int, pause_hz_id: int) -> None:
    hz_value_id = 0x7f090206
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    match = re.search(r'type="id" name="hzValue" id="(0x[0-9a-f]+)"', public_text)
    if match:
        hz_value_id = int(match.group(1), 16)
    TRAIN_VIEW_HOLDER_4.write_text(
        build_seekbar_listener(pause_ma_id, pause_hz_id, hz_value_id).strip() + "\n",
        encoding="utf-8",
    )
    print("TrainViewHolder$4: pause ma/hz circle slider")


def patch_train_item_manager() -> None:
    text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    lambda_body = text.split("lambda$addAllPartValue$6", 1)[-1].split(".method", 1)[0]
    if "isPauseMaSelected()Z" in lambda_body and "addPauseStrenth(I)V" in lambda_body:
        print("TrainItemManager: pause ma/hz master controls already patched")
        return
    pause_hz_head = """    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z"""
    pause_ma_head = """    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v0

    if-eqz v0, :cond_pause_ma

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    return-void

    :cond_pause_ma
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z"""
    if pause_hz_head in lambda_body and "isPauseMaSelected()Z" not in lambda_body:
        text = text.replace(pause_hz_head, pause_ma_head, 1)
        TRAIN_ITEM_MANAGER.write_text(text, encoding="utf-8")
        print("TrainItemManager: lambda checks pauseMaSelected first")
        return
    if LAMBDA_ADD_ALL_PAUSE_HZ in text:
        TRAIN_ITEM_MANAGER.write_text(text.replace(LAMBDA_ADD_ALL_PAUSE_HZ, LAMBDA_ADD_ALL_NEW, 1), encoding="utf-8")
        print("TrainItemManager: lambda checks pauseMaSelected first")
        return
    if LAMBDA_ADD_ALL_OLD in text:
        TRAIN_ITEM_MANAGER.write_text(text.replace(LAMBDA_ADD_ALL_OLD, LAMBDA_ADD_ALL_NEW, 1), encoding="utf-8")
        print("TrainItemManager: lambda checks pauseMaSelected first")
        return
    raise RuntimeError("TrainItemManager lambda marker not found")


def write_listener() -> None:
    (TRAIN_DIR / "TrainPauseMaValueClickListener.smali").write_text(
        PAUSE_MA_CLICK_LISTENER.strip() + "\n",
        encoding="utf-8",
    )
    (TRAIN_DIR / "TrainPauseHzValueClickListener.smali").write_text(
        PAUSE_HZ_CLICK_LISTENER.strip() + "\n",
        encoding="utf-8",
    )


def main() -> None:
    pause_ma_id = register_id(PAUSE_MA_ID_NAME, PAUSE_MA_ID)
    pause_hz_id = register_id(PAUSE_HZ_ID_NAME, PAUSE_HZ_ID)
    ensure_green_drawable()
    yellow_bg = ensure_yellow_drawable()
    patch_layouts()
    patch_avatar_button_outward()
    patch_train_item()
    patch_train_view_holder(pause_ma_id, pause_hz_id, yellow_bg)
    patch_hz_listener()
    patch_seekbar_listener_simple(pause_ma_id, pause_hz_id)
    patch_train_item_manager()
    write_listener()
    print("Active pause avatar button patches applied.")


if __name__ == "__main__":
    main()
