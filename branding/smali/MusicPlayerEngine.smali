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
.field private static final PCM_WINDOW_SAMPLES:I = 0x200

.field private static final SYNC_OFFSET_MS:I = 0x5a

.field private static final WINDOW_MS:I = 0x14


# instance fields
.field private durationMs:I

.field private envelope:[I

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

.field private player:Landroid/media/MediaPlayer;

.field private syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

.field private volatile tracking:Z


# direct methods
.method public constructor <init>()V
    .registers 3

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
    .registers 1

    .line 19
    iget-boolean p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    return p0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)[I
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static buildEnvelope(Landroid/content/Context;Landroid/net/Uri;)[I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 45
    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 46
    nop

    .line 47
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    const-string v5, "mime"

    const/4 v6, -0x1

    if-ge v3, v4, :cond_30

    .line 48
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 49
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    if-eqz v4, :cond_2d

    const-string v7, "audio/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 51
    nop

    .line 52
    goto :goto_31

    .line 47
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_30
    const/4 v3, -0x1

    .line 55
    :goto_31
    if-gez v3, :cond_37

    .line 56
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 57
    return-object v1

    .line 59
    :cond_37
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 60
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 61
    const v4, 0xac44

    const-string v7, "sample-rate"

    invoke-static {v3, v7, v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v4

    .line 62
    const-string v7, "channel-count"

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v7

    .line 63
    if-ge v7, v8, :cond_51

    .line 64
    const/4 v7, 0x1

    .line 66
    :cond_51
    const-string v9, "durationUs"

    const-wide/16 v10, 0x0

    invoke-static {v3, v9, v10, v11}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readLongFormat(Landroid/media/MediaFormat;Ljava/lang/String;J)J

    move-result-wide v12

    .line 68
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    .line 70
    invoke-virtual {v5, v3, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 71
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    const/16 v3, 0x200

    new-array v9, v3, [S

    .line 75
    nop

    .line 76
    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 77
    nop

    .line 78
    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 80
    :goto_7c
    if-nez v21, :cond_1a7

    .line 81
    const-wide/16 v10, 0x2710

    if-nez v22, :cond_c7

    .line 82
    invoke-virtual {v5, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    .line 83
    if-ltz v8, :cond_c4

    .line 84
    invoke-virtual {v5, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 85
    if-nez v16, :cond_97

    .line 86
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16

    aget-object v16, v16, v8

    move-object/from16 v3, v16

    goto :goto_99

    .line 85
    :cond_97
    move-object/from16 v3, v16

    .line 88
    :goto_99
    invoke-virtual {v0, v3, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v17

    .line 89
    if-gez v17, :cond_b1

    .line 90
    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x4

    move v3, v14

    move-object v14, v5

    move-object v2, v15

    move v15, v8

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 91
    const/16 v22, 0x1

    goto :goto_c9

    .line 93
    :cond_b1
    move v3, v14

    move-object v2, v15

    const/16 v16, 0x0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v18

    const/16 v20, 0x0

    move-object v14, v5

    move v15, v8

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 94
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_c9

    .line 83
    :cond_c4
    move v3, v14

    move-object v2, v15

    goto :goto_c9

    .line 81
    :cond_c7
    move v3, v14

    move-object v2, v15

    .line 99
    :goto_c9
    invoke-virtual {v5, v2, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    .line 100
    if-ne v8, v6, :cond_d7

    .line 101
    move/from16 v18, v4

    move-wide v15, v12

    const/16 v4, 0x200

    const/4 v6, 0x0

    goto/16 :goto_199

    .line 103
    :cond_d7
    const/4 v10, -0x2

    if-eq v8, v10, :cond_193

    const/4 v10, -0x3

    if-ne v8, v10, :cond_e5

    .line 105
    move/from16 v18, v4

    move-wide v15, v12

    const/16 v4, 0x200

    const/4 v6, 0x0

    goto/16 :goto_199

    .line 107
    :cond_e5
    if-ltz v8, :cond_17f

    .line 108
    invoke-virtual {v5, v8}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 109
    if-nez v10, :cond_f3

    .line 110
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    aget-object v10, v10, v8

    .line 112
    :cond_f3
    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v11, :cond_168

    if-eqz v10, :cond_168

    .line 113
    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v14, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v11, v14

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 115
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 116
    mul-int/lit8 v11, v7, 0x2

    move v14, v3

    .line 117
    :goto_113
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v11, :cond_160

    .line 118
    nop

    .line 119
    move-wide v15, v12

    const/4 v3, 0x0

    move v13, v11

    const-wide/16 v11, 0x0

    :goto_11f
    if-ge v3, v7, :cond_135

    .line 120
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 121
    move/from16 v18, v4

    move-object/from16 v19, v5

    int-to-long v4, v6

    mul-long v4, v4, v4

    add-long/2addr v11, v4

    .line 119
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v18

    move-object/from16 v5, v19

    const/4 v6, -0x1

    goto :goto_11f

    .line 123
    :cond_135
    move/from16 v18, v4

    move-object/from16 v19, v5

    add-int/lit8 v3, v14, 0x1

    long-to-double v4, v11

    int-to-double v11, v7

    div-double/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v9, v14

    .line 124
    const/16 v4, 0x200

    if-lt v3, v4, :cond_157

    .line 125
    invoke-static {v9, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->sampleWindowToLevel([SI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    const/4 v14, 0x0

    goto :goto_158

    .line 124
    :cond_157
    move v14, v3

    .line 128
    :goto_158
    move v11, v13

    move-wide v12, v15

    move/from16 v4, v18

    move-object/from16 v5, v19

    const/4 v6, -0x1

    goto :goto_113

    .line 117
    :cond_160
    move/from16 v18, v4

    move-object/from16 v19, v5

    move-wide v15, v12

    const/16 v4, 0x200

    goto :goto_170

    .line 112
    :cond_168
    move/from16 v18, v4

    move-object/from16 v19, v5

    move-wide v15, v12

    const/16 v4, 0x200

    .line 130
    move v14, v3

    :goto_170
    move-object/from16 v5, v19

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 131
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_186

    .line 132
    const/16 v21, 0x1

    goto :goto_186

    .line 107
    :cond_17f
    move/from16 v18, v4

    move-wide v15, v12

    const/16 v4, 0x200

    const/4 v6, 0x0

    move v14, v3

    .line 135
    :cond_186
    :goto_186
    move-wide v12, v15

    move/from16 v4, v18

    const/16 v3, 0x200

    const/4 v6, -0x1

    const/4 v8, 0x1

    const-wide/16 v10, 0x0

    move-object v15, v2

    const/4 v2, 0x0

    goto/16 :goto_7c

    .line 103
    :cond_193
    move/from16 v18, v4

    move-wide v15, v12

    const/16 v4, 0x200

    const/4 v6, 0x0

    .line 80
    :goto_199
    move v14, v3

    move-wide v12, v15

    move/from16 v4, v18

    const/16 v3, 0x200

    const/4 v6, -0x1

    const/4 v8, 0x1

    const-wide/16 v10, 0x0

    move-object v15, v2

    const/4 v2, 0x0

    goto/16 :goto_7c

    .line 137
    :cond_1a7
    move/from16 v18, v4

    move-wide v15, v12

    move v3, v14

    if-lez v3, :cond_1b8

    .line 138
    invoke-static {v9, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->sampleWindowToLevel([SI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1b8
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    .line 142
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 143
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 145
    move-wide v2, v15

    move/from16 v0, v18

    invoke-static {v1, v0, v7, v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resampleToTimeline(Ljava/util/ArrayList;IIJ)[I

    move-result-object v0

    return-object v0
.end method

.method private static readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 4

    .line 149
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 153
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_e

    return p0

    .line 154
    :catchall_e
    move-exception p0

    .line 155
    return p2

    .line 150
    :cond_10
    :goto_10
    return p2
.end method

.method private static readLongFormat(Landroid/media/MediaFormat;Ljava/lang/String;J)J
    .registers 5

    .line 160
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 164
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_e

    return-wide p0

    .line 165
    :catchall_e
    move-exception p0

    .line 166
    return-wide p2

    .line 161
    :cond_10
    :goto_10
    return-wide p2
.end method

.method private static resampleToTimeline(Ljava/util/ArrayList;IIJ)[I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IIJ)[I"
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_6f

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6f

    .line 176
    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-lez v4, :cond_15

    const-wide/16 v4, 0x3e8

    div-long/2addr p3, v4

    goto :goto_16

    :cond_15
    move-wide p3, v2

    .line 177
    :goto_16
    cmp-long v4, p3, v2

    if-gtz v4, :cond_33

    .line 178
    const-wide p3, 0x411f400000000000L    # 512000.0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    mul-int p1, p1, p2

    int-to-double p1, p1

    div-double/2addr p3, p1

    .line 179
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double p1, p1

    mul-double p1, p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p3, p1

    .line 181
    :cond_33
    const-wide/16 p1, 0x14

    div-long p1, p3, p1

    long-to-int p2, p1

    add-int/2addr p2, v1

    .line 182
    if-ge p2, v1, :cond_3c

    .line 183
    const/4 p2, 0x1

    .line 185
    :cond_3c
    new-array p1, p2, [I

    .line 186
    long-to-double p3, p3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr p3, v2

    .line 187
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p3, v2

    if-gez v4, :cond_4c

    .line 188
    move-wide p3, v2

    .line 190
    :cond_4c
    nop

    :goto_4d
    if-ge v0, p2, :cond_6e

    .line 191
    mul-int/lit8 v2, v0, 0x14

    .line 192
    int-to-double v2, v2

    div-double/2addr v2, p3

    double-to-int v2, v2

    .line 193
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_5f

    .line 194
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 196
    :cond_5f
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 198
    :cond_6e
    return-object p1

    .line 174
    :cond_6f
    :goto_6f
    new-array p0, v1, [I

    aput v0, p0, v0

    return-object p0
.end method

.method private static sampleWindowToLevel([SI)I
    .registers 8

    .line 202
    const/4 v0, 0x0

    if-eqz p0, :cond_33

    if-gtz p1, :cond_6

    goto :goto_33

    .line 205
    :cond_6
    const-wide/16 v1, 0x0

    .line 206
    const/4 v3, 0x0

    :goto_9
    if-ge v3, p1, :cond_14

    .line 207
    aget-short v4, p0, v3

    .line 208
    int-to-long v4, v4

    mul-long v4, v4, v4

    add-long/2addr v1, v4

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 210
    :cond_14
    long-to-double v1, v1

    int-to-double p0, p1

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    .line 211
    const-wide v1, 0x40bf400000000000L    # 8000.0

    div-double/2addr p0, v1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double p0, p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 212
    if-gez p1, :cond_2d

    .line 213
    return v0

    .line 215
    :cond_2d
    const/16 p0, 0x64

    if-le p1, p0, :cond_32

    .line 216
    return p0

    .line 218
    :cond_32
    return p1

    .line 203
    :cond_33
    :goto_33
    return v0
.end method


# virtual methods
.method dispatchEnded()V
    .registers 3

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 291
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 292
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 295
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 297
    :cond_13
    return-void
.end method

.method dispatchError()V
    .registers 3

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 302
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 305
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 307
    :cond_13
    return-void
.end method

.method dispatchLevel(I)V
    .registers 4

    .line 245
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-nez v1, :cond_11

    goto :goto_31

    .line 249
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_18

    .line 250
    return-void

    .line 252
    :cond_18
    if-gez p1, :cond_1b

    .line 253
    const/4 p1, 0x0

    .line 255
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, v0

    if-lt p1, v0, :cond_25

    .line 256
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 258
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    .line 260
    goto :goto_30

    .line 259
    :catchall_2f
    move-exception p1

    .line 261
    :goto_30
    return-void

    .line 246
    :cond_31
    :goto_31
    return-void
.end method

.method public release()V
    .registers 5

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 311
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 312
    iget-object v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 315
    :cond_f
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_29

    .line 317
    :try_start_13
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 318
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    .line 321
    :cond_1e
    goto :goto_20

    .line 320
    :catchall_1f
    move-exception v1

    .line 323
    :goto_20
    :try_start_20
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    .line 325
    goto :goto_27

    .line 324
    :catchall_26
    move-exception v1

    .line 326
    :goto_27
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 328
    :cond_29
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 329
    iput-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 330
    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->durationMs:I

    .line 331
    return-void
.end method

.method resolveEnvelopeIndex(I)I
    .registers 11

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    array-length v0, v0

    if-nez v0, :cond_9

    goto :goto_38

    .line 267
    :cond_9
    add-int/lit8 p1, p1, 0x5a

    .line 268
    if-gez p1, :cond_e

    .line 269
    const/4 p1, 0x0

    .line 271
    :cond_e
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->durationMs:I

    .line 272
    if-gtz v0, :cond_1a

    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1a

    .line 273
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 275
    :cond_1a
    if-lez v0, :cond_35

    .line 276
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 277
    int-to-long v3, p1

    int-to-long v5, v2

    mul-long v3, v3, v5

    int-to-long v7, v0

    div-long/2addr v3, v7

    .line 278
    const-wide/16 v7, 0x0

    cmp-long p1, v3, v7

    if-gez p1, :cond_2e

    .line 279
    return v1

    .line 281
    :cond_2e
    cmp-long p1, v3, v5

    if-lez p1, :cond_33

    .line 282
    return v2

    .line 284
    :cond_33
    long-to-int p1, v3

    return p1

    .line 286
    :cond_35
    div-int/lit8 p1, p1, 0x14

    return p1

    .line 265
    :cond_38
    :goto_38
    return v1
.end method

.method public startPlayback(Landroid/content/Context;Landroid/net/Uri;[ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 224
    iput-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 225
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 226
    if-eqz p3, :cond_55

    array-length p3, p3

    if-eqz p3, :cond_55

    .line 229
    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 230
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 231
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 232
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 233
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 234
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->durationMs:I

    .line 235
    if-gtz p1, :cond_40

    .line 236
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->durationMs:I

    .line 238
    :cond_40
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 239
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 240
    new-instance p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 241
    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void

    .line 227
    :cond_55
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "empty envelope"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
