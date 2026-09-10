.class public final Lorg/apache/poi/poifs/storage/DocumentBlock;
.super Lorg/apache/poi/poifs/storage/BigBlock;
.source "DocumentBlock.java"


# static fields
.field private static final _default_value:B = -0x1t


# instance fields
.field private _bytes_read:I

.field private _data:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p2}, Lorg/apache/poi/poifs/storage/DocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 71
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/DocumentBlock;->_data:[B

    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    .line 73
    .local v0, "count":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lorg/apache/poi/poifs/storage/DocumentBlock;->_bytes_read:I

    .line 75
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 2
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/storage/BigBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 84
    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/DocumentBlock;->_data:[B

    .line 85
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/RawDataBlock;)V
    .locals 2
    .param p1, "block"    # Lorg/apache/poi/poifs/storage/RawDataBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/RawDataBlock;->getBigBlockSize()I

    move-result v0

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->LARGER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/storage/BigBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/RawDataBlock;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/DocumentBlock;->_data:[B

    .line 56
    array-length v0, v0

    iput v0, p0, Lorg/apache/poi/poifs/storage/DocumentBlock;->_bytes_read:I

    .line 57
    return-void
.end method

.method public static convert(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[BI)[Lorg/apache/poi/poifs/storage/DocumentBlock;
    .locals 7
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "array"    # [B
    .param p2, "size"    # I

    .line 134
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    div-int/2addr v0, v1

    new-array v0, v0, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    .line 136
    .local v0, "rval":[Lorg/apache/poi/poifs/storage/DocumentBlock;
    const/4 v1, 0x0

    .line 138
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 140
    new-instance v3, Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-direct {v3, p0}, Lorg/apache/poi/poifs/storage/DocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    aput-object v3, v0, v2

    .line 141
    array-length v3, p1

    const/4 v4, -0x1

    if-ge v1, v3, :cond_1

    .line 143
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v3

    array-length v5, p1

    sub-int/2addr v5, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 146
    .local v3, "length":I
    aget-object v5, v0, v2

    iget-object v5, v5, Lorg/apache/poi/poifs/storage/DocumentBlock;->_data:[B

    const/4 v6, 0x0

    invoke-static {p1, v1, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v5

    if-eq v3, v5, :cond_0

    .line 149
    aget-object v5, v0, v2

    iget-object v5, v5, Lorg/apache/poi/poifs/storage/DocumentBlock;->_data:[B

    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v6

    invoke-static {v5, v3, v6, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 153
    .end local v3    # "length":I
    :cond_0
    goto :goto_1

    .line 156
    :cond_1
    aget-object v3, v0, v2

    iget-object v3, v3, Lorg/apache/poi/poifs/storage/DocumentBlock;->_data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 158
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "k":I
    :cond_2
    return-object v0
.end method

.method public static getDataInputBlock([Lorg/apache/poi/poifs/storage/DocumentBlock;I)Lorg/apache/poi/poifs/storage/DataInputBlock;
    .locals 8
    .param p0, "blocks"    # [Lorg/apache/poi/poifs/storage/DocumentBlock;
    .param p1, "offset"    # I

    .line 164
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    iget-object v0, v0, Lorg/apache/poi/poifs/storage/DocumentBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 170
    .local v0, "bigBlockSize":Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getHeaderValue()S

    move-result v1

    .line 171
    .local v1, "BLOCK_SHIFT":I
    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    .line 172
    .local v2, "BLOCK_SIZE":I
    add-int/lit8 v3, v2, -0x1

    .line 175
    .local v3, "BLOCK_MASK":I
    shr-int v4, p1, v1

    .line 176
    .local v4, "firstBlockIndex":I
    and-int v5, p1, v3

    .line 177
    .local v5, "firstBlockOffset":I
    new-instance v6, Lorg/apache/poi/poifs/storage/DataInputBlock;

    aget-object v7, p0, v4

    iget-object v7, v7, Lorg/apache/poi/poifs/storage/DocumentBlock;->_data:[B

    invoke-direct {v6, v7, v5}, Lorg/apache/poi/poifs/storage/DataInputBlock;-><init>([BI)V

    return-object v6

    .line 165
    .end local v0    # "bigBlockSize":Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .end local v1    # "BLOCK_SHIFT":I
    .end local v2    # "BLOCK_SIZE":I
    .end local v3    # "BLOCK_MASK":I
    .end local v4    # "firstBlockIndex":I
    .end local v5    # "firstBlockOffset":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFillByte()B
    .locals 1

    .line 116
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public partiallyRead()Z
    .locals 2

    .line 107
    iget v0, p0, Lorg/apache/poi/poifs/storage/DocumentBlock;->_bytes_read:I

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/DocumentBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/apache/poi/poifs/storage/DocumentBlock;->_bytes_read:I

    return v0
.end method

.method public bridge synthetic writeBlocks(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/storage/BigBlock;->writeBlocks(Ljava/io/OutputStream;)V

    return-void
.end method

.method writeData(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/DocumentBlock;->_data:[B

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/poifs/storage/DocumentBlock;->doWriteData(Ljava/io/OutputStream;[B)V

    .line 196
    return-void
.end method
