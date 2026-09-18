.class public final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$WaveformCapture;
    }
.end annotation


# static fields
.field private static final PCM_WINDOW_FRAMES:I = 0x100

.field private static final SYNC_POLL_MS:I = 0x10

.field private static final WINDOW_MS:I = 0x14


# instance fields
.field private envelope:[I

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

.field private playbackOffsetMs:I

.field private player:Landroid/media/MediaPlayer;

.field private referencePeakRms:D

.field private sensitivity:I

.field private syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

.field private volatile tracking:Z

.field private visualizer:Landroid/media/audiofx/Visualizer;

.field private volatile visualizerActive:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    .line 51
    const/16 v0, 0x14

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->sensitivity:I

    .line 52
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->referencePeakRms:D

    .line 53
    const/16 v0, 0x28

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->playbackOffsetMs:I

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

.method static synthetic access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)[I
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerActive:Z

    return p0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private attachVisualizer(Landroid/media/MediaPlayer;)Z
    .registers 6

    .line 275
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 276
    return v0

    .line 279
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result p1

    .line 280
    if-gtz p1, :cond_b

    .line 281
    return v0

    .line 283
    :cond_b
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v1

    .line 284
    const/4 v2, 0x1

    aget v1, v1, v2

    .line 285
    new-instance v3, Landroid/media/audiofx/Visualizer;

    invoke-direct {v3, p1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    .line 286
    invoke-virtual {v3, v1}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 287
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result p1

    .line 288
    if-gtz p1, :cond_22

    .line 289
    const/16 p1, 0x4e20

    .line 291
    :cond_22
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$WaveformCapture;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$WaveformCapture;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {v3, v1, p1, v2, v0}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 292
    invoke-virtual {v3, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 293
    iput-object v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizer:Landroid/media/audiofx/Visualizer;
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_30

    .line 294
    return v2

    .line 295
    :catchall_30
    move-exception p1

    .line 296
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->releaseVisualizer()V

    .line 297
    return v0
.end method

.method public static buildEnvelope(Landroid/content/Context;Landroid/net/Uri;I)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 64
    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 65
    nop

    .line 66
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    const-string v5, "mime"

    const/4 v6, -0x1

    if-ge v3, v4, :cond_30

    .line 67
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 68
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    if-eqz v4, :cond_2d

    const-string v7, "audio/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 70
    nop

    .line 71
    goto :goto_31

    .line 66
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_30
    const/4 v3, -0x1

    .line 74
    :goto_31
    if-gez v3, :cond_37

    .line 75
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 76
    return-object v1

    .line 78
    :cond_37
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 79
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 80
    const-string v4, "channel-count"

    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v4

    .line 81
    if-ge v4, v7, :cond_48

    .line 82
    const/4 v4, 0x1

    .line 84
    :cond_48
    const-string v8, "sample-rate"

    const v9, 0xac44

    invoke-static {v3, v8, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v8

    .line 85
    const/16 v10, 0x1f40

    if-ge v8, v10, :cond_56

    .line 86
    goto :goto_57

    .line 85
    :cond_56
    move v9, v8

    .line 89
    :goto_57
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v3, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 92
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 100
    nop

    .line 101
    const-wide/16 v17, 0x0

    move-wide/from16 v12, v17

    move-wide v14, v12

    move-wide/from16 v21, v14

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 103
    :goto_83
    const-wide/32 v23, 0xf4240

    if-nez v19, :cond_19f

    .line 104
    const-wide/16 v10, 0x2710

    if-nez v20, :cond_ed

    .line 105
    invoke-virtual {v5, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    .line 106
    if-ltz v7, :cond_e5

    .line 107
    invoke-virtual {v5, v7}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 108
    if-nez v16, :cond_a1

    .line 109
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16

    aget-object v16, v16, v7

    move-object/from16 v10, v16

    goto :goto_a3

    .line 108
    :cond_a1
    move-object/from16 v10, v16

    .line 111
    :goto_a3
    invoke-virtual {v0, v10, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v16

    .line 112
    if-gez v16, :cond_c9

    .line 113
    const/16 v16, 0x0

    const/16 v20, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x4

    move-object/from16 v30, v3

    const-wide/16 v2, 0x2710

    move-object v10, v5

    move v11, v7

    move-wide/from16 v31, v12

    move/from16 v12, v16

    move/from16 v13, v20

    move-wide/from16 v33, v14

    move-wide/from16 v14, v27

    move/from16 v16, v29

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 114
    const/16 v20, 0x1

    goto :goto_f4

    .line 116
    :cond_c9
    move-object/from16 v30, v3

    move-wide/from16 v31, v12

    move-wide/from16 v33, v14

    const-wide/16 v2, 0x2710

    const/4 v12, 0x0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    const/16 v25, 0x0

    move-object v10, v5

    move v11, v7

    move/from16 v13, v16

    move/from16 v16, v25

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 117
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_f4

    .line 106
    :cond_e5
    move-object/from16 v30, v3

    move-wide v2, v10

    move-wide/from16 v31, v12

    move-wide/from16 v33, v14

    goto :goto_f4

    .line 104
    :cond_ed
    move-object/from16 v30, v3

    move-wide v2, v10

    move-wide/from16 v31, v12

    move-wide/from16 v33, v14

    .line 122
    :goto_f4
    invoke-virtual {v5, v8, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 123
    if-ne v2, v6, :cond_fc

    .line 124
    goto/16 :goto_194

    .line 126
    :cond_fc
    const/4 v3, -0x2

    if-eq v2, v3, :cond_194

    const/4 v3, -0x3

    if-ne v2, v3, :cond_104

    .line 128
    goto/16 :goto_194

    .line 130
    :cond_104
    if-ltz v2, :cond_189

    .line 131
    invoke-virtual {v5, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 132
    if-nez v3, :cond_112

    .line 133
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    aget-object v3, v3, v2

    .line 135
    :cond_112
    iget v7, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v7, :cond_178

    if-eqz v3, :cond_178

    .line 136
    iget v7, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    iget v7, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v10, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v10

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 138
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 139
    mul-int/lit8 v7, v4, 0x2

    move-wide/from16 v12, v31

    move-wide/from16 v14, v33

    .line 140
    :goto_135
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lt v10, v7, :cond_17c

    .line 141
    nop

    .line 142
    move-wide/from16 v25, v17

    const/4 v10, 0x0

    :goto_13f
    if-ge v10, v4, :cond_152

    .line 143
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    .line 144
    move/from16 v27, v7

    int-to-long v6, v11

    mul-long v6, v6, v6

    add-long v25, v25, v6

    .line 142
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v27

    const/4 v6, -0x1

    goto :goto_13f

    .line 146
    :cond_152
    move/from16 v27, v7

    add-long v12, v12, v25

    .line 147
    const-wide/16 v6, 0x1

    add-long/2addr v14, v6

    .line 148
    add-long v21, v21, v6

    .line 149
    const-wide/16 v6, 0x100

    cmp-long v10, v14, v6

    if-ltz v10, :cond_174

    .line 150
    mul-long v6, v21, v23

    int-to-long v10, v9

    div-long/2addr v6, v10

    .line 151
    invoke-static {v12, v13, v14, v15}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->windowRms(JJ)D

    move-result-wide v14

    .line 152
    move-object v10, v1

    move-object/from16 v11, v30

    move-wide v12, v6

    invoke-static/range {v10 .. v15}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->writeBucket(Ljava/util/ArrayList;Ljava/util/ArrayList;JD)V

    .line 153
    nop

    .line 154
    move-wide/from16 v12, v17

    move-wide v14, v12

    .line 156
    :cond_174
    move/from16 v7, v27

    const/4 v6, -0x1

    goto :goto_135

    .line 158
    :cond_178
    move-wide/from16 v12, v31

    move-wide/from16 v14, v33

    :cond_17c
    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 159
    iget v2, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_18d

    .line 160
    const/16 v19, 0x1

    goto :goto_18d

    .line 130
    :cond_189
    move-wide/from16 v12, v31

    move-wide/from16 v14, v33

    .line 163
    :cond_18d
    :goto_18d
    move-object/from16 v3, v30

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_83

    .line 103
    :cond_194
    :goto_194
    move-object/from16 v3, v30

    move-wide/from16 v12, v31

    move-wide/from16 v14, v33

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_83

    .line 165
    :cond_19f
    move-object/from16 v30, v3

    move-wide/from16 v31, v12

    move-wide/from16 v33, v14

    cmp-long v2, v14, v17

    if-lez v2, :cond_1ba

    .line 166
    mul-long v21, v21, v23

    int-to-long v2, v9

    div-long v12, v21, v2

    .line 167
    move-wide/from16 v2, v31

    invoke-static {v2, v3, v14, v15}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->windowRms(JJ)D

    move-result-wide v14

    .line 168
    move-object v10, v1

    move-object/from16 v11, v30

    invoke-static/range {v10 .. v15}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->writeBucket(Ljava/util/ArrayList;Ljava/util/ArrayList;JD)V

    .line 171
    :cond_1ba
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    .line 172
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 173
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 175
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 176
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;-><init>([ID)V

    return-object v0

    .line 179
    :cond_1d7
    const/4 v2, 0x0

    const-wide/high16 v3, 0x4058000000000000L    # 96.0

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->percentilePeak(Ljava/util/ArrayList;D)D

    move-result-wide v3

    .line 180
    move/from16 v5, p2

    invoke-static {v1, v0, v5}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->fillPercentLevels(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 181
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 182
    nop

    :goto_1ec
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_201

    .line 183
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v2

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ec

    .line 185
    :cond_201
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;

    invoke-direct {v1, v0, v3, v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;-><init>([ID)V

    return-object v1
.end method

.method private static ptsToBucketIndex(J)I
    .registers 5

    .line 208
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 209
    move-wide p0, v0

    .line 211
    :cond_7
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    .line 212
    const-wide/16 v0, 0x14

    div-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 4

    .line 216
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 220
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_e

    return p0

    .line 221
    :catchall_e
    move-exception p0

    .line 222
    return p2

    .line 217
    :cond_10
    :goto_10
    return p2
.end method

.method private releaseVisualizer()V
    .registers 4

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerActive:Z

    .line 392
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 393
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 394
    if-nez v1, :cond_b

    .line 395
    return-void

    .line 398
    :cond_b
    :try_start_b
    invoke-virtual {v1, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 400
    goto :goto_10

    .line 399
    :catchall_f
    move-exception v0

    .line 402
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->release()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    .line 404
    goto :goto_15

    .line 403
    :catchall_14
    move-exception v0

    .line 405
    :goto_15
    return-void
.end method

.method private waveformToPercent([B)I
    .registers 7

    .line 310
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_29

    .line 313
    :cond_7
    const-wide/16 v1, 0x0

    .line 314
    nop

    :goto_a
    array-length v3, p1

    if-ge v0, v3, :cond_18

    .line 315
    aget-byte v3, p1, v0

    add-int/lit16 v3, v3, 0x80

    .line 316
    int-to-long v3, v3

    mul-long v3, v3, v3

    add-long/2addr v1, v3

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 318
    :cond_18
    long-to-double v0, v1

    array-length p1, p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 319
    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->referencePeakRms:D

    iget p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->sensitivity:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->rmsToPercent(DDI)I

    move-result p1

    return p1

    .line 311
    :cond_29
    :goto_29
    return v0
.end method

.method private static windowRms(JJ)D
    .registers 7

    .line 227
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_9

    .line 228
    const-wide/16 p0, 0x0

    return-wide p0

    .line 230
    :cond_9
    long-to-double p0, p0

    long-to-double p2, p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static writeBucket(Ljava/util/ArrayList;Ljava/util/ArrayList;JD)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;JD)V"
        }
    .end annotation

    .line 193
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->ptsToBucketIndex(J)I

    move-result p2

    .line 194
    const/4 p3, 0x0

    if-gez p2, :cond_8

    .line 195
    const/4 p2, 0x0

    .line 197
    :cond_8
    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_1f

    .line 198
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 201
    :cond_1f
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 202
    cmpl-double p0, p4, v0

    if-lez p0, :cond_34

    .line 203
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_34
    return-void
.end method


# virtual methods
.method dispatchEnded()V
    .registers 3

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 370
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->releaseVisualizer()V

    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_f

    .line 372
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 374
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_16

    .line 375
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 377
    :cond_16
    return-void
.end method

.method dispatchError()V
    .registers 3

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 381
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->releaseVisualizer()V

    .line 382
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_f

    .line 383
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_16

    .line 386
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 388
    :cond_16
    return-void
.end method

.method dispatchLevel(I)V
    .registers 4

    .line 323
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerActive:Z

    if-eqz v0, :cond_15

    goto :goto_37

    .line 327
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 328
    return-void

    .line 330
    :cond_1e
    if-gez p1, :cond_21

    .line 331
    const/4 p1, 0x0

    .line 333
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2b

    .line 334
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 336
    :cond_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_35

    .line 338
    goto :goto_36

    .line 337
    :catchall_35
    move-exception p1

    .line 339
    :goto_36
    return-void

    .line 324
    :cond_37
    :goto_37
    return-void
.end method

.method public isVisualizerActive()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerActive:Z

    return v0
.end method

.method onVisualizerWaveform([B)V
    .registers 3

    .line 302
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-nez v0, :cond_9

    goto :goto_13

    .line 305
    :cond_9
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->waveformToPercent([B)I

    move-result p1

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V

    .line 307
    return-void

    .line 303
    :cond_13
    :goto_13
    return-void
.end method

.method public release()V
    .registers 4

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 409
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->releaseVisualizer()V

    .line 410
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 411
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 414
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2c

    .line 416
    :try_start_16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 417
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_22

    .line 420
    :cond_21
    goto :goto_23

    .line 419
    :catchall_22
    move-exception v0

    .line 422
    :goto_23
    :try_start_23
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_29

    .line 424
    goto :goto_2a

    .line 423
    :catchall_29
    move-exception v0

    .line 425
    :goto_2a
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 427
    :cond_2c
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 428
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 429
    return-void
.end method

.method resolveEnvelopeIndex(I)I
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    array-length v0, v0

    if-nez v0, :cond_9

    goto :goto_1c

    .line 345
    :cond_9
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->playbackOffsetMs:I

    add-int/2addr p1, v0

    .line 346
    if-gez p1, :cond_f

    .line 347
    goto :goto_10

    .line 346
    :cond_f
    move v1, p1

    .line 349
    :goto_10
    div-int/lit8 v1, v1, 0x14

    .line 350
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, p1

    if-lt v1, v0, :cond_1b

    .line 351
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 353
    :cond_1b
    return v1

    .line 343
    :cond_1c
    :goto_1c
    return v1
.end method

.method resolvePlaybackPositionMs()I
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 358
    return v1

    .line 361
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    .line 362
    if-gez v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1

    .line 363
    :catchall_f
    move-exception v0

    .line 364
    return v1
.end method

.method public setMappingParams(ID)V
    .registers 6

    .line 234
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->sensitivity:I

    .line 235
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-lez p1, :cond_a

    .line 236
    iput-wide p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->referencePeakRms:D

    .line 238
    :cond_a
    return-void
.end method

.method public startPlayback(Landroid/content/Context;Landroid/net/Uri;[IDILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 252
    iput-object p7, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 253
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 254
    iput p6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->sensitivity:I

    .line 255
    const-wide/16 p6, 0x0

    cmpl-double p3, p4, p6

    if-lez p3, :cond_10

    goto :goto_12

    :cond_10
    const-wide/high16 p4, 0x4054000000000000L    # 80.0

    :goto_12
    iput-wide p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->referencePeakRms:D

    .line 256
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/AudioOutputLatency;->estimatePlaybackOffsetMs(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->playbackOffsetMs:I

    .line 257
    iget-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz p3, :cond_65

    array-length p3, p3

    if-eqz p3, :cond_65

    .line 260
    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 261
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 262
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 263
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 264
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 265
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 266
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 267
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->attachVisualizer(Landroid/media/MediaPlayer;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerActive:Z

    .line 268
    iget-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerActive:Z

    if-nez p1, :cond_64

    .line 269
    new-instance p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 270
    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    :cond_64
    return-void

    .line 258
    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "empty envelope"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
