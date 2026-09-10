.class public final Lorg/apache/poi/util/LittleEndianByteArrayInputStream;
.super Ljava/lang/Object;
.source "LittleEndianByteArrayInputStream.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# instance fields
.field private final _buf:[B

.field private final _endIndex:I

.field private _readIndex:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BII)V

    .line 40
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "startOffset"    # I

    .line 36
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BII)V

    .line 37
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "startOffset"    # I
    .param p3, "maxReadLen"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_buf:[B

    .line 32
    iput p2, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    .line 33
    add-int v0, p2, p3

    iput v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_endIndex:I

    .line 34
    return-void
.end method

.method private checkPosition(I)V
    .locals 2
    .param p1, "i"    # I

    .line 46
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_endIndex:I

    iget v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 49
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer overrun"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 43
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_endIndex:I

    iget v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getReadIndex()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    return v0
.end method

.method public readByte()B
    .locals 3

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 56
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_buf:[B

    iget v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 117
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    .line 115
    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 109
    invoke-direct {p0, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 110
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_buf:[B

    iget v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    .line 112
    return-void
.end method

.method public readInt()I
    .locals 7

    .line 60
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 61
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    .line 63
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_buf:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 64
    .local v0, "b0":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 65
    .local v2, "b1":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    .line 66
    .local v3, "b2":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    .line 67
    .local v1, "b3":I
    iput v5, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    .line 68
    shl-int/lit8 v4, v1, 0x18

    shl-int/lit8 v6, v3, 0x10

    add-int/2addr v4, v6

    shl-int/lit8 v6, v2, 0x8

    add-int/2addr v4, v6

    shl-int/lit8 v6, v0, 0x0

    add-int/2addr v4, v6

    return v4
.end method

.method public readLong()J
    .locals 14

    .line 71
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 72
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    .line 74
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_buf:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 75
    .local v0, "b0":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 76
    .local v2, "b1":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    .line 77
    .local v3, "b2":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 78
    .local v4, "b3":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    .line 79
    .local v5, "b4":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    .line 80
    .local v6, "b5":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    .line 81
    .local v7, "b6":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    .line 82
    .local v1, "b7":I
    iput v9, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    .line 83
    int-to-long v10, v1

    const/16 v8, 0x38

    shl-long/2addr v10, v8

    int-to-long v12, v7

    const/16 v8, 0x30

    shl-long/2addr v12, v8

    add-long/2addr v10, v12

    int-to-long v12, v6

    const/16 v8, 0x28

    shl-long/2addr v12, v8

    add-long/2addr v10, v12

    int-to-long v12, v5

    const/16 v8, 0x20

    shl-long/2addr v12, v8

    add-long/2addr v10, v12

    int-to-long v12, v4

    const/16 v8, 0x18

    shl-long/2addr v12, v8

    add-long/2addr v10, v12

    shl-int/lit8 v8, v3, 0x10

    int-to-long v12, v8

    add-long/2addr v10, v12

    shl-int/lit8 v8, v2, 0x8

    int-to-long v12, v8

    add-long/2addr v10, v12

    shl-int/lit8 v8, v0, 0x0

    int-to-long v12, v8

    add-long/2addr v10, v12

    return-wide v10
.end method

.method public readShort()S
    .locals 1

    .line 93
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUByte()I
    .locals 3

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 97
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_buf:[B

    iget v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUShort()I
    .locals 5

    .line 100
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 101
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    .line 103
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_buf:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 104
    .local v0, "b0":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 105
    .local v1, "b1":I
    iput v3, p0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->_readIndex:I

    .line 106
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v4, v0, 0x0

    add-int/2addr v2, v4

    return v2
.end method
