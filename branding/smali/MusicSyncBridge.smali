.class public Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;
.super Ljava/lang/Object;
.source "MusicSyncBridge.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachManager(Landroid/app/Activity;)Z
    .registers 1

    .line 10
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static isSyncRunning()Z
    .registers 1

    .line 14
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    return v0
.end method

.method public static onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_12

    .line 30
    :cond_d
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    move-result p0

    return p0

    .line 28
    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldBlockManualControls()Z
    .registers 1

    .line 19
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    return v0
.end method
