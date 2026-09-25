.class public Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;
.super Ljava/lang/Object;
.source "MusicSyncBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachManager(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 10
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncRunning()Z
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    return v0
.end method

.method public static onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static shouldBlockManualControls()Z
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    return v0
.end method
