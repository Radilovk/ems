.class public final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;,
        Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;
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

.field private player:Landroid/media/MediaPlayer;

.field private syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

.field private volatile tracking:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 19
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
    .line 19
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    return v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)[I
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildEnvelope(Landroid/content/Context;Landroid/net/Uri;I)[I
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v20, Landroid/media/MediaExtractor;

    invoke-direct/range {v20 .. v20}, Landroid/media/MediaExtractor;-><init>()V

    .line 47
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 48
    const/4 v5, -0x1

    .line 49
    const/4 v4, 0x0

    :goto_11
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    if-ge v4, v6, :cond_1cb

    .line 50
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    .line 51
    const-string v7, "mime"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    if-eqz v6, :cond_34

    const-string v7, "audio/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 57
    :goto_2d
    if-gez v4, :cond_37

    .line 58
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaExtractor;->release()V

    .line 59
    const/4 v4, 0x0

    .line 162
    :goto_33
    return-object v4

    .line 49
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 61
    :cond_37
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 62
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    .line 63
    const-string v4, "channel-count"

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v4

    .line 64
    const/4 v6, 0x1

    if-ge v4, v6, :cond_1c8

    .line 65
    const/4 v4, 0x1

    move v12, v4

    .line 68
    :goto_4e
    const-string v4, "mime"

    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 70
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 71
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 73
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 75
    const-wide/16 v18, 0x0

    .line 76
    const-wide/16 v16, 0x0

    .line 77
    const-wide/16 v14, 0x0

    .line 78
    new-instance v23, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v23 .. v23}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 79
    const/4 v5, 0x0

    .line 80
    const/4 v13, 0x0

    move v11, v5

    .line 82
    :goto_79
    if-nez v13, :cond_167

    .line 83
    if-nez v11, :cond_be

    .line 84
    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 85
    if-ltz v5, :cond_be

    .line 86
    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 87
    if-nez v6, :cond_91

    .line 88
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v6, v6, v5

    .line 90
    :cond_91
    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 91
    if-gez v7, :cond_b2

    .line 92
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 93
    const/4 v5, 0x1

    .line 101
    :goto_a3
    const-wide/16 v6, 0x2710

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v24

    .line 102
    const/4 v6, -0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_c0

    move v11, v5

    .line 103
    goto :goto_79

    .line 95
    :cond_b2
    const/4 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 96
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaExtractor;->advance()Z

    :cond_be
    move v5, v11

    goto :goto_a3

    .line 105
    :cond_c0
    const/4 v6, -0x2

    move/from16 v0, v24

    if-eq v0, v6, :cond_1c5

    const/4 v6, -0x3

    move/from16 v0, v24

    if-ne v0, v6, :cond_cc

    move v11, v5

    .line 107
    goto :goto_79

    .line 109
    :cond_cc
    if-ltz v24, :cond_1c2

    .line 110
    move-object/from16 v0, v23

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_1bf

    .line 111
    move-object/from16 v0, v23

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 113
    :goto_d8
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 114
    if-nez v6, :cond_e6

    .line 115
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v6, v6, v24

    .line 117
    :cond_e6
    move-object/from16 v0, v23

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v7, :cond_153

    if-eqz v6, :cond_153

    .line 118
    move-object/from16 v0, v23

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    move-object/from16 v0, v23

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v23

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v10

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 120
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 121
    mul-int/lit8 v25, v12, 0x2

    move-wide/from16 v6, v16

    move-wide/from16 v10, v18

    .line 122
    :cond_111
    :goto_111
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    move/from16 v0, v25

    if-lt v14, v0, :cond_14f

    .line 123
    const-wide/16 v16, 0x0

    .line 124
    const/4 v14, 0x0

    :goto_11c
    if-ge v14, v12, :cond_133

    .line 125
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v18

    .line 126
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v18, v18, v26

    add-long v16, v16, v18

    .line 124
    add-int/lit8 v14, v14, 0x1

    goto :goto_11c

    .line 128
    :cond_133
    add-long v6, v6, v16

    .line 129
    const-wide/16 v16, 0x1

    add-long v10, v10, v16

    .line 130
    const-wide/16 v16, 0x100

    cmp-long v14, v10, v16

    if-ltz v14, :cond_111

    .line 131
    invoke-static {v6, v7, v10, v11}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->windowRms(JJ)D

    move-result-wide v10

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    .line 132
    invoke-static/range {v6 .. v11}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->writeBucket(Ljava/util/ArrayList;Ljava/util/ArrayList;JD)V

    .line 133
    const-wide/16 v10, 0x0

    .line 134
    const-wide/16 v6, 0x0

    goto :goto_111

    :cond_14f
    move-wide/from16 v16, v6

    move-wide/from16 v18, v10

    .line 138
    :cond_153
    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 139
    move-object/from16 v0, v23

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1bd

    .line 140
    const/4 v6, 0x1

    :goto_162
    move v13, v6

    move v11, v5

    move-wide v14, v8

    .line 143
    goto/16 :goto_79

    .line 145
    :cond_167
    const-wide/16 v6, 0x0

    cmp-long v5, v18, v6

    if-lez v5, :cond_179

    .line 146
    invoke-static/range {v16 .. v19}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->windowRms(JJ)D

    move-result-wide v10

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-wide v8, v14

    .line 147
    invoke-static/range {v6 .. v11}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->writeBucket(Ljava/util/ArrayList;Ljava/util/ArrayList;JD)V

    .line 150
    :cond_179
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 151
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 152
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaExtractor;->release()V

    .line 154
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_191

    .line 155
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    goto/16 :goto_33

    .line 157
    :cond_191
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->normalizeTimeline(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 158
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v6, v4, [I

    .line 159
    const/4 v4, 0x0

    move v5, v4

    :goto_1a2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_1ba

    .line 160
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v6, v5

    .line 159
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1a2

    :cond_1ba
    move-object v4, v6

    .line 162
    goto/16 :goto_33

    :cond_1bd
    move v6, v13

    goto :goto_162

    :cond_1bf
    move-wide v8, v14

    goto/16 :goto_d8

    :cond_1c2
    move v6, v13

    move-wide v8, v14

    goto :goto_162

    :cond_1c5
    move v11, v5

    goto/16 :goto_79

    :cond_1c8
    move v12, v4

    goto/16 :goto_4e

    :cond_1cb
    move v4, v5

    goto/16 :goto_2d
.end method

.method private static normalizeTimeline(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 192
    const-wide/16 v2, 0x0

    .line 193
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 194
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 195
    cmpl-double v0, v4, v2

    if-lez v0, :cond_19

    move-wide v2, v4

    .line 193
    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 199
    :cond_1d
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_25

    .line 200
    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    .line 203
    :cond_25
    const-wide v0, 0x3fc70a3d70a3d70aL    # 0.18

    int-to-double v4, p2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    const-wide v6, 0x3fc1eb851eb851ecL    # 0.14

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    .line 204
    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v0, v4

    if-gez v4, :cond_43

    .line 205
    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 207
    :cond_43
    const-wide v4, 0x4041800000000000L    # 35.0

    mul-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 208
    sub-double v0, v2, v6

    .line 209
    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_a9

    .line 210
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    move-wide v2, v0

    .line 213
    :goto_58
    const/4 v0, 0x0

    move v1, v0

    :goto_5a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a8

    .line 214
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 215
    const/4 v0, 0x0

    .line 216
    cmpl-double v8, v4, v6

    if-lez v8, :cond_8d

    .line 217
    sub-double/2addr v4, v6

    div-double/2addr v4, v2

    .line 218
    const-wide/16 v8, 0x0

    cmpg-double v0, v4, v8

    if-gez v0, :cond_98

    .line 219
    const-wide/16 v4, 0x0

    .line 223
    :cond_79
    :goto_79
    const-wide v8, 0x3ff599999999999aL    # 1.35

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 224
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    .line 225
    if-gez v0, :cond_a1

    .line 226
    const/4 v0, 0x0

    .line 231
    :cond_8d
    :goto_8d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5a

    .line 220
    :cond_98
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v8

    if-lez v0, :cond_79

    .line 221
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_79

    .line 227
    :cond_a1
    const/16 v4, 0x64

    if-le v0, v4, :cond_8d

    .line 228
    const/16 v0, 0x64

    goto :goto_8d

    .line 233
    :cond_a8
    return-void

    :cond_a9
    move-wide v2, v0

    goto :goto_58
.end method

.method private static ptsToBucketIndex(J)I
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 236
    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    move-wide p0, v0

    .line 239
    :cond_7
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 240
    const-wide/16 v2, 0x14

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 244
    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 250
    :cond_8
    :goto_8
    return p2

    .line 248
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_e

    move-result p2

    goto :goto_8

    .line 249
    :catch_e
    move-exception v0

    goto :goto_8
.end method

.method private static windowRms(JJ)D
    .registers 8

    .prologue
    .line 255
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_9

    .line 256
    const-wide/16 v0, 0x0

    .line 258
    :goto_8
    return-wide v0

    :cond_9
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_8
.end method

.method private static writeBucket(Ljava/util/ArrayList;Ljava/util/ArrayList;JD)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;JD)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->ptsToBucketIndex(J)I

    move-result v1

    .line 171
    if-gez v1, :cond_8

    move v1, v0

    .line 174
    :cond_8
    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_1f

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 178
    :cond_1f
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 179
    cmpl-double v0, p4, v2

    if-lez v0, :cond_34

    .line 180
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_34
    return-void
.end method


# virtual methods
.method dispatchEnded()V
    .registers 3

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 395
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_e

    .line 396
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 398
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_17

    .line 399
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 401
    :cond_17
    return-void
.end method

.method dispatchError()V
    .registers 3

    .prologue
    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 405
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_e

    .line 406
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_17

    .line 409
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 411
    :cond_17
    return-void
.end method

.method dispatchLevel(I)V
    .registers 5

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-nez v0, :cond_11

    .line 297
    :cond_10
    :goto_10
    return-void

    .line 285
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 288
    if-gez p1, :cond_32

    .line 289
    const/4 v0, 0x0

    .line 291
    :goto_1c
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v1, v1

    if-lt v0, v1, :cond_26

    .line 292
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 294
    :cond_26
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    aget v0, v2, v0

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2f} :catch_30

    goto :goto_10

    .line 295
    :catch_30
    move-exception v0

    goto :goto_10

    :cond_32
    move v0, p1

    goto :goto_1c
.end method

.method public getDurationMs()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 329
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_6

    .line 336
    :cond_5
    :goto_5
    return v0

    .line 333
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_10

    move-result v1

    .line 334
    if-ltz v1, :cond_5

    move v0, v1

    goto :goto_5

    .line 335
    :catch_10
    move-exception v1

    goto :goto_5
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 341
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_6

    .line 347
    :goto_5
    return v0

    .line 345
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_5

    .line 346
    :catch_d
    move-exception v1

    goto :goto_5
.end method

.method public pausePlayback()V
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 379
    :cond_4
    :goto_4
    return-void

    .line 374
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_4

    .line 377
    :catch_13
    move-exception v0

    goto :goto_4
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 415
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_11

    .line 416
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 419
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    .line 421
    :try_start_15
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 422
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_22} :catch_30

    .line 427
    :cond_22
    :goto_22
    :try_start_22
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_27} :catch_2e

    .line 430
    :goto_27
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 432
    :cond_29
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 433
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 434
    return-void

    .line 428
    :catch_2e
    move-exception v0

    goto :goto_27

    .line 424
    :catch_30
    move-exception v0

    goto :goto_22
