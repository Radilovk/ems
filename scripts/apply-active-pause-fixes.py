#!/usr/bin/env python3
"""Fix active-pause Hz input and persistence (does not change training +/- or slider)."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
DATA_MGR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/mgr/DataMgr.smali"
MAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/MainFragment.smali"
MAIN_FRAGMENT_9 = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/MainFragment$9.smali"
OPERATION_UTIL_1_1_1 = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils/OperationUtil$1$1$1.smali"
OPERATION_UTIL_1_2_1 = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils/OperationUtil$1$2$1.smali"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
NEW_CONNECT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment.smali"
LEGACY_CONNECT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment.smali"
NEW_TRAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
LAYOUT = DECOMPILED / "res/layout/edit_parameter_dialog.xml"
PUBLIC_XML = DECOMPILED / "res/values/public.xml"
IDS_XML = DECOMPILED / "res/values/ids.xml"
R_ID = DECOMPILED / "smali_classes2/com/isaigu/gymapp/R$id.smali"
HELPER = DIALOG_DIR / "ActivePauseSettingsHelper.smali"
HELPER_3 = DIALOG_DIR / "ActivePauseSettingsHelper$3.smali"
EDIT_DIALOG = DIALOG_DIR / "EditUserProgramDataDialog.smali"

PAUSE_HZ_INPUT_ID = 0x7f09020b

ENTRY = DIALOG_DIR / "ActivePauseEntry.smali"
STORAGE = DIALOG_DIR / "ActivePauseStorage.smali"
TEXT_WATCHER = DIALOG_DIR / "ActivePauseSettingsHelper$PauseHzTextWatcher.smali"

ENTRY_SMALI = """.class public Lcom/isaigu/gymapp/dialog/ActivePauseEntry;
.super Ljava/lang/Object;
.source "ActivePauseEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public activePause:Z

.field public id:Ljava/lang/Long;

.field public name:Ljava/lang/String;

.field public pauseHz:I

.field public pauseStrenthPercent:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
"""

STORAGE_SMALI = """.class public Lcom/isaigu/gymapp/dialog/ActivePauseStorage;
.super Ljava/lang/Object;
.source "ActivePauseStorage.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "file_name_active_pause_overlay"

.field private static final FILE_NAME_DEFAULTS:Ljava/lang/String; = "file_name_active_pause_defaults"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/ActivePauseEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/dialog/ActivePauseEntry;",
            ">;",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ")",
            "Lcom/isaigu/gymapp/dialog/ActivePauseEntry;"
        }
    .end annotation

    if-eqz p0, :cond_not_found

    if-nez p1, :cond_has_program

    goto :cond_not_found

    :cond_has_program
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_loop
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_not_found

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    iget-object v1, v0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->id:Ljava/lang/Long;

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v1, :cond_try_name

    if-eqz v2, :cond_try_name

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_found

    :cond_try_name
    iget-object v1, v0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->name:Ljava/lang/String;

    if-eqz v1, :cond_loop

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_loop

    :cond_found
    return-object v0

    :cond_not_found
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/dialog/ActivePauseEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "file_name_active_pause_overlay"

    const-class v1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_ok

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_ok
    return-object v0
.end method

