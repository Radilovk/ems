.class public final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PreparedHandler;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;
    }
.end annotation


# static fields
.field private static final SYNC_POLL_MS:I = 0x10

.field private static final WINDOW_MS:I = 0x14


# instance fields
.field private callbacksOpen:Z

.field private envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

.field private player:Landroid/media/MediaPlayer;

.field private prepareCallback:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;

.field private prepared:Z

.field private started:Z

.field private syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

.field private volatile tracking:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
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

    .line 91
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 92
    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 93
    nop

    .line 94
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    const-string v5, "mime"

    const/4 v6, -0x1

    if-ge v3, v4, :cond_30

    .line 95
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 96
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    if-eqz v4, :cond_2d

    const-string v7, "audio/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 98
    nop

    .line 99
    goto :goto_31

    .line 94
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_30
    const/4 v3, -0x1

    .line 102
    :goto_31
    if-gez v3, :cond_37

    .line 103
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 104
    return-object v1

    .line 106
    :cond_37
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 107
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 108
    const-string v4, "channel-count"

    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 109
    const v9, 0xac44

    const-string v10, "sample-rate"

    invoke-static {v3, v10, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v9

    .line 111
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    .line 113
    invoke-virtual {v5, v3, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 114
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 116
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;

    invoke-direct {v1, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;-><init>(I)V

    .line 117
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 118
    nop

    .line 119
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 121
    :goto_6f
    if-nez v18, :cond_169

    .line 122
    const-wide/16 v14, 0x2710

    if-nez v19, :cond_bc

    .line 123
    invoke-virtual {v5, v14, v15}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v12

    .line 124
    if-ltz v12, :cond_b8

    .line 125
    invoke-virtual {v5, v12}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 126
    if-nez v11, :cond_87

    .line 127
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    aget-object v11, v11, v12

    .line 129
    :cond_87
    invoke-virtual {v0, v11, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v16

    .line 130
    if-gez v16, :cond_a2

    .line 131
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

    .line 132
    const/16 v19, 0x1

    goto :goto_bf

    .line 134
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

    .line 135
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_bf

    .line 124
    :cond_b8
    move/from16 p1, v8

    move-wide v7, v14

    goto :goto_bf

    .line 122
    :cond_bc
    move/from16 p1, v8

    move-wide v7, v14

    .line 140
    :goto_bf
    invoke-virtual {v5, v3, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    .line 141
    if-eq v7, v6, :cond_162

    const/4 v8, -0x3

    if-ne v7, v8, :cond_ce

    .line 143
    move/from16 v8, p1

    const/16 v25, 0x1

    goto/16 :goto_166

    .line 145
    :cond_ce
    const/4 v8, -0x2

    if-ne v7, v8, :cond_ea

    .line 146
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    .line 147
    nop

    .line 148
    move/from16 v8, p1

    invoke-static {v7, v4, v8}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v8

    .line 147
    const/4 v14, 0x1

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 149
    invoke-static {v7, v10, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v9

    .line 150
    invoke-virtual {v1, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->setSampleRate(I)V

    .line 151
    const/4 v7, 0x1

    goto :goto_6f

    .line 153
    :cond_ea
    move/from16 v8, p1

    const/4 v14, 0x1

    if-ltz v7, :cond_15d

    .line 154
    invoke-virtual {v5, v7}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 155
    if-nez v11, :cond_fb

    .line 156
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    aget-object v11, v11, v7

    .line 158
    :cond_fb
    iget v12, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v12, :cond_14f

    if-eqz v11, :cond_14f

    .line 159
    iget v12, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    iget v12, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v13, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 161
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 162
    mul-int/lit8 v15, v8, 0x2

    .line 163
    const-wide/16 v11, 0x0

    move-wide/from16 v20, v11

    .line 164
    :goto_11e
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-lt v11, v15, :cond_14c

    .line 165
    nop

    .line 166
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_127
    if-ge v11, v8, :cond_131

    .line 167
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    add-int/2addr v12, v13

    .line 166
    add-int/lit8 v11, v11, 0x1

    goto :goto_127

    .line 169
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

    .line 170
    move-wide/from16 v20, v22

    move/from16 v15, v24

    const/4 v14, 0x1

    goto :goto_11e

    .line 164
    :cond_14c
    const/16 v25, 0x1

    goto :goto_151

    .line 158
    :cond_14f
    const/16 v25, 0x1

    .line 172
    :goto_151
    invoke-virtual {v5, v7, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 173
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_15f

    .line 174
    const/16 v18, 0x1

    goto :goto_15f

    .line 153
    :cond_15d
    const/16 v25, 0x1

    .line 177
    :cond_15f
    :goto_15f
    const/4 v7, 0x1

    goto/16 :goto_6f

    .line 141
    :cond_162
    move/from16 v8, p1

    const/16 v25, 0x1

    .line 121
    :goto_166
    const/4 v7, 0x1

    goto/16 :goto_6f

    .line 179
    :cond_169
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    .line 180
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 181
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 182
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->finish()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v0

    return-object v0
.end method

.method private openPlayer(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->callbacksOpen:Z

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->started:Z

    .line 471
    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->prepared:Z

    .line 472
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 473
    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    if-eqz p3, :cond_36

    iget p3, p3, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-eqz p3, :cond_36

    .line 476
    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 477
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 478
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 479
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 480
    return-void

    .line 474
    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "empty envelope"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 4

    .line 417
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 421
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_e

    return p0

    .line 422
    :catchall_e
    move-exception p0

    .line 423
    return p2

    .line 418
    :cond_10
    :goto_10
    return p2
.end method


# virtual methods
.method dispatchEnded()V
    .registers 3

    .line 615
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->callbacksOpen:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->started:Z

    if-nez v0, :cond_9

    goto :goto_1d

    .line 618
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 619
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_15

    .line 620
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 622
    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_1c

    .line 623
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 625
    :cond_1c
    return-void

    .line 616
    :cond_1d
    :goto_1d
    return-void
.end method

.method dispatchError()V
    .registers 3

    .line 628
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->callbacksOpen:Z

    if-nez v0, :cond_5

    .line 629
    return-void

    .line 631
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 632
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_11

    .line 633
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 635
    :cond_11
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->started:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->prepareCallback:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;

    if-eqz v0, :cond_21

    .line 636
    nop

    .line 637
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->prepareCallback:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;

    .line 638
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;->onPrepareFailed()V

    .line 639
    return-void

    .line 641
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_28

    .line 642
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 644
    :cond_28
    return-void
.end method

.method dispatchLevel(I)V
    .registers 7

    .line 483
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_73

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-nez v1, :cond_11

    goto :goto_73

    .line 487
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_18

    .line 488
    return-void

    .line 490
    :cond_18
    if-gez p1, :cond_1b

    .line 491
    const/4 p1, 0x0

    .line 493
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-lt p1, v0, :cond_27

    .line 494
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget p1, p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    add-int/lit8 p1, p1, -0x1

    .line 497
    :cond_27
    mul-int/lit8 v0, p1, 0x14

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->followAutoTune(I)V

    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->loudRms:[F

    aget v0, v0, p1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-wide v2, v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->peakRms:D

    .line 500
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSensitivity()I

    move-result v4

    .line 499
    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->rmsToPercent(DDI)I

    move-result v0

    .line 501
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->rhythm:[F

    aget v1, v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 502
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

    .line 503
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->mixLevels(II)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_70
    .catchall {:try_start_11 .. :try_end_70} :catchall_71

    .line 505
    goto :goto_72

    .line 504
    :catchall_71
    move-exception p1

    .line 506
    :goto_72
    return-void

    .line 484
    :cond_73
    :goto_73
    return-void
.end method

.method dispatchPrepared()V
    .registers 3

    .line 603
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->callbacksOpen:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->started:Z

    if-eqz v0, :cond_9

    goto :goto_17

    .line 606
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->prepared:Z

    .line 607
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->prepareCallback:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;

    .line 608
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->prepareCallback:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;

    .line 609
    if-eqz v0, :cond_16

    .line 610
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;->onPrepared()V

    .line 612
    :cond_16
    return-void

    .line 604
    :cond_17
    :goto_17
    return-void
.end method

.method public getDurationMs()I
    .registers 3

    .line 538
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 539
    return v1

    .line 542
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    .line 543
    if-gez v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1

    .line 544
    :catchall_f
    move-exception v0

    .line 545
    return v1
.end method

.method public isPlaying()Z
    .registers 3

    .line 550
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 551
    return v1

    .line 554
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return v0

    .line 555
    :catchall_b
    move-exception v0

    .line 556
    return v1
.end method

.method public pausePlayback()V
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 580
    return-void

    .line 583
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 584
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    .line 587
    :cond_10
    goto :goto_12

    .line 586
    :catchall_11
    move-exception v0

    .line 588
    :goto_12
    return-void
.end method

.method public preparePlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 445
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->openPlayer(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    .line 446
    iput-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->prepareCallback:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;

    .line 447
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PreparedHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PreparedHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 448
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 449
    return-void
.end method

.method public release()V
    .registers 4

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->callbacksOpen:Z

    .line 648
    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 649
    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->prepared:Z

    .line 650
    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->started:Z

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->prepareCallback:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;

    .line 652
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v1, :cond_17

    .line 653
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 654
    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 656
    :cond_17
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_31

    .line 658
    :try_start_1b
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 659
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_27

    .line 662
    :cond_26
    goto :goto_28

    .line 661
    :catchall_27
    move-exception v1

    .line 664
    :goto_28
    :try_start_28
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_2e

    .line 666
    goto :goto_2f

    .line 665
    :catchall_2e
    move-exception v1

    .line 667
    :goto_2f
    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 669
    :cond_31
    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 670
    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 671
    return-void
.end method

.method resolveEnvelopeIndex(I)I
    .registers 4

    .line 509
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-nez v0, :cond_a

    goto :goto_23

    .line 514
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlayerLeadMs()I

    move-result v0

    add-int/2addr p1, v0

    .line 515
    if-gez p1, :cond_12

    .line 516
    goto :goto_13

    .line 515
    :cond_12
    move v1, p1

    .line 518
    :goto_13
    div-int/lit8 v1, v1, 0x14

    .line 519
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget p1, p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-lt v1, p1, :cond_22

    .line 520
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget p1, p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 522
    :cond_22
    return v1

    .line 510
    :cond_23
    :goto_23
    return v1
.end method

.method resolvePlaybackPositionMs()I
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 527
    return v1

    .line 530
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    .line 531
    if-gez v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1

    .line 532
    :catchall_f
    move-exception v0

    .line 533
    return v1
.end method

.method public resumePlayback()V
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 592
    return-void

    .line 595
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_10

    .line 596
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    .line 599
    :cond_10
    goto :goto_12

    .line 598
    :catchall_11
    move-exception v0

    .line 600
    :goto_12
    return-void
.end method

.method public seekTo(I)V
    .registers 3

    .line 561
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 562
    return-void

    .line 565
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->getDurationMs()I

    move-result v0

    .line 566
    nop

    .line 567
    if-gez p1, :cond_d

    .line 568
    const/4 p1, 0x0

    .line 570
    :cond_d
    if-lez v0, :cond_12

    if-le p1, v0, :cond_12

    .line 571
    goto :goto_13

    .line 573
    :cond_12
    move v0, p1

    :goto_13
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    .line 575
    goto :goto_1a

    .line 574
    :catchall_19
    move-exception p1

    .line 576
    :goto_1a
    return-void
.end method

.method public setListener(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 465
    return-void
.end method

.method public startPlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 429
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->openPlayer(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    .line 430
    iput-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 431
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 432
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->started:Z

    .line 433
    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    .line 434
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 435
    new-instance p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 436
    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    return-void
.end method

.method public startPrepared()V
    .registers 3

    .line 453
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->prepared:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_21

    iget-boolean v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->callbacksOpen:Z

    if-eqz v1, :cond_21

    .line 456
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->started:Z

    .line 458
    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 459
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 460
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    return-void

    .line 454
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
