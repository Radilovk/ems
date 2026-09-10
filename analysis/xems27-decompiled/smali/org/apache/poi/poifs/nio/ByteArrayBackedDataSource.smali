.class public Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;
.super Lorg/apache/poi/poifs/nio/DataSource;
.source "ByteArrayBackedDataSource.java"


# instance fields
.field private buffer:[B

.field private size:J


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 36
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;-><init>([BI)V

    .line 37
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/poifs/nio/DataSource;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    .line 33
    int-to-long v0, p2

    iput-wide v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    .line 34
    return-void
.end method

.method private extend(J)V
    .locals 10
    .param p1, "length"    # J

    .line 71
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    array-length v1, v0

    int-to-long v1, v1

    sub-long v1, p1, v1

    .line 72
    .local v1, "difference":J
    long-to-double v3, v1

    array-length v5, v0

    int-to-double v5, v5

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    mul-double v5, v5, v7

    cmpg-double v9, v3, v5

    if-gez v9, :cond_0

    .line 73
    array-length v0, v0

    int-to-double v3, v0

    mul-double v3, v3, v7

    double-to-long v1, v3

    .line 75
    :cond_0
    const-wide/16 v3, 0x1000

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    .line 76
    const-wide/16 v1, 0x1000

    .line 79
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v3, v1

    long-to-int v4, v3

    new-array v3, v4, [B

    .line 80
    .local v3, "nb":[B
    iget-wide v4, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    long-to-int v5, v4

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput-object v3, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    .line 82
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    .line 98
    return-void
.end method

.method public copyTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    iget-wide v1, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    long-to-int v2, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 87
    return-void
.end method

.method public read(IJ)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "length"    # I
    .param p2, "position"    # J

    .line 41
    iget-wide v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 48
    int-to-long v2, p1

    sub-long/2addr v0, p2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 49
    .local v1, "toRead":I
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    long-to-int v2, p2

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 42
    .end local v1    # "toRead":I
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " in stream of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)V
    .locals 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p2

    .line 56
    .local v0, "endPosition":J
    iget-object v2, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 57
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->extend(J)V

    .line 61
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    long-to-int v3, p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 64
    iget-wide v2, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 65
    iput-wide v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    .line 67
    :cond_1
    return-void
.end method
