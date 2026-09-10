.class public Ljavax/mail/util/SharedFileInputStream;
.super Ljava/io/BufferedInputStream;
.source "SharedFileInputStream.java"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/util/SharedFileInputStream$SharedFile;
    }
.end annotation


# static fields
.field private static defaultBufferSize:I


# instance fields
.field protected bufpos:J

.field protected bufsize:I

.field protected datalen:J

.field protected in:Ljava/io/RandomAccessFile;

.field private master:Z

.field private sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

.field protected start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x800

    sput v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/io/File;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 195
    if-gtz p2, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 211
    if-gtz p2, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    .line 214
    return-void
.end method

.method private constructor <init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V
    .locals 2
    .param p1, "sf"    # Ljavax/mail/util/SharedFileInputStream$SharedFile;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .param p6, "bufsize"    # I

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 232
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 233
    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 234
    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 235
    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 236
    iput-wide p4, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 237
    iput p6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 238
    new-array v0, p6, [B

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 239
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    return-void
.end method

.method private fill()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 249
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-gez v5, :cond_3

    .line 250
    iput v10, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 251
    iget-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 271
    :cond_0
    :goto_0
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v5, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    .line 273
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v5, v5

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int v0, v5, v6

    .line 274
    .local v0, "len":I
    iget-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v8, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v6, v8

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-wide v8, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 275
    iget-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    iget-wide v8, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v10, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v8, v10

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v10, v5

    add-long/2addr v8, v10

    sub-long/2addr v6, v8

    long-to-int v0, v6

    .line 276
    :cond_1
    iget-object v6, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    monitor-enter v6

    .line 277
    :try_start_0
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-wide v8, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v7, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v10, v7

    add-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 278
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-object v7, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v8, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-virtual {v5, v7, v8, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 279
    .local v1, "n":I
    if-lez v1, :cond_2

    .line 280
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v5, v1

    iput v5, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    .line 276
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    return-void

    .line 252
    .end local v0    # "len":I
    .end local v1    # "n":I
    :cond_3
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget-object v6, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v6, v6

    if-lt v5, v6, :cond_0

    .line 253
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-lez v5, :cond_4

    .line 254
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    sub-int v4, v5, v6

    .line 255
    .local v4, "sz":I
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iget-object v7, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    invoke-static {v5, v6, v7, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iput v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 257
    iget-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 258
    iput v10, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    goto :goto_0

    .line 259
    .end local v4    # "sz":I
    :cond_4
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v5, v5

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-lt v5, v6, :cond_5

    .line 260
    const/4 v5, -0x1

    iput v5, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    .line 261
    iput v10, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 262
    iget-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    goto/16 :goto_0

    .line 264
    :cond_5
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    mul-int/lit8 v3, v5, 0x2

    .line 265
    .local v3, "nsz":I
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-le v3, v5, :cond_6

    .line 266
    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    .line 267
    :cond_6
    new-array v2, v3, [B

    .line 268
    .local v2, "nbuf":[B
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v5, v10, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iput-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    goto/16 :goto_0

    .line 276
    .end local v2    # "nbuf":[B
    .end local v3    # "nsz":I
    .restart local v0    # "len":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private in_available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V
    .locals 2
    .param p1, "sf"    # Ljavax/mail/util/SharedFileInputStream$SharedFile;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 218
    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 219
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 220
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 221
    iput p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 222
    new-array v0, p2, [B

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 223
    return-void
.end method

.method private read1([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int v0, v2, v3

    .line 308
    .local v0, "avail":I
    if-gtz v0, :cond_0

    .line 319
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 320
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int v0, v2, v3

    .line 321
    if-gtz v0, :cond_0

    const/4 v1, -0x1

    .line 326
    :goto_0
    return v1

    .line 323
    :cond_0
    if-ge v0, p3, :cond_1

    move v1, v0

    .line 324
    .local v1, "cnt":I
    :goto_1
    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    goto :goto_0

    .end local v1    # "cnt":I
    :cond_1
    move v1, p3

    .line 323
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 408
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->in_available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 472
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 475
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v0}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->forceClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :goto_1
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 481
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 482
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    goto :goto_0

    .line 478
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v0}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 479
    :catchall_0
    move-exception v0

    .line 480
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 481
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 482
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 483
    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 544
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 545
    invoke-virtual {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V

    .line 546
    return-void
.end method

.method public getPosition()J
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    .line 426
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized newStream(JJ)Ljava/io/InputStream;
    .locals 7
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 514
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 515
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_2

    .line 517
    iget-wide p3, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 518
    :cond_2
    new-instance v0, Ljavax/mail/util/SharedFileInputStream;

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 519
    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    add-long/2addr v2, p1

    sub-long v4, p3, p1

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 518
    invoke-direct/range {v0 .. v6}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 294
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    if-lt v0, v1, :cond_0

    .line 295
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 296
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 297
    const/4 v0, -0x1

    .line 299
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 348
    or-int v2, p2, p3

    add-int v3, p2, p3

    or-int/2addr v2, v3

    array-length v3, p1

    add-int v4, p2, p3

    sub-int/2addr v3, v4

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 349
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 350
    :cond_0
    if-nez p3, :cond_2

    .line 351
    const/4 v0, 0x0

    .line 361
    :cond_1
    monitor-exit p0

    return v0

    .line 354
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I

    move-result v0

    .line 355
    .local v0, "n":I
    if-lez v0, :cond_1

    .line 356
    :goto_0
    if-ge v0, p3, :cond_1

    .line 357
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-direct {p0, p1, v2, v3}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 358
    .local v1, "n1":I
    if-lez v1, :cond_1

    .line 359
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 445
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-gez v0, :cond_0

    .line 446
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 447
    :cond_0
    :try_start_1
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 373
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    cmp-long v4, p1, v2

    if-gtz v4, :cond_1

    .line 395
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 377
    :cond_1
    :try_start_1
    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 379
    .local v0, "avail":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 387
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 388
    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 389
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 393
    :cond_2
    cmp-long v4, v0, p1

    if-gez v4, :cond_3

    move-wide v2, v0

    .line 394
    .local v2, "skipped":J
    :goto_1
    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v4, v4

    iput v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 373
    .end local v0    # "avail":J
    .end local v2    # "skipped":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "avail":J
    :cond_3
    move-wide v2, p1

    .line 393
    goto :goto_1
.end method
