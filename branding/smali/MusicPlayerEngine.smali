.class public final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;
    }
.end annotation


# static fields
.field private static final SYNC_POLL_MS:I = 0x10

.field private static final WINDOW_MS:I = 0x14


# instance fields
.field private envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

.field private player:Landroid/media/MediaPlayer;

.field private syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

.field private volatile tracking:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    return v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildEnvelope(Landroid/content/Context;Landroid/net/Uri;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v15, Landroid/media/MediaExtractor;

    invoke-direct {v15}, Landroid/media/MediaExtractor;-><init>()V

    .line 71
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 72
    const/4 v3, -0x1

    .line 73
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-ge v2, v4, :cond_c

    .line 74
    invoke-virtual {v15, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 75
    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    if-eqz v4, :cond_0

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    :goto_1
    if-gez v2, :cond_1

    .line 82
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->release()V

    .line 83
    const/4 v2, 0x0

    .line 161
    :goto_2
    return-object v2

    .line 73
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v15, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 86
    invoke-virtual {v15, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    .line 87
    const/4 v2, 0x1

    const-string v3, "channel-count"

    const/4 v4, 0x1

    invoke-static {v5, v3, v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 88
    const-string v2, "sample-rate"

    const v3, 0xac44

    invoke-static {v5, v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    .line 90
    const-string v2, "mime"

    invoke-virtual {v5, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    .line 92
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 93
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 95
    new-instance v16, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;-><init>(I)V

    .line 96
    new-instance v17, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 97
    const/4 v9, 0x0

    .line 98
    const/4 v12, 0x0

    move v13, v3

    move v14, v4

    .line 100
    :cond_2
    :goto_3
    if-nez v12, :cond_a

    .line 101
    if-nez v9, :cond_4

    .line 102
    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 103
    if-ltz v3, :cond_4

    .line 104
    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 105
    if-nez v4, :cond_3

    .line 106
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v4, v4, v3

    .line 108
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 109
    if-gez v5, :cond_5

    .line 110
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 111
    const/4 v3, 0x1

    move v9, v3

    .line 119
    :cond_4
    :goto_4
    const-wide/16 v4, 0x2710

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v18

    .line 120
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_2

    const/4 v3, -0x3

    move/from16 v0, v18

    if-eq v0, v3, :cond_2

    .line 124
    const/4 v3, -0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_6

    .line 125
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 126
    const/4 v4, 0x1

    const-string v5, "channel-count"

    .line 127
    invoke-static {v3, v5, v14}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v5

    .line 126
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 128
    const-string v5, "sample-rate"

    invoke-static {v3, v5, v13}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    .line 129
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->setSampleRate(I)V

    move v13, v3

    move v14, v4

    .line 130
    goto :goto_3

    .line 113
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 114
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_4

    .line 132
    :cond_6
    if-ltz v18, :cond_b

    .line 133
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 134
    if-nez v3, :cond_7

    .line 135
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    aget-object v3, v3, v18

    .line 137
    :cond_7
    move-object/from16 v0, v17

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v4, :cond_9

    if-eqz v3, :cond_9

    .line 138
    move-object/from16 v0, v17

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    move-object/from16 v0, v17

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 141
    mul-int/lit8 v20, v14, 0x2

    .line 142
    const-wide/16 v6, 0x0

    .line 143
    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    move/from16 v0, v20

    if-lt v3, v0, :cond_9

    .line 144
    const/4 v4, 0x0

    .line 145
    const/4 v3, 0x0

    move v8, v4

    :goto_6
    if-ge v3, v14, :cond_8

    .line 146
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    add-int/2addr v4, v8

    .line 145
    add-int/lit8 v3, v3, 0x1

    move v8, v4

    goto :goto_6

    .line 148
    :cond_8
    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    div-int/2addr v8, v14

    move-object/from16 v3, v16

    invoke-virtual/range {v3 .. v8}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->addFrame(JJI)V

    move-wide v6, v10

    .line 149
    goto :goto_5

    .line 151
    :cond_9
    const/4 v3, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 152
    move-object/from16 v0, v17

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_b

    .line 153
    const/4 v3, 0x1

    :goto_7
    move v12, v3

    .line 156
    goto/16 :goto_3

    .line 158
    :cond_a
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 159
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 160
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->release()V

    .line 161
    invoke-virtual/range {v16 .. v16}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->finish()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v2

    goto/16 :goto_2

    :cond_b
    move v3, v12

    goto :goto_7

    :cond_c
    move v2, v3

    goto/16 :goto_1
.end method

.method private static readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 365
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return p2

    .line 369
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method dispatchEnded()V
    .locals 2

    .prologue
    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 514
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 520
    :cond_1
    return-void
.end method

.method dispatchError()V
    .locals 2

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 524
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 530
    :cond_1
    return-void
.end method

.method dispatchLevel(I)V
    .locals 7

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 395
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    if-gez p1, :cond_4

    .line 403
    const/4 v0, 0x0

    .line 405
    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v1, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-lt v0, v1, :cond_2

    .line 406
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    add-int/lit8 v0, v0, -0x1

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->loudRms:[F

    aget v1, v1, v0

    float-to-double v2, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-wide v4, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->peakRms:D

    .line 410
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSensitivity()I

    move-result v1

    .line 409
    invoke-static {v2, v3, v4, v5, v1}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->rmsToPercent(DDI)I

    move-result v1

    .line 411
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v2, v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->rhythm:[F

    aget v2, v2, v0

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 412
    iget-object v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    iget-object v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v4, v4, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->tone:[F

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v4, v4, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->tone:[F

    aget v0, v4, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_2
    invoke-interface {v3, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onTone(I)V

    .line 413
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->mixLevels(II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    goto :goto_0

    .line 412
    :cond_3
    const/16 v0, 0x32

    goto :goto_2

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method public getDurationMs()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 448
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 453
    if-ltz v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 454
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 460
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 466
    :goto_0
    return v0

    .line 464
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public pausePlayback()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 534
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 546
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 549
    :goto_1
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 551
    :cond_2
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 552
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 553
    return-void

    .line 547
    :catch_0
    move-exception v0

    goto :goto_1

    .line 543
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method resolveEnvelopeIndex(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 419
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v1, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-nez v1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlayerLeadMs()I

    move-result v1

    add-int/2addr v1, p1

    .line 425
    if-gez v1, :cond_2

    .line 428
    :goto_1
    div-int/lit8 v0, v0, 0x14

    .line 429
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v1, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-lt v0, v1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method resolvePlaybackPositionMs()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 436
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 441
    if-ltz v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public resumePlayback()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 475
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->getDurationMs()I

    move-result v0

    .line 477
    if-gez p1, :cond_2

    .line 478
    const/4 v1, 0x0

    .line 480
    :goto_1
    if-lez v0, :cond_1

    if-le v1, v0, :cond_1

    .line 483
    :goto_2
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v1, p1

    goto :goto_1
.end method

.method public startPlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 378
    iput-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 379
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 380
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-nez v0, :cond_1

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "empty envelope"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 384
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 385
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 387
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 388
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 390
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 391
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method
