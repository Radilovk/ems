.class public Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;
.super Ljava/lang/Object;
.source "MusicSyncBridge.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachManager(Landroid/app/Activity;)Z
    .registers 2

    .prologue
    .line 11
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static isSyncRunning()Z
    .registers 1

    .prologue
    .line 15
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    return v0
.end method

.method public static onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isDriving()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 29
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->adjustCeiling(I)I

    .line 30
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->refreshSyncLabel()V

    .line 31
    const/4 v0, 0x1

    .line 36
    :goto_1b
    return v0

    .line 33
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 34
    :cond_28
    const/4 v0, 0x0

    goto :goto_1b

    .line 36
    :cond_2a
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    move-result v0

    goto :goto_1b
.end method

.method public static shouldBlockManualControls()Z
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isDriving()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
