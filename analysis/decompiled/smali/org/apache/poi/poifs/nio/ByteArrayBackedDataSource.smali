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

    .prologue
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

    .prologue
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
    .locals 11
    .param p1, "length"    # J

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    .line 71
    iget-object v3, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    array-length v3, v3

    int-to-long v4, v3

    sub-long v0, p1, v4

    .line 72
    .local v0, "difference":J
    long-to-double v4, v0

    iget-object v3, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    array-length v3, v3

    int-to-double v6, v3

    mul-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 73
    iget-object v3, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    array-length v3, v3

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-long v0, v4

    .line 75
    :cond_0
    const-wide/16 v4, 0x1000

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 76
    const-wide/16 v0, 0x1000

    .line 79
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    array-length v3, v3

    int-to-long v4, v3

    add-long/2addr v4, v0

    long-to-int v3, v4

    new-array v2, v3, [B

    .line 80
    .local v2, "nb":[B
    iget-object v3, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    iget-wide v4, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    long-to-int v4, v4

    invoke-static {v3, v10, v2, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput-object v2, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    .line 82
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
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
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    long-to-int v2, v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 87
    return-void
.end method

.method public read(IJ)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "length"    # I
    .param p2, "position"    # J

    .prologue
    .line 41
    iget-wide v2, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    cmp-long v1, p2, v2

    if-ltz v1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in stream of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_0
    int-to-long v2, p1

    iget-wide v4, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    sub-long/2addr v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 49
    .local v0, "toRead":I
    iget-object v1, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    long-to-int v2, p2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public size()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)V
    .locals 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    add-long v0, p2, v2

    .line 56
    .local v0, "endPosition":J
    iget-object v2, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->buffer:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

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

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 65
    iput-wide v0, p0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;->size:J

    .line 67
    :cond_1
    return-void
.end method
