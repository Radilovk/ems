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

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 444
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 448
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 449
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z

    move-result v1

    if-eqz v1, :cond_56

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_56

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)[I

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_56

    .line 453
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolvePlaybackPositionMs()I

    move-result v1

    .line 454
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolveEnvelopeIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->dispatchLevel(I)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_21

    .line 456
    goto :goto_22

    .line 455
    :catchall_21
    move-exception v1

    .line 457
    :goto_22
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 458
    return-void

    .line 460
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 461
    iget-wide v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_37

    .line 462
    iput-wide v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 464
    :cond_37
    iget-wide v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    const-wide/16 v5, 0x10

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 465
    cmp-long v5, v3, v1

    if-gez v5, :cond_44

    .line 466
    iput-wide v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 468
    :cond_44
    iget-wide v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    sub-long/2addr v3, v1

    .line 469
    const-wide/16 v1, 0x1

    cmp-long v5, v3, v1

    if-gez v5, :cond_4e

    .line 470
    move-wide v3, v1

    .line 472
    :cond_4e
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 473
    return-void

    .line 450
    :cond_56
    :goto_56
    return-void
.end method
