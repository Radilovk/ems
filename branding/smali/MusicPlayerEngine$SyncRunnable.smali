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
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 561
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v0, 0x1

    .line 565
    iget-object v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 566
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v2

    if-nez v2, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolvePlaybackPositionMs()I

    move-result v2

    .line 571
    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolveEnvelopeIndex(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->dispatchLevel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :goto_1
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 578
    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 579
    iput-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 581
    :cond_2
    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    const-wide/16 v8, 0x10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 582
    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    cmp-long v5, v6, v2

    if-gez v5, :cond_3

    .line 583
    iput-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    .line 585
    :cond_3
    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->nextPollUptimeMs:J

    sub-long v2, v6, v2

    .line 586
    cmp-long v5, v2, v0

    if-gez v5, :cond_4

    .line 589
    :goto_2
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 572
    :catch_0
    move-exception v2

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_2
.end method
