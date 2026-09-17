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

.method private static buildEnvelope(Landroid/content/Context;Landroid/net/Uri;)[I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 96
    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 97
    nop

    .line 98
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    const-string v5, "mime"

    if-ge v3, v4, :cond_2f

    .line 99
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 100
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    if-eqz v4, :cond_2c

    const-string v6, "audio/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 102
    nop

    .line 103
    goto :goto_30

    .line 98
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2f
    const/4 v3, -0x1

    .line 106
    :goto_30
    if-gez v3, :cond_36

    .line 107
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 108
    return-object v1

    .line 110
    :cond_36
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 111
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 112
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 114
    invoke-virtual {v4, v3, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 115
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    const/16 v3, 0x200

    new-array v12, v3, [S

    .line 119
    nop

    .line 120
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 121
    nop

    .line 122
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 124
    :goto_5f
    const/4 v11, 0x1

    if-nez v14, :cond_10b

    .line 125
    const-wide/16 v9, 0x1388

    if-nez v16, :cond_a1

    .line 126
    invoke-virtual {v4, v9, v10}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    .line 127
    if-ltz v6, :cond_9f

    .line 128
    invoke-virtual {v4, v6}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 129
    if-nez v5, :cond_78

    .line 130
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v5, v5, v6

    .line 132
    :cond_78
    invoke-virtual {v0, v5, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 133
    if-gez v8, :cond_90

    .line 134
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x4

    move-object v5, v4

    move-wide v2, v9

    move-wide/from16 v9, v16

    move/from16 v11, v18

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 135
    const/16 v16, 0x1

    goto :goto_a2

    .line 137
    :cond_90
    move-wide v2, v9

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-object v5, v4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 138
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_a2

    .line 127
    :cond_9f
    move-wide v2, v9

    goto :goto_a2

    .line 125
    :cond_a1
    move-wide v2, v9

    .line 143
    :goto_a2
    invoke-virtual {v4, v13, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 144
    if-ltz v2, :cond_104

    .line 145
    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 146
    if-nez v3, :cond_b4

    .line 147
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    aget-object v3, v3, v2

    .line 149
    :cond_b4
    iget v5, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_f6

    if-eqz v3, :cond_f6

    .line 150
    iget v5, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 151
    iget v5, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 152
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 153
    :goto_d1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_f3

    .line 154
    add-int/lit8 v5, v15, 0x1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    aput-short v6, v12, v15

    .line 155
    const/16 v6, 0x200

    if-lt v5, v6, :cond_f1

    .line 156
    invoke-static {v12, v5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->waveformToSoundPercent([SI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    const/4 v15, 0x0

    goto :goto_d1

    .line 155
    :cond_f1
    move v15, v5

    goto :goto_d1

    .line 153
    :cond_f3
    const/16 v6, 0x200

    goto :goto_f8

    .line 149
    :cond_f6
    const/16 v6, 0x200

    .line 161
    :goto_f8
    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 162
    iget v2, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_106

    .line 163
    const/4 v14, 0x1

    goto :goto_106

    .line 144
    :cond_104
    const/16 v6, 0x200

    .line 166
    :cond_106
    :goto_106
    const/4 v2, 0x0

    const/16 v3, 0x200

    goto/16 :goto_5f

    .line 168
    :cond_10b
    if-lez v15, :cond_118

    .line 169
    invoke-static {v12, v15}, Lcom/isaigu/gymapp/train/utils/MusicSync;->waveformToSoundPercent([SI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_118
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 173
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 174
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 176
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v2, v0, v2

    return-object v0

    .line 179
    :cond_12e
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 180
    nop

    :goto_136
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_14b

    .line 181
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_136

    .line 183
    :cond_14b
    return-object v0
.end method


# virtual methods
.method dispatchEnded()V
    .registers 3

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 77
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 80
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onPlaybackEnded()V

    .line 82
    :cond_13
    return-void
.end method

.method dispatchError()V
    .registers 3

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 86
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    if-eqz v0, :cond_c

    .line 87
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-eqz v0, :cond_13

    .line 90
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onError()V

    .line 92
    :cond_13
    return-void
.end method

.method dispatchLevel(I)V
    .registers 4

    .line 56
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    if-nez v1, :cond_11

    goto :goto_31

    .line 60
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_18

    .line 61
    return-void

    .line 63
    :cond_18
    if-gez p1, :cond_1b

    .line 64
    const/4 p1, 0x0

    .line 66
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length v0, v0

    if-lt p1, v0, :cond_25

    .line 67
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 69
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;->onWaveformLevel(I)V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    .line 71
    goto :goto_30

    .line 70
    :catchall_2f
    move-exception p1

    .line 72
    :goto_30
    return-void

    .line 57
    :cond_31
    :goto_31
    return-void
.end method

.method public release()V
    .registers 4

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 189
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 192
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    .line 194
    :try_start_13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    .line 198
    :cond_1e
    goto :goto_20

    .line 197
    :catchall_1f
    move-exception v0

    .line 200
    :goto_20
    :try_start_20
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    .line 202
    goto :goto_27

    .line 201
    :catchall_26
    move-exception v0

    .line 203
    :goto_27
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 205
    :cond_29
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 206
    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 207
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 39
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->listener:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;

    .line 40
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->buildEnvelope(Landroid/content/Context;Landroid/net/Uri;)[I

    move-result-object p3

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I

    .line 41
    if-eqz p3, :cond_48

    array-length p3, p3

    if-eqz p3, :cond_48

    .line 44
    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    .line 45
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 46
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 47
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 48
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 49
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 50
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z

    .line 51
    new-instance p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    invoke-direct {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;-><init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->syncRunnable:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;

    .line 52
    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void

    .line 42
    :cond_48
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "empty envelope"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
