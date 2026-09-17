.class Lcom/isaigu/gymapp/train/utils/MusicSync$1;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;->maybePushWorkPulse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 116
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 117
    return-void

    .line 119
    :cond_5
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$000()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 120
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->canPushWorkPulse(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$100(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 121
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->wasInWorkPhase:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$202(Z)Z

    .line 122
    return-void

    .line 125
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    .line 127
    goto :goto_19

    .line 126
    :catchall_18
    move-exception v0

    .line 128
    :goto_19
    return-void
.end method
