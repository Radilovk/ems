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

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 603
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 607
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 608
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z

    move-result v1

    if-eqz v1, :cond_56

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_56

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_56

    .line 612
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolvePlaybackPositionMs()I

    move-result v1

    .line 613
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolveEnvelopeIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->dispatchLevel(I)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_21

    .line 615
    goto :goto_22

    .line 614
    :catchall_21
    move-exception v1

    .line 616
    :goto_22
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 617
    return-void

    .line 619
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 620
    iget-wide v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_37

    .line 621
    iput-wide v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 623
    :cond_37
    iget-wide v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    const-wide/16 v5, 0x10

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 624
    cmp-long v5, v3, v1

    if-gez v5, :cond_44

    .line 625
    iput-wide v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 627
    :cond_44
    iget-wide v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    sub-long/2addr v3, v1

    .line 628
    const-wide/16 v1, 0x1

    cmp-long v5, v3, v1

    if-gez v5, :cond_4e

    .line 629
    move-wide v3, v1

    .line 631
    :cond_4e
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 632
    return-void

    .line 609
    :cond_56
    :goto_56
    return-void
.end method
