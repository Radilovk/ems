#!/usr/bin/env python3
"""Remember last user/program/device and move them to the top when starting training."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
CONSTANTS = DECOMPILED / "smali_classes2/com/isaigu/gymapp/mgr/Constants.smali"
NEW_CONNECT = DIALOG_DIR / "NewUserProgramDeviceConnectDialogFragment.smali"
LEGACY_CONNECT = DIALOG_DIR / "UserProgramDeviceConnectDialogFragment.smali"

ENTRY = DIALOG_DIR / "LastTrainSelectionEntry.smali"
STORAGE = DIALOG_DIR / "LastTrainSelectionStorage.smali"

ENTRY_SMALI = """.class public Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;
.super Ljava/lang/Object;
.source "LastTrainSelectionEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deviceMac:Ljava/lang/String;

.field public programId:Ljava/lang/Long;

.field public programName:Ljava/lang/String;

.field public userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
"""

STORAGE_SMALI = """.class public Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;
.super Ljava/lang/Object;
.source "LastTrainSelectionStorage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isUserTraining(Lcom/isaigu/gymapp/bean/TrainUser;)Z
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v1, v2, v1

    if-nez v1, :goto_0

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static loadEntry()Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;
    .locals 2

    const-string v0, "file_name_last_train_selection"

    const-class v1, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;

    return-object v0
.end method

