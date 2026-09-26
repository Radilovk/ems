.class public final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;
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
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    return p0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    return-object p0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static buildEnvelope(Landroid/content/Context;Landroid/net/Uri;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 80
    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 81
    nop

    .line 82
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    const-string v5, "mime"

    const/4 v6, -0x1

    if-ge v3, v4, :cond_30

    .line 83
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 84
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    if-eqz v4, :cond_2d

    const-string v7, "audio/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 86
    nop

    .line 87
    goto :goto_31

    .line 82
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_30
    const/4 v3, -0x1

    .line 90
    :goto_31
    if-gez v3, :cond_37

    .line 91
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 92
    return-object v1

    .line 94
    :cond_37
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 95
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 96
    const-string v4, "channel-count"

    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 97
    const v9, 0xac44

    const-string v10, "sample-rate"

    invoke-static {v3, v10, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v9

    .line 99
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    .line 101
    invoke-virtual {v5, v3, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 102
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 104
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;

    invoke-direct {v1, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;-><init>(I)V

    .line 105
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 106
    nop

    .line 107
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 109
    :goto_6f
    if-nez v18, :cond_169

    .line 110
    const-wide/16 v14, 0x2710

    if-nez v19, :cond_bc

    .line 111
    invoke-virtual {v5, v14, v15}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v12

    .line 112
    if-ltz v12, :cond_b8

    .line 113
    invoke-virtual {v5, v12}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 114
    if-nez v11, :cond_87

    .line 115
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    aget-object v11, v11, v12

    .line 117
    :cond_87
    invoke-virtual {v0, v11, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v16

    .line 118
    if-gez v16, :cond_a2

    .line 119
    const/4 v13, 0x0

    const/16 v16, 0x0

    const-wide/16 v19, 0x0

    const/16 v17, 0x4

    move-object v11, v5

    move/from16 p1, v8

    move-wide v7, v14

    move/from16 v14, v16

    move-wide/from16 v15, v19

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 120
    const/16 v19, 0x1

    goto :goto_bf

    .line 122
    :cond_a2
    move/from16 p1, v8

    move-wide v7, v14

    const/4 v13, 0x0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v20

    const/16 v17, 0x0

    move-object v11, v5

    move/from16 v14, v16

    move-wide/from16 v15, v20

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 123
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_bf

    .line 112
    :cond_b8
    move/from16 p1, v8

    move-wide v7, v14

    goto :goto_bf

    .line 110
    :cond_bc
    move/from16 p1, v8

    move-wide v7, v14

    .line 128
    :goto_bf
    invoke-virtual {v5, v3, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    .line 129
    if-eq v7, v6, :cond_162

    const/4 v8, -0x3

    if-ne v7, v8, :cond_ce

    .line 131
    move/from16 v8, p1

    const/16 v25, 0x1

    goto/16 :goto_166

    .line 133
    :cond_ce
    const/4 v8, -0x2

    if-ne v7, v8, :cond_ea

    .line 134
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    .line 135
    nop

    .line 136
    move/from16 v8, p1

    invoke-static {v7, v4, v8}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v8

    .line 135
    const/4 v14, 0x1

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 137
    invoke-static {v7, v10, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v9

    .line 138
    invoke-virtual {v1, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->setSampleRate(I)V

    .line 139
    const/4 v7, 0x1

    goto :goto_6f

    .line 141
    :cond_ea
    move/from16 v8, p1

    const/4 v14, 0x1

    if-ltz v7, :cond_15d

    .line 142
    invoke-virtual {v5, v7}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 143
    if-nez v11, :cond_fb

    .line 144
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    aget-object v11, v11, v7

    .line 146
    :cond_fb
    iget v12, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v12, :cond_14f

    if-eqz v11, :cond_14f

    .line 147
    iget v12, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    iget v12, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v13, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 149
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 150
    mul-int/lit8 v15, v8, 0x2

    .line 151
    const-wide/16 v11, 0x0

    move-wide/from16 v20, v11

    .line 152
    :goto_11e
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-lt v11, v15, :cond_14c

    .line 153
    nop

    .line 154
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_127
    if-ge v11, v8, :cond_131

    .line 155
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    add-int/2addr v12, v13

    .line 154
    add-int/lit8 v11, v11, 0x1

    goto :goto_127

    .line 157
    :cond_131
    move/from16 p1, v15

    iget-wide v14, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v22, 0x1

    add-long v22, v20, v22

    div-int v16, v12, v8

    move-object v11, v1

    move-wide v12, v14

    move/from16 v24, p1

    const/16 v25, 0x1

    move-wide/from16 v14, v20

    invoke-virtual/range {v11 .. v16}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->addFrame(JJI)V

    .line 158
    move-wide/from16 v20, v22

    move/from16 v15, v24

    const/4 v14, 0x1

    goto :goto_11e

    .line 152
    :cond_14c
    const/16 v25, 0x1

    goto :goto_151

    .line 146
    :cond_14f
    const/16 v25, 0x1

    .line 160
    :goto_151
    invoke-virtual {v5, v7, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 161
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_15f

    .line 162
    const/16 v18, 0x1

    goto :goto_15f

    .line 141
    :cond_15d
    const/16 v25, 0x1

    .line 165
    :cond_15f
    :goto_15f
    const/4 v7, 0x1

    goto/16 :goto_6f

    .line 129
    :cond_162
    move/from16 v8, p1

    const/16 v25, 0x1

    .line 109
    :goto_166
    const/4 v7, 0x1

    goto/16 :goto_6f

    .line 167
    :cond_169
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    .line 168
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 169
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 170
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->finish()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v0

    return-object v0
.end method

.method private static readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 4

    .line 405
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 409
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_e

    return p0

    .line 410
    :catchall_e
    move-exception p0

    .line 411
    return p2

    .line 406
    :cond_10
    :goto_10
    return p2
.end method


# virtual methods
.method dispatchEnded()V
    .registers 3

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 556
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 557
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 560
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 562
    :cond_13
    return-void
.end method

.method dispatchError()V
    .registers 3

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 566
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 567
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 570
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 572
    :cond_13
    return-void
.end method

.method dispatchLevel(I)V
    .registers 7

    .line 435
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_73

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-nez v1, :cond_11

    goto :goto_73

    .line 439
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_18

    .line 440
    return-void

    .line 442
    :cond_18
    if-gez p1, :cond_1b

    .line 443
    const/4 p1, 0x0

    .line 445
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-lt p1, v0, :cond_27

    .line 446
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget p1, p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    add-int/lit8 p1, p1, -0x1

    .line 449
    :cond_27
    mul-int/lit8 v0, p1, 0x14

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->followAutoTune(I)V

    .line 451
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->loudRms:[F

    aget v0, v0, p1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-wide v2, v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->peakRms:D

    .line 452
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSensitivity()I

    move-result v4

    .line 451
    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->rmsToPercent(DDI)I

    move-result v0

    .line 453
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->rhythm:[F

    aget v1, v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 454
    iget-object v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    iget-object v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v4, v4, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->tone:[F

    if-eqz v4, :cond_62

    iget-object v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v4, v4, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->tone:[F

    aget p1, v4, p1

    mul-float p1, p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_64

    :cond_62
    const/16 p1, 0x32

    :goto_64
    invoke-interface {v3, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onTone(I)V

    .line 455
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->mixLevels(II)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_70
    .catchall {:try_start_11 .. :try_end_70} :catchall_71

    .line 457
    goto :goto_72

    .line 456
    :catchall_71
    move-exception p1

    .line 458
    :goto_72
    return-void

    .line 436
    :cond_73
    :goto_73
    return-void
.end method

.method public getDurationMs()I
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 491
    return v1

    .line 494
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    .line 495
    if-gez v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1

    .line 496
    :catchall_f
    move-exception v0

    .line 497
    return v1
.end method

.method public isPlaying()Z
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 503
    return v1

    .line 506
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return v0

    .line 507
    :catchall_b
    move-exception v0

    .line 508
    return v1
.end method

.method public pausePlayback()V
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 532
    return-void

    .line 535
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 536
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    .line 539
    :cond_10
    goto :goto_12

    .line 538
    :catchall_11
    move-exception v0

    .line 540
    :goto_12
    return-void
.end method

.method public release()V
    .registers 4

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 576
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 577
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 578
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 580
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    .line 582
    :try_start_13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 583
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    .line 586
    :cond_1e
    goto :goto_20

    .line 585
    :catchall_1f
    move-exception v0

    .line 588
    :goto_20
    :try_start_20
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    .line 590
    goto :goto_27

    .line 589
    :catchall_26
    move-exception v0

    .line 591
    :goto_27
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 593
    :cond_29
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 594
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 595
    return-void
.end method

.method resolveEnvelopeIndex(I)I
    .registers 4

    .line 461
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-nez v0, :cond_a

    goto :goto_23

    .line 466
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlayerLeadMs()I

    move-result v0

    add-int/2addr p1, v0

    .line 467
    if-gez p1, :cond_12

    .line 468
    goto :goto_13

    .line 467
    :cond_12
    move v1, p1

    .line 470
    :goto_13
    div-int/lit8 v1, v1, 0x14

    .line 471
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget p1, p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-lt v1, p1, :cond_22

    .line 472
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget p1, p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 474
    :cond_22
    return v1

    .line 462
    :cond_23
    :goto_23
    return v1
.end method

.method resolvePlaybackPositionMs()I
    .registers 3

    .line 478
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 479
    return v1

    .line 482
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    .line 483
    if-gez v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1

    .line 484
    :catchall_f
    move-exception v0

    .line 485
    return v1
.end method

.method public resumePlayback()V
    .registers 2

    .line 543
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 544
    return-void

    .line 547
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_10

    .line 548
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    .line 551
    :cond_10
    goto :goto_12

    .line 550
    :catchall_11
    move-exception v0

    .line 552
    :goto_12
    return-void
.end method

.method public seekTo(I)V
    .registers 3

    .line 513
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 514
    return-void

    .line 517
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->getDurationMs()I

    move-result v0

    .line 518
    nop

    .line 519
    if-gez p1, :cond_d

    .line 520
    const/4 p1, 0x0

    .line 522
    :cond_d
    if-lez v0, :cond_12

    if-le p1, v0, :cond_12

    .line 523
    goto :goto_13

    .line 525
    :cond_12
    move v0, p1

    :goto_13
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    .line 527
    goto :goto_1a

    .line 526
    :catchall_19
    move-exception p1

    .line 528
    :goto_1a
    return-void
.end method

.method public startPlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 418
    iput-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 419
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 420
    if-eqz p3, :cond_45

    iget p3, p3, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-eqz p3, :cond_45

    .line 423
    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 424
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 425
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 426
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 427
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 428
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 429
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 430
    new-instance p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 431
    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    return-void

    .line 421
    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "empty envelope"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
