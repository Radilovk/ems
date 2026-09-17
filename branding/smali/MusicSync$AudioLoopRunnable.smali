.class final Lcom/isaigu/gymapp/train/utils/MusicSync$AudioLoopRunnable;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AudioLoopRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 425
    :goto_0
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_3c

    .line 426
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$000()Landroid/media/AudioRecord;

    move-result-object v0

    .line 427
    if-nez v0, :cond_b

    .line 428
    goto :goto_3c

    .line 430
    :cond_b
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleStrength(Landroid/media/AudioRecord;)I
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$100(Landroid/media/AudioRecord;)I

    move-result v0

    .line 431
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$200()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->isInWorkPhase(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$300(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    .line 432
    if-nez v1, :cond_23

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->wasInWorkPhase:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$400()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 433
    const/4 v2, -0x1

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->lastWorkPushStrength:I
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$502(I)I

    .line 435
    :cond_23
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->wasInWorkPhase:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$402(Z)Z

    .line 436
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    if-eq v0, v2, :cond_34

    .line 437
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 438
    if-eqz v1, :cond_31

    .line 439
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->pushWorkPhaseStrength(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$600(I)V

    .line 441
    :cond_31
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$700()V

    .line 444
    :cond_34
    const-wide/16 v0, 0xa

    :try_start_36
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_3b

    .line 447
    nop

    .line 448
    goto :goto_0

    .line 445
    :catch_3b
    move-exception v0

    .line 449
    :cond_3c
    :goto_3c
    return-void
.end method
