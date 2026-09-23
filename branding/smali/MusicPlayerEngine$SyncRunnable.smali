.class final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SyncRunnable"
.end annotation


# instance fields
.field private final engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

.field private nextPollUptimeMs:J


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V
    .registers 2

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 442
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v0, 0x1

    .line 446
    iget-object v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 447
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z

    move-result v2

    if-eqz v2, :cond_16

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_16

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)[I

    move-result-object v2

    if-nez v2, :cond_17

    .line 471
    :cond_16
    :goto_16
    return-void

    .line 451
    :cond_17
    :try_start_17
    invoke-virtual {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolvePlaybackPositionMs()I

    move-result v2

    .line 452
    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolveEnvelopeIndex(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->dispatchLevel(I)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_22} :catch_55

    .line 455
    :goto_22
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 459
    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_36

    .line 460
    iput-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 462
    :cond_36
    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    const-wide/16 v8, 0x10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 463
    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    cmp-long v5, v6, v2

    if-gez v5, :cond_45

    .line 464
    iput-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 466
    :cond_45
    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    sub-long v2, v6, v2

    .line 467
    cmp-long v5, v2, v0

    if-gez v5, :cond_57

    .line 470
    :goto_4d
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    .line 453
    :catch_55
    move-exception v2

    goto :goto_22

    :cond_57
    move-wide v0, v2

    goto :goto_4d
.end method
