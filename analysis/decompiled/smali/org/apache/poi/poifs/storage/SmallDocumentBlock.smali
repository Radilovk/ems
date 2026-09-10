.class public final Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
.super Ljava/lang/Object;
.source "SmallDocumentBlock.java"

# interfaces
.implements Lorg/apache/poi/poifs/storage/BlockWritable;
.implements Lorg/apache/poi/poifs/storage/ListManagedBlock;


# static fields
.field private static final BLOCK_MASK:I = 0x3f

.field private static final BLOCK_SHIFT:I = 0x6

.field private static final _block_size:I = 0x40

.field private static final _default_fill:B = -0x1t


# instance fields
.field private final _bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field private final _blocks_per_big_block:I

.field private _data:[B


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 1
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 55
    invoke-static {p1}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->getBlocksPerBigBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_blocks_per_big_block:I

    .line 56
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    .line 57
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[BI)V
    .locals 4
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "data"    # [B
    .param p3, "index"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 49
    mul-int/lit8 v0, p3, 0x40

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-static {p2, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    return-void
.end method

.method public static calcSize(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 205
    mul-int/lit8 v0, p0, 0x40

    return v0
.end method

.method public static convert(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[BI)[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .locals 8
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "array"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x40

    .line 78
    add-int/lit8 v4, p2, 0x40

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x40

    new-array v3, v4, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .line 80
    .local v3, "rval":[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    const/4 v2, 0x0

    .line 82
    .local v2, "offset":I
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 84
    new-instance v4, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v4, p0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    aput-object v4, v3, v0

    .line 85
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 87
    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 89
    .local v1, "length":I
    aget-object v4, v3, v0

    iget-object v4, v4, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    const/4 v5, 0x0

    invoke-static {p1, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    if-eq v1, v6, :cond_0

    .line 92
    aget-object v4, v3, v0

    iget-object v4, v4, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    invoke-static {v4, v1, v6, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 100
    .end local v1    # "length":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x40

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    aget-object v4, v3, v0

    iget-object v4, v4, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1

    .line 102
    :cond_2
    return-object v3
.end method

.method public static convert(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/BlockWritable;I)[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .locals 6
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "store"    # [Lorg/apache/poi/poifs/storage/BlockWritable;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v4, "stream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_0

    .line 150
    aget-object v5, p1, v2

    invoke-interface {v5, v4}, Lorg/apache/poi/poifs/storage/BlockWritable;->writeBlocks(Ljava/io/OutputStream;)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 153
    .local v0, "data":[B
    invoke-static {p2}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->convertToBlockCount(I)I

    move-result v5

    new-array v3, v5, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .line 156
    .local v3, "rval":[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 158
    new-instance v5, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v5, p0, v0, v1}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[BI)V

    aput-object v5, v3, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    :cond_1
    return-object v3
.end method

.method private static convertToBlockCount(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 218
    add-int/lit8 v0, p0, 0x40

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public static extract(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;)Ljava/util/List;
    .locals 6
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "blocks"    # [Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->getBlocksPerBigBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)I

    move-result v0

    .line 176
    .local v0, "_blocks_per_big_block":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v4, "sdbs":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_1

    .line 180
    aget-object v5, p1, v2

    invoke-interface {v5}, Lorg/apache/poi/poifs/storage/ListManagedBlock;->getData()[B

    move-result-object v1

    .line 182
    .local v1, "data":[B
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 184
    new-instance v5, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v5, p0, v1, v3}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[BI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "data":[B
    .end local v3    # "k":I
    :cond_1
    return-object v4
.end method

.method public static fill(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/util/List;)I
    .locals 5
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "blocks"    # Ljava/util/List;

    .prologue
    .line 115
    invoke-static {p0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->getBlocksPerBigBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)I

    move-result v0

    .line 117
    .local v0, "_blocks_per_big_block":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 118
    .local v2, "count":I
    add-int v4, v2, v0

    add-int/lit8 v4, v4, -0x1

    div-int v1, v4, v0

    .line 120
    .local v1, "big_block_count":I
    mul-int v3, v1, v0

    .line 122
    .local v3, "full_count":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 124
    invoke-static {p0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->makeEmptySmallDocumentBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return v1
.end method

.method private static getBlocksPerBigBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)I
    .locals 1
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public static getDataInputBlock([Lorg/apache/poi/poifs/storage/SmallDocumentBlock;I)Lorg/apache/poi/poifs/storage/DataInputBlock;
    .locals 4
    .param p0, "blocks"    # [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .param p1, "offset"    # I

    .prologue
    .line 191
    shr-int/lit8 v0, p1, 0x6

    .line 192
    .local v0, "firstBlockIndex":I
    and-int/lit8 v1, p1, 0x3f

    .line 193
    .local v1, "firstBlockOffset":I
    new-instance v2, Lorg/apache/poi/poifs/storage/DataInputBlock;

    aget-object v3, p0, v0

    iget-object v3, v3, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;-><init>([BI)V

    return-object v2
.end method

.method private static makeEmptySmallDocumentBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .locals 3
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .prologue
    .line 210
    new-instance v0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 212
    .local v0, "block":Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    iget-object v1, v0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 213
    return-object v0
.end method


# virtual methods
.method public getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    return-object v0
.end method

.method public writeBlocks(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->_data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 234
    return-void
.end method
