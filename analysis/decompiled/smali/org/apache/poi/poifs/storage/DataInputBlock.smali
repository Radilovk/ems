.class public final Lorg/apache/poi/poifs/storage/DataInputBlock;
.super Ljava/lang/Object;
.source "DataInputBlock.java"


# instance fields
.field private final _buf:[B

.field private _maxIndex:I

.field private _readIndex:I


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    .line 52
    iput p2, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    .line 53
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_maxIndex:I

    .line 54
    return-void
.end method

.method private readSpanning(Lorg/apache/poi/poifs/storage/DataInputBlock;I[B)V
    .locals 4
    .param p1, "prevBlock"    # Lorg/apache/poi/poifs/storage/DataInputBlock;
    .param p2, "prevBlockAvailable"    # I
    .param p3, "buf"    # [B

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v1, p1, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    iget v2, p1, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    invoke-static {v1, v2, p3, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    array-length v1, p3

    sub-int v0, v1, p2

    .line 175
    .local v0, "secondReadLen":I
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    invoke-static {v1, v3, p3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iput v0, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    .line 177
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_maxIndex:I

    iget v1, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readFully([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    iget v1, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget v0, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    .line 185
    return-void
.end method

.method public readIntLE()I
    .locals 8

    .prologue
    .line 91
    iget v4, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    .line 93
    .local v4, "i":I
    iget-object v6, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v6, v6, v4

    and-int/lit16 v0, v6, 0xff

    .line 94
    .local v0, "b0":I
    iget-object v6, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-byte v6, v6, v5

    and-int/lit16 v1, v6, 0xff

    .line 95
    .local v1, "b1":I
    iget-object v6, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget-byte v6, v6, v4

    and-int/lit16 v2, v6, 0xff

    .line 96
    .local v2, "b2":I
    iget-object v6, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-byte v6, v6, v5

    and-int/lit16 v3, v6, 0xff

    .line 97
    .local v3, "b3":I
    iput v4, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    .line 98
    shl-int/lit8 v6, v3, 0x18

    shl-int/lit8 v7, v2, 0x10

    add-int/2addr v6, v7

    shl-int/lit8 v7, v1, 0x8

    add-int/2addr v6, v7

    shl-int/lit8 v7, v0, 0x0

    add-int/2addr v6, v7

    return v6
.end method

.method public readIntLE(Lorg/apache/poi/poifs/storage/DataInputBlock;I)I
    .locals 7
    .param p1, "prevBlock"    # Lorg/apache/poi/poifs/storage/DataInputBlock;
    .param p2, "prevBlockAvailable"    # I

    .prologue
    .line 105
    const/4 v5, 0x4

    new-array v4, v5, [B

    .line 107
    .local v4, "buf":[B
    invoke-direct {p0, p1, p2, v4}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readSpanning(Lorg/apache/poi/poifs/storage/DataInputBlock;I[B)V

    .line 108
    const/4 v5, 0x0

    aget-byte v5, v4, v5

    and-int/lit16 v0, v5, 0xff

    .line 109
    .local v0, "b0":I
    const/4 v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v1, v5, 0xff

    .line 110
    .local v1, "b1":I
    const/4 v5, 0x2

    aget-byte v5, v4, v5

    and-int/lit16 v2, v5, 0xff

    .line 111
    .local v2, "b2":I
    const/4 v5, 0x3

    aget-byte v5, v4, v5

    and-int/lit16 v3, v5, 0xff

    .line 112
    .local v3, "b3":I
    shl-int/lit8 v5, v3, 0x18

    shl-int/lit8 v6, v2, 0x10

    add-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x8

    add-int/2addr v5, v6

    shl-int/lit8 v6, v0, 0x0

    add-int/2addr v5, v6

    return v5
.end method

.method public readLongLE()J
    .locals 15

    .prologue
    .line 119
    iget v8, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    .line 121
    .local v8, "i":I
    iget-object v10, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    aget-byte v10, v10, v8

    and-int/lit16 v0, v10, 0xff

    .line 122
    .local v0, "b0":I
    iget-object v10, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    aget-byte v10, v10, v9

    and-int/lit16 v1, v10, 0xff

    .line 123
    .local v1, "b1":I
    iget-object v10, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    aget-byte v10, v10, v8

    and-int/lit16 v2, v10, 0xff

    .line 124
    .local v2, "b2":I
    iget-object v10, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    aget-byte v10, v10, v9

    and-int/lit16 v3, v10, 0xff

    .line 125
    .local v3, "b3":I
    iget-object v10, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    aget-byte v10, v10, v8

    and-int/lit16 v4, v10, 0xff

    .line 126
    .local v4, "b4":I
    iget-object v10, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    aget-byte v10, v10, v9

    and-int/lit16 v5, v10, 0xff

    .line 127
    .local v5, "b5":I
    iget-object v10, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    aget-byte v10, v10, v8

    and-int/lit16 v6, v10, 0xff

    .line 128
    .local v6, "b6":I
    iget-object v10, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    aget-byte v10, v10, v9

    and-int/lit16 v7, v10, 0xff

    .line 129
    .local v7, "b7":I
    iput v8, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    .line 130
    int-to-long v10, v7

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    int-to-long v12, v6

    const/16 v14, 0x30

    shl-long/2addr v12, v14

    add-long/2addr v10, v12

    int-to-long v12, v5

    const/16 v14, 0x28

    shl-long/2addr v12, v14

    add-long/2addr v10, v12

    int-to-long v12, v4

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    add-long/2addr v10, v12

    int-to-long v12, v3

    const/16 v14, 0x18

    shl-long/2addr v12, v14

    add-long/2addr v10, v12

    shl-int/lit8 v12, v2, 0x10

    int-to-long v12, v12

    add-long/2addr v10, v12

    shl-int/lit8 v12, v1, 0x8

    int-to-long v12, v12

    add-long/2addr v10, v12

    shl-int/lit8 v12, v0, 0x0

    int-to-long v12, v12

    add-long/2addr v10, v12

    return-wide v10
.end method

.method public readLongLE(Lorg/apache/poi/poifs/storage/DataInputBlock;I)J
    .locals 18
    .param p1, "prevBlock"    # Lorg/apache/poi/poifs/storage/DataInputBlock;
    .param p2, "prevBlockAvailable"    # I

    .prologue
    .line 144
    const/16 v13, 0x8

    new-array v12, v13, [B

    .line 146
    .local v12, "buf":[B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readSpanning(Lorg/apache/poi/poifs/storage/DataInputBlock;I[B)V

    .line 148
    const/4 v13, 0x0

    aget-byte v13, v12, v13

    and-int/lit16 v4, v13, 0xff

    .line 149
    .local v4, "b0":I
    const/4 v13, 0x1

    aget-byte v13, v12, v13

    and-int/lit16 v5, v13, 0xff

    .line 150
    .local v5, "b1":I
    const/4 v13, 0x2

    aget-byte v13, v12, v13

    and-int/lit16 v6, v13, 0xff

    .line 151
    .local v6, "b2":I
    const/4 v13, 0x3

    aget-byte v13, v12, v13

    and-int/lit16 v7, v13, 0xff

    .line 152
    .local v7, "b3":I
    const/4 v13, 0x4

    aget-byte v13, v12, v13

    and-int/lit16 v8, v13, 0xff

    .line 153
    .local v8, "b4":I
    const/4 v13, 0x5

    aget-byte v13, v12, v13

    and-int/lit16 v9, v13, 0xff

    .line 154
    .local v9, "b5":I
    const/4 v13, 0x6

    aget-byte v13, v12, v13

    and-int/lit16 v10, v13, 0xff

    .line 155
    .local v10, "b6":I
    const/4 v13, 0x7

    aget-byte v13, v12, v13

    and-int/lit16 v11, v13, 0xff

    .line 156
    .local v11, "b7":I
    int-to-long v14, v11

    const/16 v13, 0x38

    shl-long/2addr v14, v13

    int-to-long v0, v10

    move-wide/from16 v16, v0

    const/16 v13, 0x30

    shl-long v16, v16, v13

    add-long v14, v14, v16

    int-to-long v0, v9

    move-wide/from16 v16, v0

    const/16 v13, 0x28

    shl-long v16, v16, v13

    add-long v14, v14, v16

    int-to-long v0, v8

    move-wide/from16 v16, v0

    const/16 v13, 0x20

    shl-long v16, v16, v13

    add-long v14, v14, v16

    int-to-long v0, v7

    move-wide/from16 v16, v0

    const/16 v13, 0x18

    shl-long v16, v16, v13

    add-long v14, v14, v16

    shl-int/lit8 v13, v6, 0x10

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    shl-int/lit8 v13, v5, 0x8

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    shl-int/lit8 v13, v4, 0x0

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    return-wide v14
.end method

.method public readUByte()I
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    iget v1, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUShortLE()I
    .locals 6

    .prologue
    .line 67
    iget v2, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    .line 69
    .local v2, "i":I
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v4, v4, v2

    and-int/lit16 v0, v4, 0xff

    .line 70
    .local v0, "b0":I
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v4, v4, v3

    and-int/lit16 v1, v4, 0xff

    .line 71
    .local v1, "b1":I
    iput v2, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    .line 72
    shl-int/lit8 v4, v1, 0x8

    shl-int/lit8 v5, v0, 0x0

    add-int/2addr v4, v5

    return v4
.end method

.method public readUShortLE(Lorg/apache/poi/poifs/storage/DataInputBlock;)I
    .locals 7
    .param p1, "prevBlock"    # Lorg/apache/poi/poifs/storage/DataInputBlock;

    .prologue
    .line 80
    iget-object v4, p1, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 82
    .local v2, "i":I
    iget-object v4, p1, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v4, v4, v2

    and-int/lit16 v0, v4, 0xff

    .line 83
    .local v0, "b0":I
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_buf:[B

    iget v5, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/poi/poifs/storage/DataInputBlock;->_readIndex:I

    aget-byte v4, v4, v5

    and-int/lit16 v1, v4, 0xff

    .line 84
    .local v1, "b1":I
    shl-int/lit8 v4, v1, 0x8

    shl-int/lit8 v5, v0, 0x0

    add-int/2addr v4, v5

    return v4
.end method
