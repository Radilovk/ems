.class public Lorg/apache/poi/util/LittleEndianInputStream;
.super Ljava/io/FilterInputStream;
.source "LittleEndianInputStream.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    return-void
.end method

.method private static checkEOF(II)V
    .locals 2
    .param p0, "actualBytes"    # I
    .param p1, "expectedBytes"    # I

    .prologue
    .line 114
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eq p0, p1, :cond_1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected end-of-file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 41
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 120
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([BII)V

    .line 121
    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->read([BII)I

    move-result v1

    invoke-static {v1, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readInt()I
    .locals 4

    .prologue
    .line 66
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 68
    .local v0, "buf":[B
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->read([B)I

    move-result v2

    array-length v3, v0

    invoke-static {v2, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v2

    return v2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readLong()J
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 90
    new-array v0, v2, [B

    .line 92
    .local v0, "buf":[B
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->read([B)I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getLong([B)J

    move-result-wide v2

    return-wide v2

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readShort()S
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUByte()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 52
    new-array v0, v2, [B

    .line 54
    .local v0, "buf":[B
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->read([B)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getUByte([B)S

    move-result v2

    return v2

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readUInt()J
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v2

    int-to-long v0, v2

    .line 86
    .local v0, "retNum":J
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    return-wide v2
.end method

.method public readUShort()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 104
    new-array v0, v2, [B

    .line 106
    .local v0, "buf":[B
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->read([B)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v2

    return v2

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
