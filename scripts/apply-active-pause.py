#!/usr/bin/env python3
"""Active pause (impulse change during pause) settings and training logic."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
VALUES_BG = ROOT / "translations" / "values-bg/strings.xml"
VALUES_DEFAULT = DECOMPILED / "res/values/strings.xml"

BEAN = DECOMPILED / "smali_classes2/com/isaigu/gymapp/bean/ProgramDataBean.smali"
DIALOG = DIALOG_DIR / "EditUserProgramDataDialog.smali"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
COMMAND_SENDER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/CommandSender.smali"
COMMAND_UTIL = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils/CommandUtil.smali"
LAYOUT = RES / "layout/edit_parameter_dialog.xml"
PUBLIC_XML = RES / "values/public.xml"

IDS = {
    "activePauseSwitch": 0x7f090207,
    "activePausePanel": 0x7f090208,
    "pauseStrengthAmount": 0x7f090209,
    "pauseHzAmount": 0x7f09020a,
}

ACTIVE_PAUSE_UI = """
            <LinearLayout android:gravity="center_vertical" android:orientation="vertical" android:paddingLeft="5.0dip" android:paddingRight="5.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip">
                <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content">
                    <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" android:text="@string/active_pause_title" />
                    <Switch android:id="@id/activePauseSwitch" android:layout_width="wrap_content" android:layout_height="wrap_content" />
                </LinearLayout>
                <TextView android:textSize="12.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="2.0dip" android:text="@string/active_pause_hint" />
                <LinearLayout android:orientation="vertical" android:id="@id/activePausePanel" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="8.0dip">
                    <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginBottom="8.0dip">
                        <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:ellipsize="end" android:layout_width="140.0dip" android:layout_height="wrap_content" android:text="@string/active_pause_strength" android:maxEms="18" android:singleLine="true" />
                        <com.isaigu.gymapp.widget.AmountView android:id="@id/pauseStrengthAmount" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginRight="10.0dip" />
                    </LinearLayout>
                    <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content">
                        <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:ellipsize="end" android:layout_width="140.0dip" android:layout_height="wrap_content" android:text="@string/active_pause_hz" android:maxEms="18" android:singleLine="true" />
                        <com.isaigu.gymapp.widget.AmountView android:id="@id/pauseHzAmount" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginRight="10.0dip" />
                    </LinearLayout>
                </LinearLayout>
            </LinearLayout>
"""

BG_STRINGS = """
    <string name="active_pause_title">Импулсна промяна (активна пауза)</string>
    <string name="active_pause_hint">По време на паузата се изпраща импулс с отделни параметри</string>
    <string name="active_pause_strength">Сила на пауза (%)</string>
    <string name="active_pause_hz">Честота на пауза</string>
"""

EN_STRINGS = """
    <string name="active_pause_title">Active pause (impulse change)</string>
    <string name="active_pause_hint">During pause, send impulse with separate parameters</string>
    <string name="active_pause_strength">Pause strength (%)</string>
    <string name="active_pause_hz">Pause frequency</string>
"""

HELPER = DIALOG_DIR / "ActivePauseSettingsHelper.smali"
HELPER_1 = DIALOG_DIR / "ActivePauseSettingsHelper$1.smali"
HELPER_2 = DIALOG_DIR / "ActivePauseSettingsHelper$2.smali"
HELPER_3 = DIALOG_DIR / "ActivePauseSettingsHelper$3.smali"

HELPER_SMALI = f""".class public Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;
.super Ljava/lang/Object;
.source "ActivePauseSettingsHelper.java"