.end method

.method resolveEnvelopeIndex(I)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 300
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v1, v1

    if-nez v1, :cond_b

    .line 313
    :cond_a
    :goto_a
    return v0

    .line 305
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlayerLeadMs()I

    move-result v1

    add-int/2addr v1, p1

    .line 306
    if-gez v1, :cond_1f

    .line 309
    :goto_12
    div-int/lit8 v0, v0, 0x14

    .line 310
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 311
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1f
    move v0, v1

    goto :goto_12
.end method

.method resolvePlaybackPositionMs()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 317
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_6

    .line 324
    :cond_5
    :goto_5
    return v0

    .line 321
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_10

    move-result v1

    .line 322
    if-ltz v1, :cond_5

    move v0, v1

    goto :goto_5

    .line 323
    :catch_10
    move-exception v1

    goto :goto_5
.end method

.method public resumePlayback()V
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 391
    :cond_4
    :goto_4
    return-void

    .line 386
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    .line 387
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_4

    .line 389
    :catch_13
    move-exception v0

    goto :goto_4
.end method

.method public seekTo(I)V
    .registers 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 367
    :goto_4
    return-void

    .line 356
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->getDurationMs()I

    move-result v0

    .line 358
    if-gez p1, :cond_1a

    .line 359
    const/4 v1, 0x0

    .line 361
    :goto_c
    if-lez v0, :cond_18

    if-le v1, v0, :cond_18

    .line 364
    :goto_10
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_4

    .line 365
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

.method public startPlayback(Landroid/content/Context;Landroid/net/Uri;[ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 264
    iput-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 265
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, v0

    if-nez v0, :cond_18

    .line 267
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "empty envelope"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_18
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 271
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 272
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 273
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 274
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 276
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 277
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method
