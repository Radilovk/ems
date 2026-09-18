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
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PreparedHandler;,
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

.field private uriSource:Lcom/isaigu/gymapp/train/utils/MusicUriSource;

.field private visualizer:Landroid/media/audiofx/Visualizer;

.field private volatile visualizerActive:Z

.field private volatile visualizerAllowed:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    .line 55
    const/16 v0, 0x14

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->sensitivity:I

    .line 56
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->referencePeakRms:D

    .line 57
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
    .registers 8

    .line 302
    const-string v0, "player_viz"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 303
    return v1

    .line 306
    :cond_6
    :try_start_6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result p1

    .line 307
    if-gtz p1, :cond_d

    .line 308
    return v1

    .line 310
    :cond_d
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v2

    .line 311
    new-instance v3, Landroid/media/audiofx/Visualizer;

    invoke-direct {v3, p1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    .line 312
    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 313
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v2

    .line 314
    if-gtz v2, :cond_25

    .line 315
    const/16 v2, 0x4e20

    goto :goto_27

    .line 317
    :cond_25
    div-int/lit8 v2, v2, 0x2

    .line 319
    :goto_27
    new-instance v5, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$WaveformCapture;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$WaveformCapture;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 320
    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 321
    iput-object v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rate="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_6 .. :try_end_50} :catchall_51

    .line 323
    return v4

    .line 324
    :catchall_51
    move-exception p1

    .line 325
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->releaseVisualizer()V

    .line 327
    return v1
.end method

.method public static buildEnvelope(Landroid/content/Context;Landroid/net/Uri;I)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->open(Landroid/content/Context;Landroid/net/Uri;)Lcom/isaigu/gymapp/train/utils/MusicUriSource;

    move-result-object v1

    .line 66
    :try_start_4
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 67
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->setExtractorDataSource(Landroid/media/MediaExtractor;Landroid/content/Context;Landroid/net/Uri;)V

    .line 68
    nop

    .line 69
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_240

    const-string v5, "mime"

    if-ge v3, v4, :cond_32

    .line 70
    :try_start_1b
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 71
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    if-eqz v4, :cond_2f

    const-string v7, "audio/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 73
    nop

    .line 74
    goto :goto_33

    .line 69
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_32
    const/4 v3, -0x1

    .line 77
    :goto_33
    const/4 v4, 0x0

    if-gez v3, :cond_3e

    .line 78
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_240

    .line 79
    nop

    .line 192
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->close()V

    .line 79
    return-object v4

    .line 81
    :cond_3e
    :try_start_3e
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 83
    const-string v7, "channel-count"

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v7

    .line 84
    if-ge v7, v8, :cond_4f

    .line 85
    const/4 v7, 0x1

    .line 87
    :cond_4f
    const-string v9, "sample-rate"

    const v10, 0xac44

    invoke-static {v3, v9, v10}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v9

    .line 88
    const/16 v11, 0x1f40

    if-ge v9, v11, :cond_5d

    .line 89
    goto :goto_5e

    .line 88
    :cond_5d
    move v10, v9

    .line 92
    :goto_5e
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    .line 94
    invoke-virtual {v5, v3, v4, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 95
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 102
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 103
    nop

    .line 104
    const-wide/16 v18, 0x0

    move-wide/from16 v12, v18

    move-wide v14, v12

    move-wide/from16 v22, v14

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 106
    :goto_8a
    const-wide/32 v24, 0xf4240

    if-nez v20, :cond_1d1

    .line 107
    move/from16 p1, v7

    const-wide/16 v6, 0x2710

    if-nez v21, :cond_ea

    .line 108
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v11

    .line 109
    if-ltz v11, :cond_e5

    .line 110
    invoke-virtual {v5, v11}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 111
    if-nez v16, :cond_aa

    .line 112
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16

    aget-object v16, v16, v11

    move-object/from16 v8, v16

    goto :goto_ac

    .line 111
    :cond_aa
    move-object/from16 v8, v16

    .line 114
    :goto_ac
    invoke-virtual {v0, v8, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 115
    if-gez v8, :cond_cd

    .line 116
    const/4 v8, 0x0

    const/16 v16, 0x0

    const-wide/16 v26, 0x0

    const/16 v17, 0x4

    move/from16 v28, v11

    move-object v11, v5

    move-wide/from16 v29, v12

    move/from16 v12, v28

    move v13, v8

    move-wide/from16 v31, v14

    move/from16 v14, v16

    move-wide/from16 v15, v26

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 118
    const/16 v21, 0x1

    goto :goto_ee

    .line 120
    :cond_cd
    move/from16 v28, v11

    move-wide/from16 v29, v12

    move-wide/from16 v31, v14

    const/4 v13, 0x0

    .line 121
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v15

    const/16 v17, 0x0

    .line 120
    move-object v11, v5

    move/from16 v12, v28

    move v14, v8

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 122
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_ee

    .line 109
    :cond_e5
    move-wide/from16 v29, v12

    move-wide/from16 v31, v14

    goto :goto_ee

    .line 107
    :cond_ea
    move-wide/from16 v29, v12

    move-wide/from16 v31, v14

    .line 127
    :goto_ee
    invoke-virtual {v5, v9, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 128
    const/4 v7, -0x1

    if-ne v6, v7, :cond_fb

    .line 129
    move/from16 v27, p1

    move-object/from16 v26, v3

    goto/16 :goto_1c5

    .line 131
    :cond_fb
    const/4 v8, -0x2

    if-eq v6, v8, :cond_1c1

    const/4 v8, -0x3

    if-ne v6, v8, :cond_107

    .line 133
    move/from16 v27, p1

    move-object/from16 v26, v3

    goto/16 :goto_1c5

    .line 135
    :cond_107
    if-ltz v6, :cond_1b1

    .line 136
    invoke-virtual {v5, v6}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 137
    if-nez v8, :cond_115

    .line 138
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v8, v8, v6

    .line 140
    :cond_115
    iget v11, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v11, :cond_19c

    if-eqz v8, :cond_19c

    .line 141
    iget v11, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    iget v11, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v12, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v11, v12

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 143
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 144
    mul-int/lit8 v15, p1, 0x2

    move-wide/from16 v12, v29

    .line 145
    :goto_136
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-lt v11, v15, :cond_195

    .line 146
    nop

    .line 147
    move-wide/from16 v16, v18

    const/4 v11, 0x0

    :goto_140
    move/from16 v14, p1

    if-ge v11, v14, :cond_158

    .line 148
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 149
    move-object/from16 v26, v3

    int-to-long v2, v7

    mul-long v2, v2, v2

    add-long v16, v16, v2

    .line 147
    add-int/lit8 v11, v11, 0x1

    move/from16 p1, v14

    move-object/from16 v3, v26

    const/4 v2, 0x0

    const/4 v7, -0x1

    goto :goto_140

    .line 151
    :cond_158
    move-object/from16 v26, v3

    add-long v12, v12, v16

    .line 152
    const-wide/16 v2, 0x1

    move-object/from16 v17, v8

    add-long v7, v31, v2

    .line 153
    add-long v22, v22, v2

    .line 154
    const-wide/16 v2, 0x100

    cmp-long v11, v7, v2

    if-ltz v11, :cond_186

    .line 155
    mul-long v2, v22, v24

    move/from16 v27, v14

    move/from16 v16, v15

    int-to-long v14, v10

    div-long/2addr v2, v14

    .line 156
    invoke-static {v12, v13, v7, v8}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->windowRms(JJ)D

    move-result-wide v7

    .line 157
    move-object/from16 v11, v26

    move-object v12, v4

    move-wide v13, v2

    move/from16 v2, v16

    move-wide v15, v7

    invoke-static/range {v11 .. v16}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->writeBucket(Ljava/util/ArrayList;Ljava/util/ArrayList;JD)V

    .line 158
    nop

    .line 159
    move-wide/from16 v12, v18

    move-wide/from16 v31, v12

    goto :goto_18b

    .line 154
    :cond_186
    move/from16 v27, v14

    move v2, v15

    move-wide/from16 v31, v7

    .line 161
    :goto_18b
    move v15, v2

    move-object/from16 v8, v17

    move-object/from16 v3, v26

    move/from16 p1, v27

    const/4 v2, 0x0

    const/4 v7, -0x1

    goto :goto_136

    .line 145
    :cond_195
    move/from16 v27, p1

    move-object/from16 v26, v3

    move-wide/from16 v14, v31

    goto :goto_1a4

    .line 140
    :cond_19c
    move/from16 v27, p1

    move-object/from16 v26, v3

    .line 163
    move-wide/from16 v12, v29

    move-wide/from16 v14, v31

    :goto_1a4
    const/4 v2, 0x0

    invoke-virtual {v5, v6, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 164
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1b9

    .line 165
    const/16 v20, 0x1

    goto :goto_1b9

    .line 135
    :cond_1b1
    move/from16 v27, p1

    move-object/from16 v26, v3

    move-wide/from16 v12, v29

    move-wide/from16 v14, v31

    .line 168
    :cond_1b9
    :goto_1b9
    move-object/from16 v3, v26

    move/from16 v7, v27

    const/4 v2, 0x0

    const/4 v8, 0x1

    goto/16 :goto_8a

    .line 131
    :cond_1c1
    move/from16 v27, p1

    move-object/from16 v26, v3

    .line 106
    :goto_1c5
    move-object/from16 v3, v26

    move/from16 v7, v27

    move-wide/from16 v12, v29

    move-wide/from16 v14, v31

    const/4 v2, 0x0

    const/4 v8, 0x1

    goto/16 :goto_8a

    .line 170
    :cond_1d1
    move-object/from16 v26, v3

    move-wide/from16 v29, v12

    move-wide/from16 v31, v14

    cmp-long v2, v14, v18

    if-lez v2, :cond_1ed

    .line 171
    mul-long v22, v22, v24

    int-to-long v2, v10

    div-long v2, v22, v2

    .line 172
    move-wide/from16 v12, v29

    invoke-static {v12, v13, v14, v15}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->windowRms(JJ)D

    move-result-wide v15

    .line 173
    move-object/from16 v11, v26

    move-object v12, v4

    move-wide v13, v2

    invoke-static/range {v11 .. v16}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->writeBucket(Ljava/util/ArrayList;Ljava/util/ArrayList;JD)V

    .line 176
    :cond_1ed
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    .line 177
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 178
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 180
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 181
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    invoke-direct {v0, v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;-><init>([ID)V
    :try_end_209
    .catchall {:try_start_3e .. :try_end_209} :catchall_240

    .line 192
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->close()V

    .line 181
    return-object v0

    .line 184
    :cond_20d
    const/4 v3, 0x0

    const-wide/high16 v5, 0x4058000000000000L    # 96.0

    :try_start_210
    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->percentilePeak(Ljava/util/ArrayList;D)D

    move-result-wide v5

    .line 185
    move/from16 v0, p2

    move-object/from16 v2, v26

    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->fillPercentLevels(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 186
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 187
    nop

    :goto_222
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_237

    .line 188
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v3

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_222

    .line 190
    :cond_237
    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;

    invoke-direct {v2, v0, v5, v6}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;-><init>([ID)V
    :try_end_23c
    .catchall {:try_start_210 .. :try_end_23c} :catchall_240

    .line 192
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->close()V

    .line 190
    return-object v2

    .line 192
    :catchall_240
    move-exception v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->close()V

    .line 193
    throw v0
.end method

.method private isPlaying()Z
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 353
    return v1

    .line 356
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return v0

    .line 357
    :catchall_b
    move-exception v0

    .line 358
    return v1
.end method

.method private static ptsToBucketIndex(J)I
    .registers 5

    .line 216
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 217
    move-wide p0, v0

    .line 219
    :cond_7
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    .line 220
    const-wide/16 v0, 0x14

    div-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 4

    .line 224
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 228
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_e

    return p0

    .line 229
    :catchall_e
    move-exception p0

    .line 230
    return p2

    .line 225
    :cond_10
    :goto_10
    return p2
.end method

.method private releaseVisualizer()V
    .registers 4

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerActive:Z

    .line 432
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 433
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 434
    if-nez v1, :cond_b

    .line 435
    return-void

    .line 438
    :cond_b
    :try_start_b
    invoke-virtual {v1, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 440
    goto :goto_10

    .line 439
    :catchall_f
    move-exception v0

    .line 442
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->release()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    .line 444
    goto :goto_15

    .line 443
    :catchall_14
    move-exception v0

    .line 445
    :goto_15
    return-void
.end method

.method private waveformToPercent([B)I
    .registers 7

    .line 339
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_29

    .line 342
    :cond_7
    const-wide/16 v1, 0x0

    .line 343
    nop

    :goto_a
    array-length v3, p1

    if-ge v0, v3, :cond_18

    .line 344
    aget-byte v3, p1, v0

    add-int/lit16 v3, v3, 0x80

    .line 345
    int-to-long v3, v3

    mul-long v3, v3, v3

    add-long/2addr v1, v3

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 347
    :cond_18
    long-to-double v0, v1

    array-length p1, p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 348
    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->referencePeakRms:D

    iget p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->sensitivity:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->rmsToPercent(DDI)I

    move-result p1

    return p1

    .line 340
    :cond_29
    :goto_29
    return v0
.end method

.method private static windowRms(JJ)D
    .registers 7

    .line 235
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_9

    .line 236
    const-wide/16 p0, 0x0

    return-wide p0

    .line 238
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

    .line 201
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->ptsToBucketIndex(J)I

    move-result p2

    .line 202
    const/4 p3, 0x0

    if-gez p2, :cond_8

    .line 203
    const/4 p2, 0x0

    .line 205
    :cond_8
    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_1f

    .line 206
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 209
    :cond_1f
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 210
    cmpl-double p0, p4, v0

    if-lez p0, :cond_34

    .line 211
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_34
    return-void
.end method


# virtual methods
.method dispatchEnded()V
    .registers 3

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 410
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->releaseVisualizer()V

    .line 411
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_f

    .line 412
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 414
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_16

    .line 415
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 417
    :cond_16
    return-void
.end method

.method dispatchError()V
    .registers 3

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 421
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->releaseVisualizer()V

    .line 422
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_f

    .line 423
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_16

    .line 426
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 428
    :cond_16
    return-void
.end method

.method dispatchLevel(I)V
    .registers 4

    .line 363
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerActive:Z

    if-eqz v0, :cond_15

    goto :goto_35

    .line 367
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 368
    return-void

    .line 370
    :cond_1c
    if-gez p1, :cond_1f

    .line 371
    const/4 p1, 0x0

    .line 373
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, v0

    if-lt p1, v0, :cond_29

    .line 374
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 376
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_33

    .line 378
    goto :goto_34

    .line 377
    :catchall_33
    move-exception p1

    .line 379
    :goto_34
    return-void

    .line 364
    :cond_35
    :goto_35
    return-void
.end method

.method public isVisualizerActive()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerActive:Z

    return v0
.end method

.method onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 280
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-nez v0, :cond_39

    if-eqz p1, :cond_39

    .line 282
    :try_start_6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 284
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerAllowed:Z

    if-eqz v0, :cond_16

    .line 285
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->attachVisualizer(Landroid/media/MediaPlayer;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerActive:Z

    .line 287
    :cond_16
    iget-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerActive:Z

    if-nez p1, :cond_26

    .line 288
    new-instance p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    :cond_26
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz p1, :cond_2f

    .line 292
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-interface {p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackReady()V
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_30

    .line 297
    :cond_2f
    goto :goto_39

    .line 294
    :catchall_30
    move-exception p1

    .line 295
    const-string v0, "player_start"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->dispatchError()V

    .line 299
    :cond_39
    :goto_39
    return-void
.end method

.method onVisualizerWaveform([B)V
    .registers 3

    .line 332
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_19

    .line 335
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->waveformToPercent([B)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V

    .line 336
    return-void

    .line 333
    :cond_19
    :goto_19
    return-void
.end method

.method public release()V
    .registers 4

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 449
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->releaseVisualizer()V

    .line 450
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 451
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 452
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 454
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2c

    .line 456
    :try_start_16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 457
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_22

    .line 460
    :cond_21
    goto :goto_23

    .line 459
    :catchall_22
    move-exception v0

    .line 462
    :goto_23
    :try_start_23
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_29

    .line 464
    goto :goto_2a

    .line 463
    :catchall_29
    move-exception v0

    .line 465
    :goto_2a
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 467
    :cond_2c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->uriSource:Lcom/isaigu/gymapp/train/utils/MusicUriSource;

    if-eqz v0, :cond_35

    .line 468
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->close()V

    .line 469
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->uriSource:Lcom/isaigu/gymapp/train/utils/MusicUriSource;

    .line 471
    :cond_35
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 472
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 473
    return-void
.end method

.method resolveEnvelopeIndex(I)I
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    array-length v0, v0

    if-nez v0, :cond_9

    goto :goto_1c

    .line 385
    :cond_9
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->playbackOffsetMs:I

    add-int/2addr p1, v0

    .line 386
    if-gez p1, :cond_f

    .line 387
    goto :goto_10

    .line 386
    :cond_f
    move v1, p1

    .line 389
    :goto_10
    div-int/lit8 v1, v1, 0x14

    .line 390
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, p1

    if-lt v1, v0, :cond_1b

    .line 391
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 393
    :cond_1b
    return v1

    .line 383
    :cond_1c
    :goto_1c
    return v1
.end method

.method resolvePlaybackPositionMs()I
    .registers 3

    .line 397
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 398
    return v1

    .line 401
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    .line 402
    if-gez v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1

    .line 403
    :catchall_f
    move-exception v0

    .line 404
    return v1
.end method

.method public setMappingParams(ID)V
    .registers 6

    .line 242
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->sensitivity:I

    .line 243
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-lez p1, :cond_a

    .line 244
    iput-wide p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->referencePeakRms:D

    .line 246
    :cond_a
    return-void
.end method

.method public setVisualizerAllowed(Z)V
    .registers 2

    .line 249
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->visualizerAllowed:Z

    .line 250
    return-void
.end method

.method public startPlayback(Landroid/content/Context;Landroid/net/Uri;[ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 263
    iput-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 264
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 265
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/AudioOutputLatency;->estimatePlaybackOffsetMs(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->playbackOffsetMs:I

    .line 266
    iget-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz p3, :cond_4a

    array-length p3, p3

    if-eqz p3, :cond_4a

    .line 270
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->open(Landroid/content/Context;Landroid/net/Uri;)Lcom/isaigu/gymapp/train/utils/MusicUriSource;

    move-result-object p3

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->uriSource:Lcom/isaigu/gymapp/train/utils/MusicUriSource;

    .line 271
    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 272
    iget-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->uriSource:Lcom/isaigu/gymapp/train/utils/MusicUriSource;

    invoke-virtual {p4, p3, p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->setPlayerDataSource(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/net/Uri;)V

    .line 273
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 274
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 275
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PreparedHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PreparedHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 276
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 277
    return-void

    .line 267
    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "empty envelope"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
