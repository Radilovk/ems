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

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 410
    :goto_0
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_1c

    .line 411
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$000()Landroid/media/AudioRecord;

    move-result-object v0

    .line 412
    if-nez v0, :cond_b

    .line 413
    goto :goto_1c

    .line 415
    :cond_b
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleStrength(Landroid/media/AudioRecord;)I
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$100(Landroid/media/AudioRecord;)I

    move-result v0

    .line 416
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    if-eq v0, v1, :cond_1b

    .line 417
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 418
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->pushPulse(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$200(I)V

    .line 419
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$300()V

    .line 421
    :cond_1b
    goto :goto_0

    .line 422
    :cond_1c
    :goto_1c
    return-void
.end method