.method private static moveDeviceToTop(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/isaigu/gymapp/bean/DeviceBean;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private static moveProgramToTop(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/isaigu/gymapp/bean/TrainProgram;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static moveUserToTop(Ljava/util/List;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;J)Z"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;->isUserTraining(Lcom/isaigu/gymapp/bean/TrainUser;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/isaigu/gymapp/bean/TrainUser;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static prepareLists(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;->loadEntry()Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    iget-wide v2, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->userId:J

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;->moveUserToTop(Ljava/util/List;J)Z

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->programId:Ljava/lang/Long;

    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->programName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;->moveProgramToTop(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->deviceMac:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;->moveDeviceToTop(Ljava/util/List;Ljava/lang/String;)Z

    return-void
.end method

.method public static prepareListsLegacy(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;->loadEntry()Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    iget-wide v2, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->userId:J

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;->moveUserToTop(Ljava/util/List;J)Z

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->programId:Ljava/lang/Long;

    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->programName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;->moveProgramToTop(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->deviceMac:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;->moveDeviceToTop(Ljava/util/List;Ljava/lang/String;)Z

    return-void
.end method

.method public static save(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/DeviceBean;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;-><init>()V

    iget-wide v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v1, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->userId:J

    iget-object p0, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->programId:Ljava/lang/Long;

    iget-object p0, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->programName:Ljava/lang/String;

    iget-object p0, p2, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/LastTrainSelectionEntry;->deviceMac:Ljava/lang/String;

    const-string p0, "file_name_last_train_selection"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
"""

def prepare_marker(class_name: str, line_no: str) -> str:
    return (
        f"    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/{class_name};->deviceBeans:Ljava/util/List;\n\n"
        f"    .line {line_no}\n"
        f"    invoke-direct {{p0}}, Lcom/isaigu/gymapp/dialog/{class_name};->initData()V"
    )


def prepare_replacement(class_name: str, line_no: str, prepare_call: str) -> str:
    return (
        f"    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/{class_name};->deviceBeans:Ljava/util/List;\n\n"
        f"    invoke-static {{p0}}, Lcom/isaigu/gymapp/dialog/{prepare_call}\n\n"
        f"    .line {line_no}\n"
        f"    invoke-direct {{p0}}, Lcom/isaigu/gymapp/dialog/{class_name};->initData()V"
    )

def save_marker_new(class_name: str) -> str:
    return (
        f"    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z\n\n"
        f"    .line 242\n"
        f"    new-instance v1, Lcom/isaigu/gymapp/train/model/TrainItem;"
    )


def save_replacement_new(class_name: str) -> str:
    return (
        f"    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z\n\n"
        f"    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/{class_name};->selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;\n\n"
        f"    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/{class_name};->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;\n\n"
        f"    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/{class_name};->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;\n\n"
        f"    invoke-static {{v1, v2, v3}}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;->save("
        f"Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/DeviceBean;)V\n\n"
        f"    .line 242\n"
        f"    new-instance v1, Lcom/isaigu/gymapp/train/model/TrainItem;"
    )


def save_marker_legacy(class_name: str) -> str:
    return (
        f"    iput-boolean v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z\n\n"
        f"    .line 601\n"
        f"    new-instance v2, Lcom/isaigu/gymapp/message/DataBundle;"
    )


def save_replacement_legacy(class_name: str) -> str:
    return (
        f"    iput-boolean v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z\n\n"
        f"    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/{class_name};->selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;\n\n"
        f"    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/{class_name};->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;\n\n"
        f"    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/{class_name};->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;\n\n"
        f"    invoke-static {{v2, v3, v4}}, Lcom/isaigu/gymapp/dialog/LastTrainSelectionStorage;->save("
        f"Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/DeviceBean;)V\n\n"
        f"    .line 601\n"
        f"    new-instance v2, Lcom/isaigu/gymapp/message/DataBundle;"
    )


def patch_constants() -> None:
    text = CONSTANTS.read_text(encoding="utf-8")
    if "file_name_last_train_selection" in text:
        print("Constants: last train selection key already present")
        return
    text = text.replace(
        '.field public static final file_name_login_user:Ljava/lang/String; = "file_name_login_user"\n',
        '.field public static final file_name_login_user:Ljava/lang/String; = "file_name_login_user"\n\n'
        '.field public static final file_name_last_train_selection:Ljava/lang/String; = "file_name_last_train_selection"\n',
        1,
    )
    CONSTANTS.write_text(text, encoding="utf-8")
    print("Constants: added file_name_last_train_selection")


def patch_connect_fragment(
    text: str,
    class_name: str,
    prepare_call: str,
    init_line: str,
    save_marker: str,
    save_replacement: str,
    bump_on_device_connected_locals: bool = False,
) -> str:
    if "LastTrainSelectionStorage;->prepareLists" in text or "LastTrainSelectionStorage;->prepareListsLegacy" in text:
        print(f"{class_name}: last selection already patched")
        return text
    marker = prepare_marker(class_name, init_line)
    replacement = prepare_replacement(class_name, init_line, prepare_call)
    if marker not in text:
        raise RuntimeError(f"{class_name} prepareLists marker not found")
    text = text.replace(marker, replacement, 1)
    if save_marker not in text:
        raise RuntimeError(f"{class_name} save marker not found")
    if bump_on_device_connected_locals:
        text = text.replace(
            ".method public onDeviceConnected(Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;)V\n    .locals 4",
            ".method public onDeviceConnected(Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;)V\n    .locals 6",
            1,
        )
    text = text.replace(save_marker, save_replacement, 1)
    print(f"{class_name}: last selection hooks added")
    return text


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    patch_constants()
    ENTRY.write_text(ENTRY_SMALI.strip() + "\n", encoding="utf-8")
    STORAGE.write_text(STORAGE_SMALI.strip() + "\n", encoding="utf-8")
    NEW_CONNECT.write_text(
        patch_connect_fragment(
            NEW_CONNECT.read_text(encoding="utf-8"),
            "NewUserProgramDeviceConnectDialogFragment",
            "LastTrainSelectionStorage;->prepareLists(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V",
            "129",
            save_marker_new("NewUserProgramDeviceConnectDialogFragment"),
            save_replacement_new("NewUserProgramDeviceConnectDialogFragment"),
            bump_on_device_connected_locals=True,
        ),
        encoding="utf-8",
    )
    if LEGACY_CONNECT.exists():
        LEGACY_CONNECT.write_text(
            patch_connect_fragment(
                LEGACY_CONNECT.read_text(encoding="utf-8"),
                "UserProgramDeviceConnectDialogFragment",
                "LastTrainSelectionStorage;->prepareListsLegacy(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V",
                "116",
                save_marker_legacy("UserProgramDeviceConnectDialogFragment"),
                save_replacement_legacy("UserProgramDeviceConnectDialogFragment"),
            ),
            encoding="utf-8",
        )
    print("Last train selection patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
