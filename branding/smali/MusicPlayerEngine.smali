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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
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
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 40
    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 41
    nop

    .line 42
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    const-string v5, "mime"

    const/4 v6, -0x1

    if-ge v3, v4, :cond_30

    .line 43
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 44
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    if-eqz v4, :cond_2d

    const-string v7, "audio/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 46
    nop

    .line 47
    goto :goto_31

    .line 42
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_30
    const/4 v3, -0x1

    .line 50
    :goto_31
    if-gez v3, :cond_37

    .line 51
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 52
    return-object v1

    .line 54
    :cond_37
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 56
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 58
    invoke-virtual {v4, v3, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 59
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const/16 v3, 0x200

    new-array v5, v3, [S

    .line 63
    nop

    .line 64
    new-instance v14, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v14}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 65
    nop

    .line 66
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 68
    :goto_60
    const/4 v11, 0x1

    if-nez v15, :cond_13a

    .line 69
    const-wide/16 v9, 0x2710

    if-nez v16, :cond_af

    .line 70
    invoke-virtual {v4, v9, v10}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    .line 71
    if-ltz v8, :cond_ab

    .line 72
    invoke-virtual {v4, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 73
    if-nez v7, :cond_79

    .line 74
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    aget-object v7, v7, v8

    .line 76
    :cond_79
    invoke-virtual {v0, v7, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    .line 77
    if-gez v12, :cond_97

    .line 78
    const/4 v12, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x4

    move-object v7, v4

    move-wide v2, v9

    move v9, v12

    move/from16 v10, v16

    move-wide/from16 v11, v17

    move/from16 v20, v13

    move/from16 v13, v19

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 79
    const/16 v16, 0x1

    goto :goto_b2

    .line 81
    :cond_97
    move-wide v2, v9

    move/from16 v20, v13

    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v17

    const/4 v13, 0x0

    move-object v7, v4

    move v10, v12

    move-wide/from16 v11, v17

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 82
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_b2

    .line 71
    :cond_ab
    move-wide v2, v9

    move/from16 v20, v13

    goto :goto_b2

    .line 69
    :cond_af
    move-wide v2, v9

    move/from16 v20, v13

    .line 87
    :goto_b2
    invoke-virtual {v4, v14, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 88
    if-ne v2, v6, :cond_bc

    .line 89
    const/16 v8, 0x200

    goto/16 :goto_133

    .line 91
    :cond_bc
    const/4 v3, -0x2

    if-eq v2, v3, :cond_131

    const/4 v3, -0x3

    if-ne v2, v3, :cond_c6

    .line 93
    const/16 v8, 0x200

    goto/16 :goto_133

    .line 95
    :cond_c6
    if-ltz v2, :cond_128

    .line 96
    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 97
    if-nez v3, :cond_d4

    .line 98
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    aget-object v3, v3, v2

    .line 100
    :cond_d4
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v7, :cond_118

    if-eqz v3, :cond_118

    .line 101
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 103
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    move/from16 v13, v20

    .line 104
    :goto_f3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_115

    .line 105
    add-int/lit8 v7, v13, 0x1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    aput-short v8, v5, v13

    .line 106
    const/16 v8, 0x200

    if-lt v7, v8, :cond_113

    .line 107
    invoke-static {v5, v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->sampleWindowToLevel([SI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const/4 v13, 0x0

    goto :goto_f3

    .line 106
    :cond_113
    move v13, v7

    goto :goto_f3

    .line 104
    :cond_115
    const/16 v8, 0x200

    goto :goto_11c

    .line 100
    :cond_118
    const/16 v8, 0x200

    .line 112
    move/from16 v13, v20

    :goto_11c
    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 113
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_12c

    .line 114
    const/4 v15, 0x1

    goto :goto_12c

    .line 95
    :cond_128
    const/16 v8, 0x200

    move/from16 v13, v20

    .line 117
    :cond_12c
    :goto_12c
    const/4 v2, 0x0

    const/16 v3, 0x200

    goto/16 :goto_60

    .line 91
    :cond_131
    const/16 v8, 0x200

    .line 68
    :goto_133
    move/from16 v13, v20

    const/4 v2, 0x0

    const/16 v3, 0x200

    goto/16 :goto_60

    .line 119
    :cond_13a
    move/from16 v20, v13

    move/from16 v2, v20

    if-lez v2, :cond_14b

    .line 120
    invoke-static {v5, v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->sampleWindowToLevel([SI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_14b
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 124
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 125
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_161

    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v2, v0, v2

    return-object v0

    .line 130
    :cond_161
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 131
    nop

    :goto_169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_17e

    .line 132
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_169

    .line 134
    :cond_17e
    return-object v0
.end method

.method private static sampleWindowToLevel([SI)I
    .registers 8

    .line 138
    const/4 v0, 0x0

    if-eqz p0, :cond_33

    if-gtz p1, :cond_6

    goto :goto_33

    .line 141
    :cond_6
    const-wide/16 v1, 0x0

    .line 142
    const/4 v3, 0x0

    :goto_9
    if-ge v3, p1, :cond_14

    .line 143
    aget-short v4, p0, v3

    .line 144
    int-to-long v4, v4

    mul-long v4, v4, v4

    add-long/2addr v1, v4

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 146
    :cond_14
    long-to-double v1, v1

    int-to-double p0, p1

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    .line 147
    const-wide v1, 0x40bf400000000000L    # 8000.0

    div-double/2addr p0, v1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double p0, p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 148
    if-gez p1, :cond_2d

    .line 149
    return v0

    .line 151
    :cond_2d
    const/16 p0, 0x64

    if-le p1, p0, :cond_32

    .line 152
    return p0

    .line 154
    :cond_32
    return p1

    .line 139
    :cond_33
    :goto_33
    return v0
.end method


# virtual methods
.method dispatchEnded()V
    .registers 3

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 198
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 201
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 203
    :cond_13
    return-void
.end method

.method dispatchError()V
    .registers 3

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 208
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 211
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 213
    :cond_13
    return-void
.end method

.method dispatchLevel(I)V
    .registers 4

    .line 177
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-nez v1, :cond_11

    goto :goto_31

    .line 181
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_18

    .line 182
    return-void

    .line 184
    :cond_18
    if-gez p1, :cond_1b

    .line 185
    const/4 p1, 0x0

    .line 187
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, v0

    if-lt p1, v0, :cond_25

    .line 188
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 190
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    .line 192
    goto :goto_30

    .line 191
    :catchall_2f
    move-exception p1

    .line 193
    :goto_30
    return-void

    .line 178
    :cond_31
    :goto_31
    return-void
.end method

.method public release()V
    .registers 4

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 218
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 221
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    .line 223
    :try_start_13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    .line 227
    :cond_1e
    goto :goto_20

    .line 226
    :catchall_1f
    move-exception v0

    .line 229
    :goto_20
    :try_start_20
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    .line 231
    goto :goto_27

    .line 230
    :catchall_26
    move-exception v0

    .line 232
    :goto_27
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 234
    :cond_29
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 235
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 236
    return-void
.end method

.method public startPlayback(Landroid/content/Context;Landroid/net/Uri;[ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 160
    iput-object p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 161
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 162
    if-eqz p3, :cond_44

    array-length p3, p3

    if-eqz p3, :cond_44

    .line 165
    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 166
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 167
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 168
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 169
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 170
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 171
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 172
    new-instance p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 173
    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void

    .line 163
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "empty envelope"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
