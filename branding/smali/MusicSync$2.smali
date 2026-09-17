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

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 308
    :goto_0
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_20

    .line 309
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$000()Landroid/media/AudioRecord;

    move-result-object v0

    .line 310
    if-nez v0, :cond_b

    .line 311
    goto :goto_20

    .line 313
    :cond_b
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleIntensity(Landroid/media/AudioRecord;)I
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$100(Landroid/media/AudioRecord;)I

    move-result v0

    .line 314
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    if-eq v0, v1, :cond_18

    .line 315
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 316
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$200()V

    .line 319
    :cond_18
    const-wide/16 v0, 0x14

    :try_start_1a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1f

    .line 322
    nop

    .line 323
    goto :goto_0

    .line 320
    :catch_1f
    move-exception v0

    .line 324
    :cond_20
    :goto_20
    return-void
.end method
