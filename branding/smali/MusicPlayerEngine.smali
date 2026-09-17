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

.field private static final SYNC_OFFSET_MS:I = 0x1e

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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    return p0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)[I
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static buildEnvelope(Landroid/content/Context;Landroid/net/Uri;I)[I
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 48
    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 49
    nop

    .line 50
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    const-string v5, "mime"

    const/4 v6, -0x1

    if-ge v3, v4, :cond_30

    .line 51
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 52
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    if-eqz v4, :cond_2d

    const-string v7, "audio/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 54
    nop

    .line 55
    goto :goto_31

    .line 50
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_30
    const/4 v3, -0x1

    .line 58
    :goto_31
    if-gez v3, :cond_37

    .line 59
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 60
    return-object v1

    .line 62
    :cond_37
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 64
    const-string v4, "channel-count"

    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v4

    .line 65
    if-ge v4, v7, :cond_48

    .line 66
    const/4 v4, 0x1

    .line 69
    :cond_48
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    .line 71
    invoke-virtual {v5, v3, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 72
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    .line 79
    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 80
    nop

    .line 81
    const-wide/16 v16, 0x0

    move-wide/from16 v10, v16

    move-wide v12, v10

    move-wide/from16 v18, v12

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 83
    :goto_74
    if-nez v20, :cond_18a

    .line 84
    const-wide/16 v8, 0x2710

    if-nez v21, :cond_db

    .line 85
    invoke-virtual {v5, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v14

    .line 86
    if-ltz v14, :cond_d3

    .line 87
    invoke-virtual {v5, v14}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v22

    .line 88
    if-nez v22, :cond_8f

    .line 89
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v22

    aget-object v22, v22, v14

    move-object/from16 v8, v22

    goto :goto_91

    .line 88
    :cond_8f
    move-object/from16 v8, v22

    .line 91
    :goto_91
    invoke-virtual {v0, v8, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v22

    .line 92
    if-gez v22, :cond_b7

    .line 93
    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x4

    move-object/from16 v26, v3

    const-wide/16 v2, 0x2710

    move-object v8, v5

    move v9, v14

    move-wide/from16 v27, v10

    move/from16 v10, v21

    move/from16 v11, v22

    move-wide/from16 v29, v12

    move-wide/from16 v12, v23

    move/from16 v14, v25

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 94
    const/16 v21, 0x1

    goto :goto_e2

    .line 96
    :cond_b7
    move-object/from16 v26, v3

    move-wide/from16 v27, v10

    move-wide/from16 v29, v12

    const-wide/16 v2, 0x2710

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    const/16 v23, 0x0

    move-object v8, v5

    move v9, v14

    move/from16 v11, v22

    move/from16 v14, v23

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 97
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_e2

    .line 86
    :cond_d3
    move-object/from16 v26, v3

    move-wide v2, v8

    move-wide/from16 v27, v10

    move-wide/from16 v29, v12

    goto :goto_e2

    .line 84
    :cond_db
    move-object/from16 v26, v3

    move-wide v2, v8

    move-wide/from16 v27, v10

    move-wide/from16 v29, v12

    .line 102
    :goto_e2
    invoke-virtual {v5, v15, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 103
    if-ne v2, v6, :cond_ea

    .line 104
    goto/16 :goto_17f

    .line 106
    :cond_ea
    const/4 v3, -0x2

    if-eq v2, v3, :cond_17f

    const/4 v3, -0x3

    if-ne v2, v3, :cond_f2

    .line 108
    goto/16 :goto_17f

    .line 110
    :cond_f2
    if-ltz v2, :cond_174

    .line 111
    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_fc

    .line 112
    iget-wide v8, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v8

    .line 114
    :cond_fc
    invoke-virtual {v5, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 115
    if-nez v3, :cond_108

    .line 116
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    aget-object v3, v3, v2

    .line 118
    :cond_108
    iget v8, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v8, :cond_163

    if-eqz v3, :cond_163

    .line 119
    iget v8, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    iget v8, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v9, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v9

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 121
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 122
    mul-int/lit8 v14, v4, 0x2

    move-wide/from16 v10, v27

    move-wide/from16 v12, v29

    .line 123
    :goto_12b
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-lt v8, v14, :cond_167

    .line 124
    nop

    .line 125
    move-wide/from16 v22, v16

    const/4 v8, 0x0

    :goto_135
    if-ge v8, v4, :cond_145

    .line 126
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 127
    int-to-long v6, v9

    mul-long v6, v6, v6

    add-long v22, v22, v6

    .line 125
    add-int/lit8 v8, v8, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto :goto_135

    .line 129
    :cond_145
    add-long v10, v10, v22

    .line 130
    const-wide/16 v6, 0x1

    add-long/2addr v12, v6

    .line 131
    const-wide/16 v6, 0x100

    cmp-long v8, v12, v6

    if-ltz v8, :cond_160

    .line 132
    invoke-static {v10, v11, v12, v13}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->windowRms(JJ)D

    move-result-wide v12

    .line 133
    move-object v8, v1

    move-object/from16 v9, v26

    move-wide/from16 v10, v18

    invoke-static/range {v8 .. v13}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->writeBucket(Ljava/util/ArrayList;Ljava/util/ArrayList;JD)V

    .line 134
    nop

    .line 135
    move-wide/from16 v10, v16

    move-wide v12, v10

    .line 137
    :cond_160
    const/4 v6, -0x1

    const/4 v7, 0x1

    goto :goto_12b

    .line 139
    :cond_163
    move-wide/from16 v10, v27

    move-wide/from16 v12, v29

    :cond_167
    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 140
    iget v2, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_178

    .line 141
    const/16 v20, 0x1

    goto :goto_178

    .line 110
    :cond_174
    move-wide/from16 v10, v27

    move-wide/from16 v12, v29

    .line 144
    :cond_178
    :goto_178
    move-object/from16 v3, v26

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_74

    .line 83
    :cond_17f
    :goto_17f
    move-object/from16 v3, v26

    move-wide/from16 v10, v27

    move-wide/from16 v12, v29

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_74

    .line 146
    :cond_18a
    move-object/from16 v26, v3

    move-wide/from16 v27, v10

    move-wide/from16 v29, v12

    cmp-long v2, v12, v16

    if-lez v2, :cond_1a2

    .line 147
    move-wide/from16 v10, v27

    invoke-static {v10, v11, v12, v13}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->windowRms(JJ)D

    move-result-wide v12

    .line 148
    move-object v8, v1

    move-object/from16 v9, v26

    move-wide/from16 v10, v18

    invoke-static/range {v8 .. v13}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->writeBucket(Ljava/util/ArrayList;Ljava/util/ArrayList;JD)V

    .line 151
    :cond_1a2
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    .line 152
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 153
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 155
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v2, v0, v2

    return-object v0

    .line 158
    :cond_1b8
    const/4 v2, 0x0

    move/from16 v0, p2

    move-object/from16 v3, v26

    invoke-static {v1, v3, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->normalizeTimeline(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 159
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 160
    nop

    :goto_1c7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1dc

    .line 161
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c7

    .line 163
    :cond_1dc
    return-object v0
.end method

.method private static normalizeTimeline(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;I)V"
        }
    .end annotation

    .line 193
    move-object/from16 v0, p1

    .line 194
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1f

    .line 195
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 196
    cmpl-double v9, v7, v5

    if-lez v9, :cond_1c

    .line 197
    move-wide v5, v7

    .line 194
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 200
    :cond_1f
    const-wide/high16 v7, 0x4054000000000000L    # 80.0

    cmpg-double v4, v5, v7

    if-gez v4, :cond_26

    .line 201
    move-wide v5, v7

    .line 204
    :cond_26
    const-wide v7, 0x3fc70a3d70a3d70aL    # 0.18

    move/from16 v4, p2

    int-to-double v9, v4

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    const-wide v13, 0x3fc1eb851eb851ecL    # 0.14

    mul-double v9, v9, v13

    sub-double/2addr v7, v9

    .line 205
    const-wide v9, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v7, v9

    if-gez v4, :cond_43

    .line 206
    move-wide v7, v9

    .line 208
    :cond_43
    const-wide v9, 0x4041800000000000L    # 35.0

    mul-double v7, v7, v5

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 209
    sub-double/2addr v5, v7

    .line 210
    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    cmpg-double v4, v5, v9

    if-gez v4, :cond_56

    .line 211
    move-wide v5, v9

    .line 214
    :cond_56
    const/4 v4, 0x0

    :goto_57
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_a3

    .line 215
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 216
    nop

    .line 217
    const/16 v13, 0x64

    cmpl-double v14, v9, v7

    if-lez v14, :cond_96

    .line 218
    sub-double/2addr v9, v7

    div-double/2addr v9, v5

    .line 219
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v16, v9, v1

    if-gez v16, :cond_78

    .line 220
    move-wide v9, v1

    goto :goto_7d

    .line 221
    :cond_78
    cmpl-double v16, v9, v14

    if-lez v16, :cond_7d

    .line 222
    move-wide v9, v14

    .line 224
    :cond_7d
    :goto_7d
    const-wide v14, 0x3ff599999999999aL    # 1.35

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    .line 225
    mul-double v9, v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v10, v9

    .line 226
    if-gez v10, :cond_91

    .line 227
    const/4 v13, 0x0

    goto :goto_97

    .line 228
    :cond_91
    if-le v10, v13, :cond_94

    .line 229
    goto :goto_97

    .line 228
    :cond_94
    move v13, v10

    goto :goto_97

    .line 217
    :cond_96
    const/4 v13, 0x0

    .line 232
    :goto_97
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v10, p0

    invoke-virtual {v10, v4, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 234
    :cond_a3
    return-void
.end method

.method private static ptsToBucketIndex(J)I
    .registers 5

    .line 237
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 238
    move-wide p0, v0

    .line 240
    :cond_7
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    .line 241
    const-wide/16 v0, 0x14

    div-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 4

    .line 245
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 249
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_e

    return p0

    .line 250
    :catchall_e
    move-exception p0

    .line 251
    return p2

    .line 246
    :cond_10
    :goto_10
    return p2
.end method

.method private static windowRms(JJ)D
    .registers 7

    .line 256
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_9

    .line 257
    const-wide/16 p0, 0x0

    return-wide p0

    .line 259
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

    .line 171
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->ptsToBucketIndex(J)I

    move-result p2

    .line 172
    const/4 p3, 0x0

    if-gez p2, :cond_8

    .line 173
    const/4 p2, 0x0

    .line 175
    :cond_8
    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_1f

    .line 176
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 179
    :cond_1f
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 180
    cmpl-double p0, p4, v0

    if-lez p0, :cond_34

    .line 181
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_34
    return-void
.end method


# virtual methods
.method dispatchEnded()V
    .registers 3

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 330
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 333
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 335
    :cond_13
    return-void
.end method

.method dispatchError()V
    .registers 3

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 339
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 340
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 343
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 345
    :cond_13
    return-void
.end method

.method dispatchLevel(I)V
    .registers 4

    .line 282
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-nez v1, :cond_11

    goto :goto_31

    .line 286
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_18

    .line 287
    return-void

    .line 289
    :cond_18
    if-gez p1, :cond_1b

    .line 290
    const/4 p1, 0x0

    .line 292
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, v0

    if-lt p1, v0, :cond_25

    .line 293
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 295
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    .line 297
    goto :goto_30

    .line 296
    :catchall_2f
    move-exception p1

    .line 298
    :goto_30
    return-void

    .line 283
    :cond_31
    :goto_31
    return-void
.end method

.method public release()V
    .registers 4

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 349
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 350
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 353
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    .line 355
    :try_start_13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 356
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    .line 359
    :cond_1e
    goto :goto_20

    .line 358
    :catchall_1f
    move-exception v0

    .line 361
    :goto_20
    :try_start_20
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    .line 363
    goto :goto_27

    .line 362
    :catchall_26
    move-exception v0

    .line 364
    :goto_27
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 366
    :cond_29
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 367
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 368
    return-void
.end method

.method resolveEnvelopeIndex(I)I
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    array-length v0, v0

    if-nez v0, :cond_9

    goto :goto_1b

    .line 304
    :cond_9
    add-int/lit8 p1, p1, 0x1e

    .line 305
    if-gez p1, :cond_e

    .line 306
    goto :goto_f

    .line 305
    :cond_e
    move v1, p1

    .line 308
    :goto_f
    div-int/lit8 v1, v1, 0x14

    .line 309
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, p1

    if-lt v1, v0, :cond_1a

    .line 310
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 312
    :cond_1a
    return v1

    .line 302
    :cond_1b
    :goto_1b
    return v1
.end method

.method resolvePlaybackPositionMs()I
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 317
    return v1

    .line 320
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    .line 321
    if-gez v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1

    .line 322
    :catchall_f
    move-exception v0

    .line 323
    return v1
.end method

.method public startPlayback(Landroid/content/Context;Landroid/net/Uri;[ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 265
    iput-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 266
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 267
    if-eqz p3, :cond_44

    array-length p3, p3

    if-eqz p3, :cond_44

    .line 270
    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 271
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 272
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 273
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 274
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 275
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 276
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 277
    new-instance p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 278
    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void

    .line 268
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "empty envelope"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
