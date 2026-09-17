.class Lcom/isaigu/gymapp/train/utils/MusicSync$2;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 377
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 379
    :goto_5
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_1f

    .line 380
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$400()Landroid/media/AudioRecord;

    move-result-object v0

    .line 381
    if-nez v0, :cond_10

    .line 382
    goto :goto_1f

    .line 384
    :cond_10
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleSoundPercent(Landroid/media/AudioRecord;)I
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$500(Landroid/media/AudioRecord;)I

    move-result v0

    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$600(I)V

    .line 386
    const-wide/16 v0, 0x5

    :try_start_19
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1e

    .line 389
    nop

    .line 390
    goto :goto_5

    .line 387
    :catch_1e
    move-exception v0

    .line 391
    :cond_1f
    :goto_1f
    return-void
.end method
