.class Lcom/isaigu/gymapp/train/utils/MusicSync$3;
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

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 334
    :goto_0
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_1a

    .line 335
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$100()Landroid/media/AudioRecord;

    move-result-object v0

    .line 336
    if-nez v0, :cond_b

    .line 337
    goto :goto_1a

    .line 339
    :cond_b
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$200(Landroid/media/AudioRecord;)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$300(I)V

    .line 341
    const-wide/16 v0, 0xf

    :try_start_14
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_19

    .line 344
    nop

    .line 345
    goto :goto_0

    .line 342
    :catch_19
    move-exception v0

    .line 346
    :cond_1a
    :goto_1a
    return-void
.end method