.method private static saveEntries(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/dialog/ActivePauseEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "file_name_active_pause_overlay"

    const-class v1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    invoke-static {v0, v1, p0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method private static applyEntry(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/dialog/ActivePauseEntry;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->activePause:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iget v0, p1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseHz:I

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iget v0, p1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseStrenthPercent:I

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    return-void
.end method

.method private static loadDefaults()Lcom/isaigu/gymapp/dialog/ActivePauseEntry;
    .locals 2

    const-string v0, "file_name_active_pause_defaults"

    const-class v1, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    return-object v0
.end method

.method private static saveDefaults(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;-><init>()V

    iget-boolean v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->activePause:Z

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseHz:I

    iget p0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput p0, v0, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseStrenthPercent:I

    const-string p0, "file_name_active_pause_defaults"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static applyToProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/ActivePauseEntry;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->applyEntry(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/dialog/ActivePauseEntry;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->applyEntry(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/dialog/ActivePauseEntry;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->applyEntry(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/dialog/ActivePauseEntry;)V

    iget-object p0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->applyEntry(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/dialog/ActivePauseEntry;)V

    return-void
.end method

.method public static apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->loadEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->loadDefaults()Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->applyToProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/ActivePauseEntry;)V

    return-void
.end method

.method public static mergeList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->loadEntries()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v3, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->name:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v3, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->activePause:Z

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v3, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseHz:I

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v0, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseStrenthPercent:I

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->saveEntries(Ljava/util/List;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->saveDefaults(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    return-void
.end method
"""

TEXT_WATCHER_SMALI = f""".class Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$PauseHzTextWatcher;
.super Ljava/lang/Object;
.source "ActivePauseSettingsHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .locals 0

    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$PauseHzTextWatcher;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {{p1}}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {{p1}}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {{p1}}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {{p1}}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    :cond_2
    const/16 v0, 0x78

    if-le p1, v0, :cond_3

    const/16 p1, 0x78

    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$PauseHzTextWatcher;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {{v0}}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput p1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$PauseHzTextWatcher;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {{p1}}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p1

    invoke-static {{p1}}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
"""

SEND_PULSE_PAUSE_OLD = """    :cond_4
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V"""

SEND_PULSE_PAUSE_NEW = """    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend(B[B)V

    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V"""

def register_pause_hz_input_id() -> None:
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    if "pauseHzInput" not in public_text:
        public_text = public_text.replace(
            "</resources>",
            f'    <public type="id" name="pauseHzInput" id="{PAUSE_HZ_INPUT_ID:#x}" />\n</resources>',
            1,
        )
        PUBLIC_XML.write_text(public_text, encoding="utf-8")

    ids_text = IDS_XML.read_text(encoding="utf-8")
    if 'name="pauseHzInput"' not in ids_text:
        ids_text = ids_text.replace(
            "</resources>",
            '    <item type="id" name="pauseHzInput" />\n</resources>',
            1,
        )
        IDS_XML.write_text(ids_text, encoding="utf-8")

    r_text = R_ID.read_text(encoding="utf-8")
    if "pauseHzInput" not in r_text:
        r_text = r_text.replace(
            "\n\n# direct methods",
            f"\n.field public static final pauseHzInput:I = {PAUSE_HZ_INPUT_ID:#x}\n\n\n# direct methods",
            1,
        )
        R_ID.write_text(r_text, encoding="utf-8")


def patch_layout(xml: str) -> str:
    old = (
        '                        <com.isaigu.gymapp.widget.AmountView '
        'android:id="@id/pauseHzAmount" android:layout_width="wrap_content" '
        'android:layout_height="wrap_content" android:layout_marginRight="10.0dip" />'
    )
    new = (
        '                        <EditText android:id="@id/pauseHzInput" '
        'android:layout_width="72.0dip" android:layout_height="wrap_content" '
        'android:layout_marginRight="10.0dip" android:gravity="center" '
        'android:inputType="number" android:maxLength="3" '
        'android:textSize="18.0sp" android:textColor="@color/text_primary" '
        'android:imeOptions="actionDone" />'
    )
    if old in xml:
        return xml.replace(old, new, 1)
    if "pauseHzInput" in xml:
        return xml
    raise RuntimeError("pauseHzAmount layout marker not found")


def patch_helper_bind(text: str) -> str:
    old = f"""    const v0, {0x7f09020a:#x}

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

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V"""
    new = f"""    const v0, {PAUSE_HZ_INPUT_ID:#x}

    invoke-virtual {{p1, v0}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_done

    new-instance v1, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$PauseHzTextWatcher;

    invoke-direct {{v1, p0}}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$PauseHzTextWatcher;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {{v0, v1}}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V"""
    if old not in text and "PauseHzTextWatcher" in text:
        return text
    if old not in text:
        raise RuntimeError("ActivePauseSettingsHelper Hz AmountView bind block not found")
    return text.replace(old, new, 1)


def patch_helper_refresh(text: str) -> str:
    old = f"""    const v2, {0x7f09020a:#x}

    invoke-virtual {{v0, v2}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    if-eqz v2, :cond_hz_done

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    const/4 v0, 0x1

    if-ge v3, v0, :cond_hz_use_main

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-ge v3, v0, :cond_hz_default

    const/16 v3, 0x32

    :cond_hz_default
    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :cond_hz_use_main
    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    invoke-virtual {{v2, v3}}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V"""
    new = f"""    invoke-static {{p0}}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {{v2}}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    const v2, {PAUSE_HZ_INPUT_ID:#x}

    invoke-virtual {{v0, v2}}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    if-eqz v2, :cond_hz_done

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    const/4 v0, 0x1

    if-ge v3, v0, :cond_hz_use_main

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-ge v3, v0, :cond_hz_default

    const/16 v3, 0x32

    :cond_hz_default
    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :cond_hz_use_main
    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    invoke-static {{v3}}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {{v2, v3}}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V"""
    if "ActivePauseStorage;->apply" in text and "pauseHzInput" in text:
        return text
    if old not in text:
        raise RuntimeError("ActivePauseSettingsHelper refresh Hz block not found")
    return text.replace(old, new, 1)


def patch_helper_1_save(text: str) -> str:
    if "ActivePauseStorage;->save" in text:
        return text
    old = """    :cond_0
    iget-object p1, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-boolean p2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$1;->val$root:Landroid/view/View;"""
    new = """    :cond_0
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-boolean p2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper$1;->val$root:Landroid/view/View;"""
    if old not in text:
        raise RuntimeError("ActivePauseSettingsHelper$1 save hook marker not found")
    return text.replace(old, new, 1)


def patch_helper_2_save(text: str) -> str:
    if "ActivePauseStorage;->save" in text:
        return text
    old = """    :cond_0
    iget-object p1, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput p2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    return-void"""
    new = """    :cond_0
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput p2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    return-void"""
    if old not in text:
        raise RuntimeError("ActivePauseSettingsHelper$2 save hook marker not found")
    return text.replace(old, new, 1)


def patch_data_mgr(text: str) -> str:
    if "ActivePauseStorage;->save" in text:
        return text
    marker = "    :cond_2\n    return-void\n.end method\n\n.method public addOrUpdateTrainUser"
    hook = """    :cond_2
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    return-void
.end method

.method public addOrUpdateTrainUser"""
    if marker not in text:
        raise RuntimeError("DataMgr.addOrUpdateTrainProgram end marker not found")
    return text.replace(marker, hook, 1)


def patch_after_clone_program_list(text: str, fragment_class: str, label: str) -> str:
    if f"programDatas:Ljava/util/List;\n\n    invoke-static {{v1}}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList" in text:
        return text
    old = (
        f"    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/{fragment_class};"
        "->programDatas:Ljava/util/List;\n"
    )
    new = (
        old
        + "\n    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;"
        "->mergeList(Ljava/util/List;)V\n"
    )
    if old not in text:
        raise RuntimeError(f"{label}: programDatas clone marker not found")
    return text.replace(old, new)


def _private_method_body(text: str, name: str) -> str | None:
    sig = f".method private {name}"
    start = text.find(sig)
    if start < 0:
        return None
    end = text.find(".end method", start)
    return text[start:end] if end >= 0 else None


def patch_update_selected_program(text: str, class_name: str, label: str) -> str:
    body = _private_method_body(
        text, "updateSelectedProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V"
    )
    if body is None:
        raise RuntimeError(f"{label}: updateSelectedProgram method not found")
    if "ActivePauseStorage;->apply" in body:
        return text
    iput = (
        f"    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/{class_name};"
        "->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;\n\n"
    )
    hook = (
        "    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;"
        "->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V\n\n"
    )
    if iput not in text:
        raise RuntimeError(f"{label}: updateSelectedProgram marker not found")
    return text.replace(iput, iput + hook, 1)


def _public_method_body(text: str, name: str) -> str | None:
    sig = f".method public {name}"
    start = text.find(sig)
    if start < 0:
        return None
    end = text.find(".end method", start)
    return text[start:end] if end >= 0 else None


def patch_on_device_connected(text: str, class_name: str, label: str) -> str:
    body = _public_method_body(
        text, "onDeviceConnected(Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;)V"
    )
    if body is None:
        return text
    if "ActivePauseStorage;->apply" in body:
        return text
    old = f"""    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/{class_name};->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;"""
    new = f"""    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/{class_name};->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {{v1}}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;"""
    if old not in text:
        raise RuntimeError(f"{label}: onDeviceConnected marker not found")
    return text.replace(old, new, 1)


def patch_train_item_init(text: str) -> str:
    if "ActivePauseStorage;->apply" in text.split(".method public init")[1].split(".method")[0]:
        return text
    old = """    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendStop()V

    .line 56
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V"""
    new = """    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendStop()V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_ap_init

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    :cond_ap_init
    .line 56
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V"""
    if old not in text:
        raise RuntimeError("TrainItem.init active pause hook marker not found")
    return text.replace(old, new, 1)


def patch_train_item_active_pause_match_program(text: str) -> str:
    """Read activePause fields from matchProgram() bean during sendPulse."""
    if "matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;" in text.split(":cond_1")[1].split(":cond_4")[0]:
        if "programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause" not in text.split(":cond_1")[1].split(":cond_4")[0]:
            return text
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
        return text
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


def patch_train_item_set_program(text: str) -> str:
    section = text.split("setTrainProgram")[1].split(".method")[0]
    if "ActivePauseStorage;->apply" in section:
        return text
    old = """    iput-object p1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 248
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V"""
    new = """    iput-object p1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 248
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V"""
    if old not in text:
        raise RuntimeError("TrainItem.setTrainProgram hook marker not found")
    return text.replace(old, new, 1)


def patch_main_fragment_startup_load(text: str) -> str:
    marker = "file_name_train_data"
    if marker not in text:
        raise RuntimeError("MainFragment file_name_train_data marker not found")
    chunk = text.split(marker, 1)[1][:900]
    if "ActivePauseStorage;->mergeList" in chunk:
        return text
    old = """    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;"""
    new = """    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;"""
    if old not in text:
        raise RuntimeError("MainFragment startup trainData load marker not found")
    return text.replace(old, new, 1)


def patch_main_fragment_9_cache_fallback(text: str) -> str:
    old = """    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 370
    :goto_0"""
    new = """    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 370
    :goto_0"""
    if old not in text:
        if "invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList" in text:
            return text
        raise RuntimeError("MainFragment$9 cache fallback marker not found")
    return text.replace(old, new, 1)


def patch_merge_after_load(text: str, label: str) -> str:
    if "ActivePauseStorage;->mergeList" in text:
        return text
    patterns = (
        (
            "    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;\n\n    .line ",
            "    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;\n\n    "
            "invoke-static {v2}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V\n\n    .line ",
        ),
        (
            "    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;\n\n    .line ",
            "    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;\n\n    "
            "invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V\n\n    .line ",
        ),
    )
    for old, new in patterns:
        if old in text:
            return text.replace(old, new, 1)
    raise RuntimeError(f"{label}: trainData assignment marker not found")


def patch_edit_dialog_clone(text: str) -> str:
    section = re.compile(
        r"    invoke-direct \{p0\}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initListener\(\)V\n+"
        r"(?:    invoke-static \{p0\}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access\$200"
        r"\(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;\)Lcom/isaigu/gymapp/bean/TrainProgram;\n+"
        r"    move-result-object v1\n+"
        r"    invoke-static \{v1\}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->apply"
        r"\(Lcom/isaigu/gymapp/bean/TrainProgram;\)V\n+)*"
        r"    invoke-static \{p0, v0\}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->bind"
        r"\(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;\)V",
    )
    replacement = (
        "    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initListener()V\n\n"
        "    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200"
        "(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;\n\n"
        "    move-result-object v1\n\n"
        "    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->apply"
        "(Lcom/isaigu/gymapp/bean/TrainProgram;)V\n\n"
        "    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->bind"
        "(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V"
    )
    if section.search(text):
        return section.sub(replacement, text, count=1)
    marker = """    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->bind(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    .line 143
    return-object v0"""
    hook = """    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->bind(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    .line 143
    return-object v0"""
    if marker in text:
        return text.replace(marker, hook, 1)
    if "ActivePauseStorage;->apply" in text.split("onCreateView")[1][:4000]:
        return text
    raise RuntimeError("EditUserProgramDataDialog onCreateView bind marker not found")


def revert_training_strength_tweaks() -> None:
    """Undo mistaken +/- step, seekbar, and pause-phase PDU changes from an earlier revision."""
    if TRAIN_ITEM.exists():
        text = TRAIN_ITEM.read_text(encoding="utf-8")
        if SEND_PULSE_PAUSE_NEW.split("\n")[0] in text and SEND_PULSE_PAUSE_OLD not in text.split(":cond_4")[1].split(":goto_0")[0]:
            text = text.replace(SEND_PULSE_PAUSE_NEW, SEND_PULSE_PAUSE_OLD, 1)
            TRAIN_ITEM.write_text(text, encoding="utf-8")
            print("TrainItem.sendPulse: reverted pause-phase strength PDU tweak")

    if NEW_TRAIN_FRAGMENT.exists():
        text = NEW_TRAIN_FRAGMENT.read_text(encoding="utf-8")
        updated = text.replace(
            """    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addAllPartValue(I)V""",
            """    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addAllPartValue(I)V""",
            1,
        ).replace(
            """    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addAllPartValue(I)V""",
            """    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addAllPartValue(I)V""",
            1,
        )
        if updated != text:
            NEW_TRAIN_FRAGMENT.write_text(updated, encoding="utf-8")
            print("NewTrainFragment: reverted master +/- step to 1")


def write_storage_files() -> None:
    ENTRY.write_text(ENTRY_SMALI.strip() + "\n", encoding="utf-8")
    STORAGE.write_text(STORAGE_SMALI.strip() + "\n", encoding="utf-8")
    TEXT_WATCHER.write_text(TEXT_WATCHER_SMALI.strip() + "\n", encoding="utf-8")
    if HELPER_3.exists():
        HELPER_3.unlink()


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1

    register_pause_hz_input_id()
    write_storage_files()

    LAYOUT.write_text(patch_layout(LAYOUT.read_text(encoding="utf-8")), encoding="utf-8")

    helper = HELPER.read_text(encoding="utf-8")
    helper = patch_helper_bind(helper)
    helper = patch_helper_refresh(helper)
    HELPER.write_text(helper, encoding="utf-8")

    HELPER_2 = DIALOG_DIR / "ActivePauseSettingsHelper$2.smali"
    HELPER_2.write_text(patch_helper_2_save(HELPER_2.read_text(encoding="utf-8")), encoding="utf-8")

    HELPER_1 = DIALOG_DIR / "ActivePauseSettingsHelper$1.smali"
    HELPER_1.write_text(patch_helper_1_save(HELPER_1.read_text(encoding="utf-8")), encoding="utf-8")

    EDIT_DIALOG.write_text(patch_edit_dialog_clone(EDIT_DIALOG.read_text(encoding="utf-8")), encoding="utf-8")
    DATA_MGR.write_text(patch_data_mgr(DATA_MGR.read_text(encoding="utf-8")), encoding="utf-8")
    mf9 = MAIN_FRAGMENT_9.read_text(encoding="utf-8")
    mf9 = patch_merge_after_load(mf9, "MainFragment$9")
    mf9 = patch_main_fragment_9_cache_fallback(mf9)
    MAIN_FRAGMENT_9.write_text(mf9, encoding="utf-8")

    OPERATION_UTIL_1_1_1.write_text(
        patch_merge_after_load(OPERATION_UTIL_1_1_1.read_text(encoding="utf-8"), "OperationUtil$1$1$1"),
        encoding="utf-8",
    )
    OPERATION_UTIL_1_2_1.write_text(
        patch_merge_after_load(OPERATION_UTIL_1_2_1.read_text(encoding="utf-8"), "OperationUtil$1$2$1"),
        encoding="utf-8",
    )
    MAIN_FRAGMENT.write_text(
        patch_main_fragment_startup_load(MAIN_FRAGMENT.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    train_item = TRAIN_ITEM.read_text(encoding="utf-8")
    train_item = patch_train_item_set_program(train_item)
    train_item = patch_train_item_init(train_item)
    train_item = patch_train_item_active_pause_match_program(train_item)
    TRAIN_ITEM.write_text(train_item, encoding="utf-8")

    new_connect = NEW_CONNECT.read_text(encoding="utf-8")
    new_connect = patch_after_clone_program_list(
        new_connect, "NewUserProgramDeviceConnectDialogFragment", "NewConnect programDatas"
    )
    new_connect = patch_update_selected_program(
        new_connect, "NewUserProgramDeviceConnectDialogFragment", "NewConnect updateSelectedProgram"
    )
    new_connect = patch_on_device_connected(
        new_connect, "NewUserProgramDeviceConnectDialogFragment", "NewConnect onDeviceConnected"
    )
    NEW_CONNECT.write_text(new_connect, encoding="utf-8")

    if LEGACY_CONNECT.exists():
        legacy = LEGACY_CONNECT.read_text(encoding="utf-8")
        try:
            legacy = patch_after_clone_program_list(
                legacy, "UserProgramDeviceConnectDialogFragment", "LegacyConnect programDatas"
            )
            legacy = patch_update_selected_program(
                legacy, "UserProgramDeviceConnectDialogFragment", "LegacyConnect updateSelectedProgram"
            )
            legacy = patch_on_device_connected(
                legacy, "UserProgramDeviceConnectDialogFragment", "LegacyConnect onDeviceConnected"
            )
            LEGACY_CONNECT.write_text(legacy, encoding="utf-8")
        except RuntimeError:
            pass

    revert_training_strength_tweaks()

    print("Active pause fixes applied (Hz input, device cache, training load hooks).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