# static fields
.field private static final BOUND_TAG:Ljava/lang/String; = "active_pause_bound"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V
    .locals 2

    invoke-virtual {{p1}}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "active_pause_bound"

    invoke-virtual {{v1, v0}}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_wire

    invoke-static {{p0, p1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    return-void

    :cond_wire
    const-string v0, "active_pause_bound"

    invoke-virtual {{p1, v0}}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, {IDS["activePauseSwitch"]:#x}

    invoke-virtual {{p1, v0}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    if-eqz v0, :cond_refresh

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$1;

    invoke-direct {{v1, p0, p1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    invoke-virtual {{v0, v1}}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_refresh
    const v0, {IDS["pauseStrengthAmount"]:#x}

    invoke-virtual {{p1, v0}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    if-eqz v0, :cond_hz

    const/4 v1, 0x0

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    const/16 v1, 0x96

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    const/4 v1, 0x5

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    const-string v1, "%"

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$2;

    invoke-direct {{v1, p0}}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    :cond_hz
    const v0, {IDS["pauseHzAmount"]:#x}

    invoke-virtual {{p1, v0}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    if-eqz v0, :cond_done

    const/4 v1, 0x1

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    const/16 v1, 0x78

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    const/4 v1, 0x1

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    const-string v1, " Hz"

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$3;

    invoke-direct {{v1, p0}}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$3;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    :cond_done
    invoke-static {{p0, p1}}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    return-void
.end method

.method public static refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V
    .locals 4

    invoke-static {{p0}}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const v1, {IDS["activePauseSwitch"]:#x}

    invoke-virtual {{p1, v1}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    if-eqz v1, :cond_switch_done

    iget-boolean v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    invoke-virtual {{v1, v2}}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_switch_done
    const v1, {IDS["activePausePanel"]:#x}

    invoke-virtual {{p1, v1}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_panel_done

    iget-boolean v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_hide

    const/4 v2, 0x0

    invoke-virtual {{v1, v2}}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_panel

    :cond_hide
    const/16 v2, 0x8

    invoke-virtual {{v1, v2}}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_panel
    :cond_panel_done
    const v1, {IDS["pauseStrengthAmount"]:#x}

    invoke-virtual {{p1, v1}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/AmountView;

    if-eqz v1, :cond_strength_done

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-gtz v2, :cond_strength_set

    const/16 v2, 0x64

    iput v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    :cond_strength_set
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-virtual {{v1, v2}}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    :cond_strength_done
    const v1, {IDS["pauseHzAmount"]:#x}

    invoke-virtual {{p1, v1}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/AmountView;

    if-eqz v1, :cond_hz_done

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_hz_use_main

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-ge v2, v3, :cond_hz_default

    const/16 v2, 0x32

    :cond_hz_default
    iput v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :cond_hz_use_main
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    invoke-virtual {{v1, v2}}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    :cond_hz_done
    return-void
.end method
"""

HELPER_1_SMALI = f""".class Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$1;
.super Ljava/lang/Object;
.source "ActivePauseSettingsHelper.java"

.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$1;->val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$1;->val$root:Landroid/view/View;

    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$1;->val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {{p1}}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-boolean p2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$1;->val$root:Landroid/view/View;

    const v0, {IDS["activePausePanel"]:#x}

    invoke-virtual {{p1, v0}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_hide

    const/4 p2, 0x0

    invoke-virtual {{p1, p2}}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_hide
    const/16 p2, 0x8

    invoke-virtual {{p1, p2}}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
"""

HELPER_2_SMALI = """.class Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$2;
.super Ljava/lang/Object;
.source "ActivePauseSettingsHelper.java"

.implements Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;


# instance fields
.field final synthetic val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$2;->val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmountChange(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$2;->val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput p2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    return-void
.end method
"""

HELPER_3_SMALI = """.class Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$3;
.super Ljava/lang/Object;
.source "ActivePauseSettingsHelper.java"

.implements Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;


# instance fields
.field final synthetic val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$3;->val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmountChange(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$3;->val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput p2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    return-void
.end method
"""

# Fix typo in helper 3 - should set pauseHz not pauseStrenthPercent - will fix below

SEND_ACTIVE_PAUSE = """
.method public sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V
    .locals 3
    .param p1, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p2, "partsDisabled"    # [Z
    .param p3, "workLength"    # I
    .param p4, "pauseHz"    # I
    .param p5, "scaledStrength"    # I

    invoke-static {p1, p2, p5}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend(B[B)V

    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getWorkParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;IZ)[B

    move-result-object v0

    const/4 v1, 0x3

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend(B[B)V

    return-void
.end method
"""


def patch_program_data_bean(text: str) -> str:
    if "activePause:Z" in text:
        return text
    text = text.replace(
        ".field public workLength:I\n",
        ".field public workLength:I\n\n"
        ".field public activePause:Z\n\n"
        ".field public pauseHz:I\n\n"
        ".field public pauseStrenthPercent:I\n",
        1,
    )
    text = text.replace(
        "    iput-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;\n\n"
        "    .line 29\n"
        "    return-void\n",
        "    iput-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;\n\n"
        "    const/16 v0, 0x32\n\n"
        "    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I\n\n"
        "    const/16 v0, 0x64\n\n"
        "    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I\n\n"
        "    .line 29\n"
        "    return-void\n",
        1,
    )
    return text


def patch_command_util(text: str) -> str:
    if "getPartsParamsPduWithStrength" in text:
        return text
    match = re.search(
        r"\.method public static getPartsParamsPdu\(Lcom/isaigu/gymapp/bean/ProgramDataBean;\[Z\)\[B.*?\.end method",
        text,
        flags=re.DOTALL,
    )
    if not match:
        raise RuntimeError("CommandUtil.getPartsParamsPdu not found")
    original = match.group(0)
    with_strength = (
        original.replace(
            "getPartsParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[B",
            "getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B",
            1,
        )
        .replace(
            '.param p1, "partsDisabled"    # [Z\n\n    .line 17',
            '.param p1, "partsDisabled"    # [Z\n    .param p2, "strenth"    # I\n\n    .line 17',
            1,
        )
        .replace(
            "    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I",
            "    move v1, p2",
            1,
        )
    )
    delegate = """
.method public static getPartsParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[B
    .locals 2
    .param p0, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p1, "partsDisabled"    # [Z

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B

    move-result-object v0

    return-object v0
.end method
"""
    return text.replace(original, delegate + "\n" + with_strength, 1)


def patch_command_sender(text: str) -> str:
    if "sendActivePause" in text:
        return text
    return text.replace(
        ".method public sendStop()V",
        SEND_ACTIVE_PAUSE + "\n.method public sendStop()V",
        1,
    )


def patch_train_item_send_pulse(text: str) -> str:
    if "sendActivePause" in text.split("sendPulse()V")[1].split(".method")[0]:
        return text
    old = """    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V"""
    new = """    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_pause_normal

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x64

    if-gez v2, :cond_strength_floor

    const/4 v2, 0x0

    :cond_strength_floor
    const/16 v3, 0x96

    if-le v2, v3, :cond_strength_cap

    const/16 v2, 0x96

    :cond_strength_cap
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iget v4, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move-object p1, v0

    move-object p2, v5

    move p3, v4

    move p4, v1

    move p5, v2

    invoke-virtual/range {v3 .. v8}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    goto :goto_0

    :cond_pause_normal
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend"""
    # The invoke-virtual/range approach is wrong for non-range. Let me use simpler smali.
    new = """    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_pause_normal

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x64

    if-gez v2, :cond_strength_floor

    const/4 v2, 0x0

    :cond_strength_floor
    const/16 v3, 0x96

    if-le v2, v3, :cond_strength_cap

    const/16 v2, 0x96

    :cond_strength_cap
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    iget v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iget v6, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move-object v4, v1

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    goto :goto_0

    :cond_pause_normal
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V"""
    if old not in text:
        raise RuntimeError("TrainItem.sendPulse pause branch marker not found")
    # sendPulse uses .locals 4 - active pause branch needs more locals
    text = text.replace(".method private sendPulse()V\n    .locals 4", ".method private sendPulse()V\n    .locals 9", 1)
    if ".locals 9" not in text.split("sendPulse()V")[1][:20]:
        text = text.replace(".method private sendPulse()V\n    .locals 6", ".method private sendPulse()V\n    .locals 9", 1)
    return text.replace(old, new, 1)


def patch_edit_dialog_init_set_data(text: str) -> str:
    if "ActivePauseSettingsHelper;->refresh" in text:
        return text
    marker = "    .line 1184\n    return-void\n.end method\n\n.method private initView"
    hook = """    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_active_pause_refresh_done

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    :cond_active_pause_refresh_done
    .line 1184
    return-void\n.end method\n\n.method private initView"""
    if marker not in text:
        # fallback without line number
        marker = "    return-void\n.end method\n\n.method private initView(Landroid/view/View;)V"
        hook = """    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_active_pause_refresh_done

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    :cond_active_pause_refresh_done
    return-void\n.end method\n\n.method private initView(Landroid/view/View;)V"""
    return text.replace(marker, hook, 1)


def patch_edit_dialog_store_root(text: str) -> str:
    if "access$2800" in text:
        return text
    # Add field rootView and accessor
    text = text.replace(
        ".field private saveProgramListener:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;\n",
        ".field private saveProgramListener:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;\n\n"
        ".field private rootView:Landroid/view/View;\n",
        1,
    )
    accessor = """
.method static synthetic access$2800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->rootView:Landroid/view/View;

    return-object v0
.end method

"""
    text = text.replace(
        ".method static synthetic access$2700",
        accessor + ".method static synthetic access$2700",
        1,
    )
    store = """
    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->rootView:Landroid/view/View;

    .line 95
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initView(Landroid/view/View;)V"""
    text = text.replace(
        "    .line 95\n    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initView(Landroid/view/View;)V",
        store,
        1,
    )
    hook_bind = """
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->bind(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    .line 143
    return-object v0"""
    if "ActivePauseSettingsHelper;->bind" not in text:
        text = text.replace(
            "    .line 143\n    return-object v0\n.end method\n\n.method public onStart()V",
            hook_bind + "\n.end method\n\n.method public onStart()V",
            1,
        )
    return text


def patch_layout(xml: str) -> str:
    if "activePauseSwitch" in xml:
        return xml
    marker = '                <View android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="1.0" />\n            </LinearLayout>\n            <View android:background="@color/gray_color"'
    if marker not in xml:
        raise RuntimeError("edit_parameter_dialog.xml marker not found")
    insert = '                <View android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="1.0" />\n            </LinearLayout>\n' + ACTIVE_PAUSE_UI + '            <View android:background="@color/gray_color"'
    return xml.replace(marker, insert, 1)


def patch_public_xml(text: str) -> str:
    if "activePauseSwitch" in text:
        return text
    entries = "\n".join(
        f'    <public type="id" name="{name}" id="{id:#x}" />' for name, id in IDS.items()
    )
    return text.replace("</resources>", entries + "\n</resources>", 1)


def merge_strings(path: Path, block: str, names: list[str]) -> None:
    if not path.exists():
        return
    text = path.read_text(encoding="utf-8")
    if all(f'name="{n}"' in text for n in names):
        return
    path.write_text(text.replace("</resources>", block + "\n</resources>", 1), encoding="utf-8")


def write_helpers() -> None:
    HELPER.write_text(HELPER_SMALI.strip() + "\n", encoding="utf-8")
    HELPER_1.write_text(HELPER_1_SMALI.strip() + "\n", encoding="utf-8")
    HELPER_2.write_text(HELPER_2_SMALI.strip() + "\n", encoding="utf-8")
    helper3 = HELPER_3_SMALI.replace(
        "iput p2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I",
        "iput p2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I",
        1,
    )
    HELPER_3.write_text(helper3.strip() + "\n", encoding="utf-8")


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1

    BEAN.write_text(patch_program_data_bean(BEAN.read_text(encoding="utf-8")), encoding="utf-8")
    COMMAND_UTIL.write_text(patch_command_util(COMMAND_UTIL.read_text(encoding="utf-8")), encoding="utf-8")
    COMMAND_SENDER.write_text(patch_command_sender(COMMAND_SENDER.read_text(encoding="utf-8")), encoding="utf-8")
    TRAIN_ITEM.write_text(patch_train_item_send_pulse(TRAIN_ITEM.read_text(encoding="utf-8")), encoding="utf-8")
    dialog_text = DIALOG.read_text(encoding="utf-8")
    dialog_text = patch_edit_dialog_store_root(dialog_text)
    dialog_text = patch_edit_dialog_init_set_data(dialog_text)
    DIALOG.write_text(dialog_text, encoding="utf-8")
    LAYOUT.write_text(patch_layout(LAYOUT.read_text(encoding="utf-8")), encoding="utf-8")
    PUBLIC_XML.write_text(patch_public_xml(PUBLIC_XML.read_text(encoding="utf-8")), encoding="utf-8")
    write_helpers()
    merge_strings(VALUES_DEFAULT, EN_STRINGS, ["active_pause_title", "active_pause_hint", "active_pause_strength", "active_pause_hz"])
    merge_strings(VALUES_BG, BG_STRINGS, ["active_pause_title", "active_pause_hint", "active_pause_strength", "active_pause_hz"])
    print("Active pause patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
