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
    if-lez p2, :cond_0

    .line 197
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    .line 198
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    if-lez p2, :cond_0

    .line 213
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    .line 214
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V
    .locals 2
    .param p1, "sf"    # Ljavax/mail/util/SharedFileInputStream$SharedFile;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .param p6, "bufsize"    # I

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

    .line 158
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 160
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fill()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 250
    iput v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 251
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    goto :goto_0

    .line 252
    :cond_0
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 253
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-lez v0, :cond_1

    .line 254
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    sub-int/2addr v0, v2

    .line 255
    .local v0, "sz":I
    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iget-object v4, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 257
    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 258
    iput v1, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    .line 259
    .end local v0    # "sz":I
    goto :goto_1

    :cond_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v0, v0

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-lt v0, v2, :cond_2

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    .line 261
    iput v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 262
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 263
    goto :goto_1

    .line 264
    :cond_2
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    mul-int/lit8 v0, v0, 0x2

    .line 265
    .local v0, "nsz":I
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-le v0, v2, :cond_3

    .line 266
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    .line 267
    :cond_3
    new-array v2, v0, [B

    .line 268
    .local v2, "nbuf":[B
    iget-object v3, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iput-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    goto :goto_1

    .line 252
    .end local v0    # "nsz":I
    .end local v2    # "nbuf":[B
    :cond_4
    :goto_0
    nop

    .line 271
    :goto_1
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    .line 273
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 274
    .local v0, "len":I
    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v3, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v1, v3

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-wide v3, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    .line 275
    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v5, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v1, v5

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    sub-long/2addr v3, v1

    long-to-int v0, v3

    .line 276
    :cond_5
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 278
    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 279
    .local v2, "n":I
    if-lez v2, :cond_6

    .line 280
    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    .line 276
    .end local v2    # "n":I
    :cond_6
    monitor-exit v1

    .line 282
    return-void

    .line 276
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private in_available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V
    .locals 3
    .param p1, "sf"    # Ljavax/mail/util/SharedFileInputStream$SharedFile;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 218
    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 219
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 220
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

    .line 307
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 308
    .local v0, "avail":I
    if-gtz v0, :cond_0

    .line 319
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 320
    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int v0, v1, v2

    .line 321
    if-gtz v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 323
    :cond_0
    if-ge v0, p3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p3

    .line 324
    .local v1, "cnt":I
    :goto_0
    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 326
    return v1
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 407
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 408
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->in_available()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 406
    .end local p0    # "this":Ljavax/mail/util/SharedFileInputStream;
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

    .line 472
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 473
    return-void

    .line 475
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->forceClose()V

    goto :goto_0

    .line 478
    :cond_1
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    nop

    .line 480
    :goto_0
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 481
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 482
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 484
    return-void

    .line 479
    :catchall_0
    move-exception v1

    .line 480
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 481
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 482
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 483
    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 544
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 545
    invoke-virtual {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V

    .line 546
    return-void
.end method

.method public getPosition()J
    .locals 4

    .line 494
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 496
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 495
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 425
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

    .line 424
    .end local p0    # "this":Ljavax/mail/util/SharedFileInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized newStream(JJ)Ljava/io/InputStream;
    .locals 8
    .param p1, "start"    # J
    .param p3, "end"    # J

    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    .line 514
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 516
    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 517
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    move-wide p3, v0

    .line 518
    .end local p0    # "this":Ljavax/mail/util/SharedFileInputStream;
    :cond_0
    new-instance v7, Ljavax/mail/util/SharedFileInputStream;

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 519
    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    add-long/2addr v2, p1

    sub-long v4, p3, p1

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 518
    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    .line 515
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    .end local p1    # "start":J
    .end local p3    # "end":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 293
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

    monitor-exit p0

    return v0

    .line 299
    .end local p0    # "this":Ljavax/mail/util/SharedFileInputStream;
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

    monitor-exit p0

    return v0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 347
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 348
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_4

    .line 350
    if-nez p3, :cond_0

    .line 351
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 354
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    .local v0, "n":I
    if-gtz v0, :cond_1

    monitor-exit p0

    return v0

    .line 356
    :cond_1
    :goto_0
    if-lt v0, p3, :cond_2

    goto :goto_1

    .line 357
    :cond_2
    add-int v1, p2, v0

    sub-int v2, p3, v0

    :try_start_2
    invoke-direct {p0, p1, v1, v2}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    .local v1, "n1":I
    if-gtz v1, :cond_3

    .line 361
    .end local v1    # "n1":I
    :goto_1
    monitor-exit p0

    return v0

    .line 359
    .restart local v1    # "n1":I
    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    .line 349
    .end local v0    # "n":I
    .end local v1    # "n1":I
    .end local p0    # "this":Ljavax/mail/util/SharedFileInputStream;
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 444
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 445
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-ltz v0, :cond_0

    .line 447
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    monitor-exit p0

    return-void

    .line 446
    .end local p0    # "this":Ljavax/mail/util/SharedFileInputStream;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 373
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 375
    monitor-exit p0

    return-wide v0

    .line 377
    :cond_0
    :try_start_1
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 379
    .local v2, "avail":J
    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    .line 387
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 388
    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 389
    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    .line 390
    monitor-exit p0

    return-wide v0

    .line 393
    .end local p0    # "this":Ljavax/mail/util/SharedFileInputStream;
    :cond_1
    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    move-wide v0, v2

    goto :goto_0

    :cond_2
    move-wide v0, p1

    .line 394
    .local v0, "skipped":J
    :goto_0
    :try_start_2
    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    long-to-int v5, v4

    iput v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    monitor-exit p0

    return-wide v0

    .line 372
    .end local v0    # "skipped":J
    .end local v2    # "avail":J
    .end local p1    # "n":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
