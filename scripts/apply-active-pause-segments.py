#!/usr/bin/env python3
"""Multiple active-pause profiles rotated across successive pause phases."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
LAYOUT = RES / "layout/edit_parameter_dialog.xml"
PUBLIC_XML = RES / "values/public.xml"
IDS_XML = RES / "values/ids.xml"
R_ID = DECOMPILED / "smali_classes2/com/isaigu/gymapp/R$id.smali"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
VALUES_DEFAULT = DECOMPILED / "res/values/strings.xml"
VALUES_EN = DECOMPILED / "res/values-en/strings.xml"
ENTRY = DIALOG_DIR / "ActivePauseEntry.smali"
STORAGE = DIALOG_DIR / "ActivePauseStorage.smali"
SEGMENT = DIALOG_DIR / "ActivePauseSegment.smali"
SEGMENTS_UI = DIALOG_DIR / "ActivePauseSegmentsHelper.smali"
SEGMENTS_UI_1 = DIALOG_DIR / "ActivePauseSegmentsHelper$1.smali"
SEGMENTS_UI_2 = DIALOG_DIR / "ActivePauseSegmentsHelper$2.smali"
RUNNER = DIALOG_DIR / "ActivePauseSegmentRunner.smali"
HELPER = DIALOG_DIR / "ActivePauseSettingsHelper.smali"

IDS = {
    "activePauseAddBtn": 0x7f09020c,
    "pauseSegment2Panel": 0x7f09020e,
    "pauseStrengthAmount2": 0x7f09020f,
    "pauseHzInput2": 0x7f090210,
    "pauseSegmentRemove2": 0x7f090212,
    "pauseSegment3Panel": 0x7f090213,
    "pauseStrengthAmount3": 0x7f090214,
    "pauseHzInput3": 0x7f090215,
    "pauseSegmentRemove3": 0x7f090217,
}

BG_STRINGS = """
    <string name="active_pause_interval">Интервал %1$d</string>
    <string name="active_pause_add">+ Добави интервал</string>
    <string name="active_pause_remove">Премахни</string>
"""

EN_STRINGS = """
    <string name="active_pause_interval">Interval %1$d</string>
    <string name="active_pause_add">+ Add interval</string>
    <string name="active_pause_remove">Remove</string>
"""

SEGMENT_SMALI = """.class public Lcom/isaigu/gymapp/dialog/ActivePauseSegment;
.super Ljava/lang/Object;
.source "ActivePauseSegment.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public pauseHz:I

.field public pauseStrenthPercent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    return-void
.end method
"""

RUNNER_SMALI = """.class public Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;
.super Ljava/lang/Object;
.source "ActivePauseSegmentRunner.java"


# static fields
.field private static segmentIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->segmentIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->segmentIndex:I

    return-void
.end method

