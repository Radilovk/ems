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

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 388
    :goto_0
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_20

    .line 389
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$000()Landroid/media/AudioRecord;

    move-result-object v0

    .line 390
    if-nez v0, :cond_b

    .line 391
    goto :goto_20

    .line 393
    :cond_b
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleStrength(Landroid/media/AudioRecord;)I
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$100(Landroid/media/AudioRecord;)I

    move-result v0

    .line 394
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    if-eq v0, v1, :cond_18

    .line 395
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 396
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$200()V

    .line 399
    :cond_18
    const-wide/16 v0, 0x19

    :try_start_1a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1f

    .line 402
    nop

    .line 403
    goto :goto_0

    .line 400
    :catch_1f
    move-exception v0

    .line 404
    :cond_20
    :goto_20
    return-void
.end method
