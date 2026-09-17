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

.field private static final SYNC_OFFSET_MS:I = 0x32

.field private static final WINDOW_MS:I = 0x14


# instance fields
.field private envelope:[I

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

.field private player:Landroid/media/MediaPlayer;

.field private syncAnchorWallMs:J

.field private syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

.field private volatile tracking:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
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

.method static synthetic access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static buildEnvelope(Landroid/content/Context;Landroid/net/Uri;)[I
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 49
    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 50
    nop

    .line 51
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    const-string v5, "mime"

    if-ge v3, v4, :cond_2f

    .line 52
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 53
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    if-eqz v4, :cond_2c

    const-string v7, "audio/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 55
    nop

    .line 56
    goto :goto_30

    .line 51
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2f
    const/4 v3, -0x1

    .line 59
    :goto_30
    if-gez v3, :cond_36

    .line 60
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 61
    return-object v1

    .line 63
    :cond_36
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 64
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 65
    const-string v4, "channel-count"

    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v4

    .line 66
    if-ge v4, v7, :cond_47

    .line 67
    const/4 v4, 0x1

    .line 70
    :cond_47
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    .line 72
    invoke-virtual {v5, v3, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 73
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    .line 79
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 80
    nop

    .line 81
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 83
    :goto_6d
    if-nez v17, :cond_18e

    .line 84
    const-wide/16 v6, 0x2710

    if-nez v18, :cond_cd

    .line 85
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v14

    .line 86
    if-ltz v14, :cond_c6

    .line 87
    invoke-virtual {v5, v14}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 88
    if-nez v19, :cond_88

    .line 89
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v19

    aget-object v19, v19, v14

    move-object/from16 v15, v19

    goto :goto_8a

    .line 88
    :cond_88
    move-object/from16 v15, v19

    .line 91
    :goto_8a
    invoke-virtual {v0, v15, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    .line 92
    if-gez v15, :cond_ad

    .line 93
    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x4

    move-wide/from16 v21, v8

    move-object v8, v5

    move v9, v14

    move-wide/from16 v23, v10

    move v10, v15

    move/from16 v11, v16

    move-wide v14, v12

    move-wide/from16 v12, v18

    move-wide/from16 v25, v14

    move/from16 v14, v20

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 94
    const/16 v18, 0x1

    goto :goto_d3

    .line 96
    :cond_ad
    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    const/16 v16, 0x0

    move-object v8, v5

    move v9, v14

    move v11, v15

    move/from16 v14, v16

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 97
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_d3

    .line 86
    :cond_c6
    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    goto :goto_d3

    .line 84
    :cond_cd
    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    .line 102
    :goto_d3
    invoke-virtual {v5, v3, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 103
    const/4 v7, -0x1

    if-ne v6, v7, :cond_dd

    .line 104
    move-object v2, v3

    goto/16 :goto_183

    .line 106
    :cond_dd
    const/4 v8, -0x2

    if-eq v6, v8, :cond_182

    const/4 v8, -0x3

    if-ne v6, v8, :cond_e6

    .line 108
    move-object v2, v3

    goto/16 :goto_183

    .line 110
    :cond_e6
    if-ltz v6, :cond_176

    .line 111
    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v8, :cond_ef

    .line 112
    iget-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_f1

    .line 111
    :cond_ef
    move-wide/from16 v8, v21

    .line 114
    :goto_f1
    invoke-virtual {v5, v6}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 115
    if-nez v10, :cond_fd

    .line 116
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    aget-object v10, v10, v6

    .line 118
    :cond_fd
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v11, :cond_161

    if-eqz v10, :cond_161

    .line 119
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v12, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 121
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 122
    mul-int/lit8 v11, v4, 0x2

    move-wide/from16 v12, v25

    .line 123
    :goto_11e
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-lt v14, v11, :cond_15c

    .line 124
    nop

    .line 125
    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    :goto_128
    if-ge v14, v4, :cond_13b

    .line 126
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 127
    move-object/from16 v20, v3

    int-to-long v2, v7

    mul-long v2, v2, v2

    add-long/2addr v15, v2

    .line 125
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v20

    const/4 v2, 0x0

    const/4 v7, -0x1

    goto :goto_128

    .line 129
    :cond_13b
    move-object/from16 v20, v3

    add-long v2, v23, v15

    .line 130
    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    .line 131
    const-wide/16 v14, 0x100

    cmp-long v7, v12, v14

    if-ltz v7, :cond_155

    .line 132
    invoke-static {v2, v3, v12, v13}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->frameRmsToLevel(JJ)I

    move-result v2

    .line 133
    invoke-static {v1, v8, v9, v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->writeBucket(Ljava/util/ArrayList;JI)V

    .line 134
    nop

    .line 135
    const-wide/16 v12, 0x0

    const-wide/16 v23, 0x0

    goto :goto_157

    .line 131
    :cond_155
    move-wide/from16 v23, v2

    .line 137
    :goto_157
    move-object/from16 v3, v20

    const/4 v2, 0x0

    const/4 v7, -0x1

    goto :goto_11e

    .line 123
    :cond_15c
    move-object/from16 v20, v3

    move-wide/from16 v10, v23

    goto :goto_167

    .line 118
    :cond_161
    move-object/from16 v20, v3

    .line 139
    move-wide/from16 v10, v23

    move-wide/from16 v12, v25

    :goto_167
    const/4 v2, 0x0

    invoke-virtual {v5, v6, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 140
    move-object/from16 v2, v20

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_17d

    .line 141
    const/16 v17, 0x1

    goto :goto_17d

    .line 110
    :cond_176
    move-object v2, v3

    move-wide/from16 v8, v21

    move-wide/from16 v10, v23

    move-wide/from16 v12, v25

    .line 144
    :cond_17d
    :goto_17d
    move-object v3, v2

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto/16 :goto_6d

    .line 106
    :cond_182
    move-object v2, v3

    .line 83
    :goto_183
    move-object v3, v2

    move-wide/from16 v8, v21

    move-wide/from16 v10, v23

    move-wide/from16 v12, v25

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto/16 :goto_6d

    .line 146
    :cond_18e
    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    const-wide/16 v2, 0x0

    cmp-long v4, v12, v2

    if-lez v4, :cond_1a5

    .line 147
    move-wide/from16 v10, v23

    invoke-static {v10, v11, v12, v13}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->frameRmsToLevel(JJ)I

    move-result v2

    .line 148
    move-wide/from16 v8, v21

    invoke-static {v1, v8, v9, v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->writeBucket(Ljava/util/ArrayList;JI)V

    .line 151
    :cond_1a5
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    .line 152
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 153
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 155
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v2, v0, v2

    return-object v0

    .line 158
    :cond_1bb
    const/4 v2, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->fillTimelineGaps(Ljava/util/ArrayList;)V

    .line 159
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 160
    nop

    :goto_1c6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1db

    .line 161
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c6

    .line 163
    :cond_1db
    return-object v0
.end method

.method private static fillTimelineGaps(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 181
    nop

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 183
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 184
    if-lez v2, :cond_17

    .line 185
    move v1, v2

    goto :goto_20

    .line 186
    :cond_17
    if-lez v1, :cond_20

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 190
    :cond_23
    return-void
.end method

.method private static frameRmsToLevel(JJ)I
    .registers 8

    .line 212
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_8

    .line 213
    return v0

    .line 215
    :cond_8
    long-to-double p0, p0

    long-to-double p2, p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    .line 216
    const-wide p2, 0x40bf400000000000L    # 8000.0

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double p0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 217
    if-gez p1, :cond_21

    .line 218
    return v0

    .line 220
    :cond_21
    const/16 p0, 0x64

    if-le p1, p0, :cond_26

    .line 221
    return p0

    .line 223
    :cond_26
    return p1
.end method

.method private static ptsToBucketIndex(J)I
    .registers 5

    .line 193
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 194
    move-wide p0, v0

    .line 196
    :cond_7
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    .line 197
    const-wide/16 v0, 0x14

    div-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static readIntFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 4

    .line 201
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 205
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_e

    return p0

    .line 206
    :catchall_e
    move-exception p0

    .line 207
    return p2

    .line 202
    :cond_10
    :goto_10
    return p2
.end method

.method private static writeBucket(Ljava/util/ArrayList;JI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;JI)V"
        }
    .end annotation

    .line 167
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->ptsToBucketIndex(J)I

    move-result p1

    .line 168
    const/4 p2, 0x0

    if-gez p1, :cond_8

    .line 169
    const/4 p1, 0x0

    .line 171
    :cond_8
    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_16

    .line 172
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 174
    :cond_16
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 175
    if-le p3, p2, :cond_29

    .line 176
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_29
    return-void
.end method


# virtual methods
.method dispatchEnded()V
    .registers 3

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 303
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 306
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 308
    :cond_13
    return-void
.end method

.method dispatchError()V
    .registers 3

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 313
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 316
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 318
    :cond_13
    return-void
.end method

.method dispatchLevel(I)V
    .registers 4

    .line 247
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-nez v1, :cond_11

    goto :goto_31

    .line 251
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_18

    .line 252
    return-void

    .line 254
    :cond_18
    if-gez p1, :cond_1b

    .line 255
    const/4 p1, 0x0

    .line 257
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, v0

    if-lt p1, v0, :cond_25

    .line 258
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 260
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    .line 262
    goto :goto_30

    .line 261
    :catchall_2f
    move-exception p1

    .line 263
    :goto_30
    return-void

    .line 248
    :cond_31
    :goto_31
    return-void
.end method

.method public release()V
    .registers 4

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 323
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 326
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    .line 328
    :try_start_13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    .line 332
    :cond_1e
    goto :goto_20

    .line 331
    :catchall_1f
    move-exception v0

    .line 334
    :goto_20
    :try_start_20
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    .line 336
    goto :goto_27

    .line 335
    :catchall_26
    move-exception v0

    .line 337
    :goto_27
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 339
    :cond_29
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 340
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 341
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncAnchorWallMs:J

    .line 342
    return-void
.end method

.method resolveEnvelopeIndex(I)I
    .registers 4

    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    array-length v0, v0

    if-nez v0, :cond_9

    goto :goto_1b

    .line 269
    :cond_9
    add-int/lit8 p1, p1, 0x32

    .line 270
    if-gez p1, :cond_e

    .line 271
    goto :goto_f

    .line 270
    :cond_e
    move v1, p1

    .line 273
    :goto_f
    div-int/lit8 v1, v1, 0x14

    .line 274
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, p1

    if-lt v1, v0, :cond_1a

    .line 275
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 277
    :cond_1a
    return v1

    .line 267
    :cond_1b
    :goto_1b
    return v1
.end method

.method resolvePlaybackPositionMs()I
    .registers 8

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 282
    return v1

    .line 284
    :cond_6
    nop

    .line 286
    :try_start_7
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    .line 288
    goto :goto_e

    .line 287
    :catchall_c
    move-exception v0

    const/4 v0, 0x0

    .line 289
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncAnchorWallMs:J

    sub-long/2addr v2, v4

    .line 290
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1c

    .line 291
    move-wide v2, v4

    .line 293
    :cond_1c
    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 294
    if-gez v0, :cond_25

    .line 295
    return v1

    .line 297
    :cond_25
    return v0
.end method

.method public startPlayback(Landroid/content/Context;Landroid/net/Uri;[ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 229
    iput-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 230
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 231
    if-eqz p3, :cond_4a

    array-length p3, p3

    if-eqz p3, :cond_4a

    .line 234
    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 235
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 236
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 237
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 238
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 239
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncAnchorWallMs:J

    .line 241
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 242
    new-instance p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 243
    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void

    .line 232
    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "empty envelope"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