.method public static resolve(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ActivePauseSegment;
    .locals 4

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->getSegments(Lcom/isaigu/gymapp/bean/TrainProgram;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_legacy

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_multi

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_legacy

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    return-object p0

    :cond_multi
    sget v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->segmentIndex:I

    rem-int v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->segmentIndex:I

    return-object p0

    :cond_legacy
    new-instance p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;-><init>()V

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v0, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I

    iget p1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    return-object p0
.end method
"""

SEGMENTS_UI_1_SMALI = f""".class Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$1;
.super Ljava/lang/Object;
.source "ActivePauseSegmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

.field final root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$1;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$1;->root:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->visibleCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_done

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->visibleCount:I

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$1;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$1;->root:Landroid/view/View;

    invoke-static {{v0, v1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$1;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$1;->root:Landroid/view/View;

    invoke-static {{v0, v1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->persist(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    :cond_done
    return-void
.end method
"""

SEGMENTS_UI_2_SMALI = f""".class Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;
.super Ljava/lang/Object;
.source "ActivePauseSegmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

.field final minCount:I

.field final root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;I)V
    .locals 0

    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;->root:Landroid/view/View;

    iput p3, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;->minCount:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->visibleCount:I

    iget v1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;->minCount:I

    if-gt v0, v1, :cond_done

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->visibleCount:I

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;->root:Landroid/view/View;

    invoke-static {{v0, v1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;->root:Landroid/view/View;

    invoke-static {{v0, v1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->persist(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    :cond_done
    return-void
.end method
"""

EXTRA_UI_XML = """
                    <LinearLayout android:orientation="vertical" android:id="@id/pauseSegment2Panel" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="8.0dip">
                        <TextView android:textSize="16.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/active_pause_interval" />
                        <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginBottom="6.0dip">
                            <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:ellipsize="end" android:layout_width="140.0dip" android:layout_height="wrap_content" android:text="@string/active_pause_strength" android:maxEms="18" android:singleLine="true" />
                            <com.isaigu.gymapp.widget.AmountView android:id="@id/pauseStrengthAmount2" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginRight="10.0dip" />
                        </LinearLayout>
                        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content">
                            <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:ellipsize="end" android:layout_width="140.0dip" android:layout_height="wrap_content" android:text="@string/active_pause_hz" android:maxEms="18" android:singleLine="true" />
                            <EditText android:textSize="18.0sp" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/pauseHzInput2" android:layout_width="72.0dip" android:layout_height="wrap_content" android:layout_marginRight="10.0dip" android:maxLength="3" android:inputType="number" android:imeOptions="actionDone" />
                            <Button android:textSize="14.0sp" android:id="@id/pauseSegmentRemove2" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="@string/active_pause_remove" />
                        </LinearLayout>
                    </LinearLayout>
                    <LinearLayout android:orientation="vertical" android:id="@id/pauseSegment3Panel" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="8.0dip">
                        <TextView android:textSize="16.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/active_pause_interval" />
                        <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginBottom="6.0dip">
                            <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:ellipsize="end" android:layout_width="140.0dip" android:layout_height="wrap_content" android:text="@string/active_pause_strength" android:maxEms="18" android:singleLine="true" />
                            <com.isaigu.gymapp.widget.AmountView android:id="@id/pauseStrengthAmount3" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginRight="10.0dip" />
                        </LinearLayout>
                        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content">
                            <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:ellipsize="end" android:layout_width="140.0dip" android:layout_height="wrap_content" android:text="@string/active_pause_hz" android:maxEms="18" android:singleLine="true" />
                            <EditText android:textSize="18.0sp" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/pauseHzInput3" android:layout_width="72.0dip" android:layout_height="wrap_content" android:layout_marginRight="10.0dip" android:maxLength="3" android:inputType="number" android:imeOptions="actionDone" />
                            <Button android:textSize="14.0sp" android:id="@id/pauseSegmentRemove3" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="@string/active_pause_remove" />
                        </LinearLayout>
                    </LinearLayout>
                    <Button android:textSize="16.0sp" android:textColor="@color/text_primary" android:id="@id/activePauseAddBtn" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="8.0dip" android:text="@string/active_pause_add" />
"""

SEND_PULSE_OLD = """    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_4

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x64

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    const/16 v3, 0x96

    if-le v2, v3, :cond_3

    const/16 v2, 0x96

    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    iget v7, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I"""

SEND_PULSE_NEW = """    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->resolve(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    move-result-object v2

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v4, v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    mul-int v3, v3, v4

    div-int/lit8 v2, v3, 0x64

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    const/16 v3, 0x96

    if-le v2, v3, :cond_3

    const/16 v2, 0x96

    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->resolve(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    move-result-object v4

    iget v7, v4, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I"""


def build_segments_ui_smali() -> str:
    return f""".class public Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;
.super Ljava/lang/Object;
.source "ActivePauseSegmentsHelper.java"


# static fields
.field public static visibleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->visibleCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static amountValue(Landroid/view/View;I)I
    .locals 2

    invoke-virtual {{p0, p1}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/isaigu/gymapp/widget/AmountView;

    const/16 p1, 0x64

    if-eqz p0, :cond_def

    invoke-virtual {{p0}}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result p0

    if-lez p0, :cond_def

    return p0

    :cond_def
    return p1
.end method

.method private static hzValue(Landroid/view/View;I)I
    .locals 2

    invoke-virtual {{p0, p1}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const/16 p1, 0x32

    if-eqz p0, :cond_def

    invoke-virtual {{p0}}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_def

    invoke-virtual {{v0}}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {{v0}}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {{v0}}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_parse

    :cond_def
    return p1

    :cond_parse
    invoke-static {{v0}}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ge p0, p1, :cond_ret

    move p0, p1

    :cond_ret
    return p0
.end method

.method public static bind(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V
    .locals 3

    const v0, {IDS["activePauseAddBtn"]:#x}

    invoke-virtual {{p1, v0}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_add

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$1;

    invoke-direct {{v1, p0, p1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    invoke-virtual {{v0, v1}}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_add
    const v0, {IDS["pauseSegmentRemove2"]:#x}

    invoke-virtual {{p1, v0}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_r2

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;

    const/4 v2, 0x2

    invoke-direct {{v1, p0, p1, v2}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;I)V

    invoke-virtual {{v0, v1}}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_r2
    const v0, {IDS["pauseSegmentRemove3"]:#x}

    invoke-virtual {{p1, v0}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_r3

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;

    const/4 v2, 0x3

    invoke-direct {{v1, p0, p1, v2}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;I)V

    invoke-virtual {{v0, v1}}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_r3
    invoke-static {{p0, p1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    return-void
.end method

.method public static buildSegments(Landroid/view/View;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {{
            "(Landroid/view/View;",
            "Lcom/isaigu/gymapp/bean/ProgramDataBean;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ActivePauseSegment;",
            ">;"
        }}
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {{v0}}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    invoke-direct {{v1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;-><init>()V

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v2, v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I

    iget p1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput p1, v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    invoke-virtual {{v0, v1}}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p1, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->visibleCount:I

    const/4 v1, 0x2

    if-lt p1, v1, :cond_done

    new-instance p1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    invoke-direct {{p1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;-><init>()V

    const v2, {IDS["pauseStrengthAmount2"]:#x}

    invoke-static {{p0, v2}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->amountValue(Landroid/view/View;I)I

    move-result v2

    iput v2, p1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    const v2, {IDS["pauseHzInput2"]:#x}

    invoke-static {{p0, v2}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->hzValue(Landroid/view/View;I)I

    move-result v2

    iput v2, p1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I

    invoke-virtual {{v0, p1}}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p1, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->visibleCount:I

    const/4 v2, 0x3

    if-lt p1, v2, :cond_done

    new-instance p1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    invoke-direct {{p1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;-><init>()V

    const v3, {IDS["pauseStrengthAmount3"]:#x}

    invoke-static {{p0, v3}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->amountValue(Landroid/view/View;I)I

    move-result v3

    iput v3, p1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    const v3, {IDS["pauseHzInput3"]:#x}

    invoke-static {{p0, v3}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->hzValue(Landroid/view/View;I)I

    move-result v3

    iput v3, p1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I

    invoke-virtual {{v0, p1}}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_done
    return-object v0
.end method

.method public static persist(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V
    .locals 2

    invoke-static {{p0}}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-nez v0, :cond_ok

    return-void

    :cond_ok
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {{p1, v1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->buildSegments(Landroid/view/View;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {{v0, p1}}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->storeSegments(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/ArrayList;)V

    invoke-static {{v0}}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    return-void
.end method

.method public static refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V
    .locals 6

    invoke-static {{p0}}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-nez v0, :cond_ok

    return-void

    :cond_ok
    invoke-static {{v0}}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->getSegments(Lcom/isaigu/gymapp/bean/TrainProgram;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_count

    invoke-virtual {{v0}}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_count

    goto :goto_set

    :cond_count
    move v2, v1

    :goto_set
    sput v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->visibleCount:I

    const v3, {IDS["pauseSegment2Panel"]:#x}

    invoke-virtual {{p1, v3}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v1, 0x2

    if-lt v2, v1, :cond_h2

    if-eqz v3, :cond_h2

    invoke-virtual {{v3, v5}}, Landroid/view/View;->setVisibility(I)V

    goto :goto_h2

    :cond_h2
    if-eqz v3, :cond_g2

    invoke-virtual {{v3, v4}}, Landroid/view/View;->setVisibility(I)V

    :cond_g2
    :goto_h2
    const v3, {IDS["pauseSegment3Panel"]:#x}

    invoke-virtual {{p1, v3}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v1, 0x3

    if-lt v2, v1, :cond_h3

    if-eqz v3, :cond_h3

    invoke-virtual {{v3, v5}}, Landroid/view/View;->setVisibility(I)V

    goto :goto_h3

    :cond_h3
    if-eqz v3, :cond_g3

    invoke-virtual {{v3, v4}}, Landroid/view/View;->setVisibility(I)V

    :cond_g3
    :goto_h3
    const v2, {IDS["activePauseAddBtn"]:#x}

    invoke-virtual {{p1, v2}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->visibleCount:I

    if-ge v3, v1, :cond_add_hide

    if-eqz v2, :cond_pop

    invoke-virtual {{v2, v5}}, Landroid/view/View;->setVisibility(I)V

    goto :cond_pop

    :cond_add_hide
    if-eqz v2, :cond_pop

    invoke-virtual {{v2, v4}}, Landroid/view/View;->setVisibility(I)V

    :cond_pop
    if-eqz v0, :cond_end

    invoke-virtual {{v0}}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_end

    const/4 v2, 0x1

    invoke-virtual {{v0, v2}}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    invoke-static {{p1, v2, v3}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->fillExtra(Landroid/view/View;Lcom/isaigu/gymapp/dialog/ActivePauseSegment;I)V

    invoke-virtual {{v0}}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_end

    const/4 v2, 0x2

    invoke-virtual {{v0, v2}}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    invoke-static {{p1, v0, v1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->fillExtra(Landroid/view/View;Lcom/isaigu/gymapp/dialog/ActivePauseSegment;I)V

    :cond_end
    return-void
.end method

.method private static fillExtra(Landroid/view/View;Lcom/isaigu/gymapp/dialog/ActivePauseSegment;I)V
    .locals 3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_two

    const v0, {IDS["pauseStrengthAmount3"]:#x}

    const v1, {IDS["pauseHzInput3"]:#x}

    goto :goto_ids

    :cond_two
    const v0, {IDS["pauseStrengthAmount2"]:#x}

    const v1, {IDS["pauseHzInput2"]:#x}

    :goto_ids
    invoke-virtual {{p0, v0}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    if-eqz v0, :cond_hz

    iget v2, p1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    invoke-virtual {{v0, v2}}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    :cond_hz
    invoke-virtual {{p0, v1}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    if-eqz p0, :cond_ret

    iget p1, p1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I

    invoke-static {{p1}}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {{p0, p1}}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_ret
    return-void
.end method
"""


def register_ids() -> None:
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    ids_text = IDS_XML.read_text(encoding="utf-8")
    r_text = R_ID.read_text(encoding="utf-8")
    for name, val in IDS.items():
        if name not in public_text:
            public_text = public_text.replace(
                "</resources>",
                f'    <public type="id" name="{name}" id="{val:#x}" />\n</resources>',
                1,
            )
        if f'name="{name}"' not in ids_text:
            ids_text = ids_text.replace(
                "</resources>",
                f'    <item type="id" name="{name}" />\n</resources>',
                1,
            )
        if name not in r_text:
            r_text = r_text.replace(
                "\n\n# direct methods",
                f"\n.field public static final {name}:I = {val:#x}\n\n\n# direct methods",
                1,
            )
    PUBLIC_XML.write_text(public_text, encoding="utf-8")
    IDS_XML.write_text(ids_text, encoding="utf-8")
    R_ID.write_text(r_text, encoding="utf-8")


def merge_strings(path: Path, block: str, keys: list[str]) -> None:
    text = path.read_text(encoding="utf-8")
    for line in block.strip().splitlines():
        line = line.strip()
        if not line.startswith("<string"):
            continue
        key_match = re.search(r'name="([^"]+)"', line)
        if not key_match:
            continue
        key = key_match.group(1)
        if key not in keys:
            continue
        if f'name="{key}"' in text:
            continue
        text = text.replace("</resources>", f"    {line}\n</resources>", 1)
    path.write_text(text, encoding="utf-8")


def patch_entry(text: str) -> str:
    if "segments:Ljava/util/ArrayList;" in text:
        return text
    return text.replace(
        ".field public pauseStrenthPercent:I\n",
        ".field public pauseStrenthPercent:I\n\n.field public segments:Ljava/util/ArrayList;\n"
        "    .annotation system Ldalvik/annotation/Signature;\n"
        '        value = {\n'
        '            "Ljava/util/ArrayList<",\n'
        '            "Lcom/isaigu/gymapp/dialog/ActivePauseSegment;",\n'
        '            ">;"\n'
        "        }\n"
        "    .end annotation\n.end field\n",
        1,
    )


def patch_storage(text: str) -> str:
    if "storeSegments" in text:
        return text
    extra = """

.method public static getSegments(Lcom/isaigu/gymapp/bean/TrainProgram;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/isaigu/gymapp/bean/TrainProgram;)",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ActivePauseSegment;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_ok

    const/4 p0, 0x0

    return-object p0

    :cond_ok
    invoke-static {}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->loadEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    move-result-object p0

    if-nez p0, :cond_entry

    const/4 p0, 0x0

    return-object p0

    :cond_entry
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->segments:Ljava/util/ArrayList;

    if-eqz v0, :cond_migrate

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_migrate

    return-object v0

    :cond_migrate
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseHz:I

    iput v2, v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I

    iget p0, p0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseStrenthPercent:I

    iput p0, v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static storeSegments(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/isaigu/gymapp/bean/TrainProgram;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ActivePauseSegment;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_end

    if-nez p1, :cond_has

    goto :cond_end

    :cond_has
    invoke-static {}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->loadEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    move-result-object v1

    if-nez v1, :cond_put

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_put
    iput-object p1, v1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->segments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    iget v0, v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I

    iput v0, v1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseHz:I

    iget v0, v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    iput v0, v1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseStrenthPercent:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->saveEntries(Ljava/util/List;)V

    :cond_end
    return-void
.end method
"""
    # Fix storeSegments - saveEntries needs the list v0 not int v0
    extra = extra.replace(
        "invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->saveEntries(Ljava/util/List;)V",
        "invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->saveEntries(Ljava/util/List;)V",
    )
    # Bug: after iput v0 overwrites list reference. Rewrite storeSegments properly:

    store_segments = """
.method public static storeSegments(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/isaigu/gymapp/bean/TrainProgram;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ActivePauseSegment;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_end

    if-nez p1, :cond_has

    goto :cond_end

    :cond_has
    invoke-static {}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->loadEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    move-result-object v1

    if-nez v1, :cond_put

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_put
    iput-object p1, v1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->segments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    iget v3, v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I

    iput v3, v1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseHz:I

    iget v2, v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    iput v2, v1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseStrenthPercent:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->saveEntries(Ljava/util/List;)V

    :cond_end
    return-void
.end method
"""
    get_segments = """
.method public static getSegments(Lcom/isaigu/gymapp/bean/TrainProgram;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/isaigu/gymapp/bean/TrainProgram;)",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ActivePauseSegment;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_ok

    const/4 p0, 0x0

    return-object p0

    :cond_ok
    invoke-static {}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->loadEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    move-result-object p0

    if-nez p0, :cond_entry

    const/4 p0, 0x0

    return-object p0

    :cond_entry
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->segments:Ljava/util/ArrayList;

    if-eqz v0, :cond_migrate

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_migrate

    return-object v0

    :cond_migrate
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseHz:I

    iput v2, v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I

    iget p0, p0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseStrenthPercent:I

    iput p0, v1, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
"""
    return text.replace(
        ".method public static save(Lcom/isaigu/gymapp/bean/TrainProgram;)V",
        get_segments + store_segments + "\n.method public static save(Lcom/isaigu/gymapp/bean/TrainProgram;)V",
        1,
    )


def patch_storage_save(text: str) -> str:
    if "syncSegment0" in text:
        return text
    old = """    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v0, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseStrenthPercent:I

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->saveEntries(Ljava/util/List;)V"""
    new = """    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v0, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseStrenthPercent:I

    iget-object v0, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->segments:Ljava/util/ArrayList;

    if-eqz v0, :cond_sync0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_sync0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    iget v3, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseHz:I

    iput v3, v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I

    iget v3, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseStrenthPercent:I

    iput v3, v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    :cond_sync0
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->saveEntries(Ljava/util/List;)V"""
    if old not in text:
        raise RuntimeError("ActivePauseStorage.save sync marker not found")
    return text.replace(old, new, 1)


def patch_layout(xml: str) -> str:
    if "activePauseAddBtn" in xml:
        return xml
    marker = "                </LinearLayout>\n            </LinearLayout>\n            <View android:background=\"@color/gray_color\""
    if marker not in xml:
        raise RuntimeError("active pause panel end marker not found")
    return xml.replace(
        "                </LinearLayout>\n            </LinearLayout>\n            <View android:background=\"@color/gray_color\"",
        EXTRA_UI_XML + "\n                </LinearLayout>\n            </LinearLayout>\n            <View android:background=\"@color/gray_color\"",
        1,
    )


def patch_helper_bind(text: str) -> str:
    if "ActivePauseSegmentsHelper;->bind" in text:
        return text
    old = """    :cond_done
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    return-void
.end method

.method public static refresh"""
    new = """    :cond_done
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->bind(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    return-void
.end method

.method public static refresh"""
    if old not in text:
        raise RuntimeError("ActivePauseSettingsHelper.bind end marker not found")
    return text.replace(old, new, 1)


def patch_helper_refresh(text: str) -> str:
    if ":cond_seg_refresh" in text:
        return text
    old = """    :cond_hz_done
    return-void
.end method"""
    new = """    :cond_hz_done
    sget-object v1, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->roots:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_seg_refresh

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    :cond_seg_refresh
    return-void
.end method"""
    if old not in text:
        raise RuntimeError("ActivePauseSettingsHelper.refresh end marker not found")
    return text.replace(old, new, 1)


def patch_train_item_send_pulse(text: str) -> str:
    if "ActivePauseSegmentRunner;->resolve" in text:
        return text
    if SEND_PULSE_OLD not in text:
        raise RuntimeError("TrainItem sendPulse active pause marker not found")
    # Fix double resolve - use single resolve in patched version
    fixed_new = """    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->resolve(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    move-result-object v2

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v4, v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    mul-int v3, v3, v4

    div-int/lit8 v2, v3, 0x64

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    const/16 v3, 0x96

    if-le v2, v3, :cond_3

    const/16 v2, 0x96

    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->resolve(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    move-result-object v4

    iget v7, v4, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I"""
    # Still double resolve - rewrite properly once
    fixed_new = """    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->resolve(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    move-result-object v2

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v4, v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    mul-int v3, v3, v4

    div-int/lit8 v3, v3, 0x64

    move v2, v3

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    const/16 v3, 0x96

    if-le v2, v3, :cond_3

    const/16 v2, 0x96

    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->resolve(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    move-result-object v4

    iget v7, v4, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I"""
    # STILL WRONG - resolve advances index so second call gets next segment. Use one resolve only:

    fixed_new = """    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->resolve(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    move-result-object v2

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v4, v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    mul-int v3, v3, v4

    div-int/lit8 v3, v3, 0x64

    move v8, v3

    if-gez v8, :cond_2

    const/4 v8, 0x0

    :cond_2
    const/16 v3, 0x96

    if-le v8, v3, :cond_3

    const/16 v8, 0x96

    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    iget v7, v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I"""
    return text.replace(SEND_PULSE_OLD, fixed_new, 1)


def patch_train_item_init_reset(text: str) -> str:
    if "ActivePauseSegmentRunner;->reset" in text:
        return text
    old = """    :cond_ap_init
    .line 56
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V"""
    new = """    :cond_ap_init
    invoke-static {}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->reset()V

    .line 56
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V"""
    if old not in text:
        return text
    return text.replace(old, new, 1)


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing", file=sys.stderr)
        return 1

    register_ids()
    merge_strings(VALUES_DEFAULT, EN_STRINGS, ["active_pause_interval", "active_pause_add", "active_pause_remove"])
    merge_strings(VALUES_BG, BG_STRINGS, ["active_pause_interval", "active_pause_add", "active_pause_remove"])
    if VALUES_EN.exists():
        merge_strings(VALUES_EN, EN_STRINGS, ["active_pause_interval", "active_pause_add", "active_pause_remove"])

    SEGMENT.write_text(SEGMENT_SMALI.strip() + "\n", encoding="utf-8")
    RUNNER.write_text(RUNNER_SMALI.strip() + "\n", encoding="utf-8")
    SEGMENTS_UI.write_text(build_segments_ui_smali().strip() + "\n", encoding="utf-8")
    SEGMENTS_UI_1.write_text(SEGMENTS_UI_1_SMALI.strip() + "\n", encoding="utf-8")
    SEGMENTS_UI_2.write_text(SEGMENTS_UI_2_SMALI.strip() + "\n", encoding="utf-8")

    entry = patch_entry(ENTRY.read_text(encoding="utf-8"))
    ENTRY.write_text(entry, encoding="utf-8")

    storage = patch_storage(STORAGE.read_text(encoding="utf-8"))
    storage = patch_storage_save(storage)
    STORAGE.write_text(storage, encoding="utf-8")

    layout = patch_layout(LAYOUT.read_text(encoding="utf-8"))
    LAYOUT.write_text(layout, encoding="utf-8")

    helper = HELPER.read_text(encoding="utf-8")
    helper = patch_helper_bind(helper)
    helper = patch_helper_refresh(helper)
    HELPER.write_text(helper, encoding="utf-8")

    train = TRAIN_ITEM.read_text(encoding="utf-8")
    train = patch_train_item_send_pulse(train)
    train = patch_train_item_init_reset(train)
    TRAIN_ITEM.write_text(train, encoding="utf-8")

    print("Applied active pause segments (up to 3 intervals, rotated each pause phase)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
