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
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    return v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildEnvelope(Landroid/content/Context;Landroid/net/Uri;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v15, Landroid/media/MediaExtractor;

    invoke-direct {v15}, Landroid/media/MediaExtractor;-><init>()V

    .line 63
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 64
    const/4 v3, -0x1

    .line 65
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-ge v2, v4, :cond_15d

    .line 66
    invoke-virtual {v15, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 67
    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    if-eqz v4, :cond_30

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 73
    :goto_29
    if-gez v2, :cond_33

    .line 74
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->release()V

    .line 75
    const/4 v2, 0x0

    .line 153
    :goto_2f
    return-object v2

    .line 65
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 77
    :cond_33
    invoke-virtual {v15, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 78
    invoke-virtual {v15, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    .line 79
    const/4 v2, 0x1

    const-string v3, "channel-count"

    const/4 v4, 0x1

    invoke-static {v5, v3, v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 80
    const-string v2, "sample-rate"

    const v3, 0xac44

    invoke-static {v5, v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    .line 82
    const-string v2, "mime"

    invoke-virtual {v5, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    .line 84
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 85
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 87
    new-instance v16, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;-><init>(I)V

    .line 88
    new-instance v17, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 89
    const/4 v9, 0x0

    .line 90
    const/4 v12, 0x0

    move v13, v3

    move v14, v4

    .line 92
    :cond_72
    :goto_72
    if-nez v12, :cond_14c

    .line 93
    if-nez v9, :cond_9b

    .line 94
    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 95
    if-ltz v3, :cond_9b

    .line 96
    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 97
    if-nez v4, :cond_8a

    .line 98
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v4, v4, v3

    .line 100
    :cond_8a
    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 101
    if-gez v5, :cond_cf

    .line 102
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 103
    const/4 v3, 0x1

    move v9, v3

    .line 111
    :cond_9b
    :goto_9b
    const-wide/16 v4, 0x2710

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v18

    .line 112
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_72

    const/4 v3, -0x3

    move/from16 v0, v18

    if-eq v0, v3, :cond_72

    .line 116
    const/4 v3, -0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_dc

    .line 117
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 118
    const/4 v4, 0x1

    const-string v5, "channel-count"

    .line 119
    invoke-static {v3, v5, v14}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v5

    .line 118
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 120
    const-string v5, "sample-rate"

    invoke-static {v3, v5, v13}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    .line 121
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->setSampleRate(I)V

    move v13, v3

    move v14, v4

    .line 122
    goto :goto_72

    .line 105
    :cond_cf
    const/4 v4, 0x0

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 106
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_9b

    .line 124
    :cond_dc
    if-ltz v18, :cond_15b

    .line 125
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 126
    if-nez v3, :cond_ec

    .line 127
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    aget-object v3, v3, v18

    .line 129
    :cond_ec
    move-object/from16 v0, v17

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v4, :cond_13a

    if-eqz v3, :cond_13a

    .line 130
    move-object/from16 v0, v17

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    move-object/from16 v0, v17

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 132
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 133
    mul-int/lit8 v20, v14, 0x2

    .line 134
    const-wide/16 v6, 0x0

    .line 135
    :goto_115
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    move/from16 v0, v20

    if-lt v3, v0, :cond_13a

    .line 136
    const/4 v4, 0x0

    .line 137
    const/4 v3, 0x0

    move v8, v4

    :goto_120
    if-ge v3, v14, :cond_12b

    .line 138
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    add-int/2addr v4, v8

    .line 137
    add-int/lit8 v3, v3, 0x1

    move v8, v4

    goto :goto_120

    .line 140
    :cond_12b
    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    div-int/2addr v8, v14

    move-object/from16 v3, v16

    invoke-virtual/range {v3 .. v8}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->addFrame(JJI)V

    move-wide v6, v10

    .line 141
    goto :goto_115

    .line 143
    :cond_13a
    const/4 v3, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 144
    move-object/from16 v0, v17

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_15b

    .line 145
    const/4 v3, 0x1

    :goto_149
    move v12, v3

    .line 148
    goto/16 :goto_72

    .line 150
    :cond_14c
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 151
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 152
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->release()V

    .line 153
    invoke-virtual/range {v16 .. v16}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->finish()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v2

    goto/16 :goto_2f

    :cond_15b
    move v3, v12

    goto :goto_149

    :cond_15d
    move v2, v3

    goto/16 :goto_29
.end method

.method private static readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 293
    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 299
    :cond_8
    :goto_8
    return p2

    .line 297
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_e

    move-result p2

    goto :goto_8

    .line 298
    :catch_e
    move-exception v0

    goto :goto_8
.end method


# virtual methods
.method dispatchEnded()V
    .registers 3

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 441
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_e

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 444
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_17

    .line 445
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 447
    :cond_17
    return-void
.end method

.method dispatchError()V
    .registers 3

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 451
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_e

    .line 452
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 454
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_17

    .line 455
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 457
    :cond_17
    return-void
.end method

.method dispatchLevel(I)V
    .registers 8

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-nez v0, :cond_11

    .line 343
    :cond_10
    :goto_10
    return-void

    .line 327
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 330
    if-gez p1, :cond_54

    .line 331
    const/4 v0, 0x0

    .line 333
    :goto_1c
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v1, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-lt v0, v1, :cond_28

    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    add-int/lit8 v0, v0, -0x1

    .line 337
    :cond_28
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->loudRms:[F

    aget v1, v1, v0

    float-to-double v2, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-wide v4, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->peakRms:D

    .line 338
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSensitivity()I

    move-result v1

    .line 337
    invoke-static {v2, v3, v4, v5, v1}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->rmsToPercent(DDI)I

    move-result v1

    .line 339
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v2, v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->rhythm:[F

    aget v0, v2, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 340
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->mixLevels(II)I

    move-result v0

    invoke-interface {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_51} :catch_52

    goto :goto_10

    .line 341
    :catch_52
    move-exception v0

    goto :goto_10

    :cond_54
    move v0, p1

    goto :goto_1c
.end method

.method public getDurationMs()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 375
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_6

    .line 382
    :cond_5
    :goto_5
    return v0

    .line 379
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_10

    move-result v1

    .line 380
    if-ltz v1, :cond_5

    move v0, v1

    goto :goto_5

    .line 381
    :catch_10
    move-exception v1

    goto :goto_5
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 387
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_6

    .line 393
    :goto_5
    return v0

    .line 391
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_5

    .line 392
    :catch_d
    move-exception v1

    goto :goto_5
.end method

.method public pausePlayback()V
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 425
    :cond_4
    :goto_4
    return-void

    .line 420
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_4

    .line 423
    :catch_13
    move-exception v0

    goto :goto_4
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 461
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_11

    .line 462
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 463
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 465
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    .line 467
    :try_start_15
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 468
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_22} :catch_30

    .line 473
    :cond_22
    :goto_22
    :try_start_22
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_27} :catch_2e

    .line 476
    :goto_27
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 478
    :cond_29
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 479
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 480
    return-void

    .line 474
    :catch_2e
    move-exception v0

    goto :goto_27

    .line 470
    :catch_30
    move-exception v0

    goto :goto_22
.end method

.method resolveEnvelopeIndex(I)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 346
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v1, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-nez v1, :cond_c

    .line 359
    :cond_b
    :goto_b
    return v0

    .line 351
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlayerLeadMs()I

    move-result v1

    add-int/2addr v1, p1

    .line 352
    if-gez v1, :cond_22

    .line 355
    :goto_13
    div-int/lit8 v0, v0, 0x14

    .line 356
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v1, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-lt v0, v1, :cond_b

    .line 357
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_22
    move v0, v1

    goto :goto_13
.end method

.method resolvePlaybackPositionMs()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 363
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_6

    .line 370
    :cond_5
    :goto_5
    return v0

    .line 367
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_10

    move-result v1

    .line 368
    if-ltz v1, :cond_5

    move v0, v1

    goto :goto_5

    .line 369
    :catch_10
    move-exception v1

    goto :goto_5
.end method

.method public resumePlayback()V
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 437
    :cond_4
    :goto_4
    return-void

    .line 432
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    .line 433
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_4

    .line 435
    :catch_13
    move-exception v0

    goto :goto_4
.end method

.method public seekTo(I)V
    .registers 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 413
    :goto_4
    return-void

    .line 402
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->getDurationMs()I

    move-result v0

    .line 404
    if-gez p1, :cond_1a

    .line 405
    const/4 v1, 0x0

    .line 407
    :goto_c
    if-lez v0, :cond_18

    if-le v1, v0, :cond_18

    .line 410
    :goto_10
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_4

    .line 411
    :catch_16
    move-exception v0

    goto :goto_4

    :cond_18
    move v0, v1

    goto :goto_10

    :cond_1a
    move v1, p1

    goto :goto_c
.end method

.method public startPlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 306
    iput-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 307
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-nez v0, :cond_19

    .line 309
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "empty envelope"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_19
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 313
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 314
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 318
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 319
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method
