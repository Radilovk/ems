.class public Lorg/apache/poi/poifs/storage/HeaderBlockWriter;
.super Ljava/lang/Object;
.source "HeaderBlockWriter.java"

# interfaces
.implements Lorg/apache/poi/poifs/storage/HeaderBlockConstants;
.implements Lorg/apache/poi/poifs/storage/BlockWritable;


# instance fields
.field private final _header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 1
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V
    .locals 0
    .param p1, "headerBlock"    # Lorg/apache/poi/poifs/storage/HeaderBlock;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 54
    return-void
.end method

.method static calculateXBATStorageRequirements(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)I
    .locals 1
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "blockCount"    # I

    .prologue
    .line 151
    const/16 v0, 0x6d

    if-le p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x6d

    invoke-static {p0, v0}, Lorg/apache/poi/poifs/storage/BATBlock;->calculateXBATStorageRequirements(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setBATBlocks(II)[Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 10
    .param p1, "blockCount"    # I
    .param p2, "startBlock"    # I

    .prologue
    const/16 v9, 0x6d

    const/4 v8, 0x0

    .line 72
    iget-object v7, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v1

    .line 74
    .local v1, "bigBlockSize":Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    iget-object v7, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v7, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATCount(I)V

    .line 77
    invoke-static {p1, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 78
    .local v5, "limit":I
    new-array v0, v5, [I

    .line 79
    .local v0, "bat_blocks":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 80
    add-int v7, p2, v4

    aput v7, v0, v4

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object v7, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v7, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATArray([I)V

    .line 85
    if-le p1, v9, :cond_2

    .line 87
    add-int/lit8 v3, p1, -0x6d

    .line 88
    .local v3, "excess_blocks":I
    new-array v2, v3, [I

    .line 90
    .local v2, "excess_block_array":[I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 92
    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x6d

    aput v7, v2, v4

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 95
    :cond_1
    add-int v7, p2, p1

    invoke-static {v1, v2, v7}, Lorg/apache/poi/poifs/storage/BATBlock;->createXBATBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[II)[Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v6

    .line 97
    .local v6, "rvalue":[Lorg/apache/poi/poifs/storage/BATBlock;
    iget-object v7, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    add-int v8, p2, p1

    invoke-virtual {v7, v8}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setXBATStart(I)V

    .line 104
    .end local v2    # "excess_block_array":[I
    .end local v3    # "excess_blocks":I
    :goto_2
    iget-object v7, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    array-length v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setXBATCount(I)V

    .line 105
    return-object v6

    .line 101
    .end local v6    # "rvalue":[Lorg/apache/poi/poifs/storage/BATBlock;
    :cond_2
    new-array v7, v8, [I

    invoke-static {v1, v7, v8}, Lorg/apache/poi/poifs/storage/BATBlock;->createXBATBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[II)[Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v6

    .line 102
    .restart local v6    # "rvalue":[Lorg/apache/poi/poifs/storage/BATBlock;
    iget-object v7, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setXBATStart(I)V

    goto :goto_2
.end method

.method public setPropertyStart(I)V
    .locals 1
    .param p1, "startBlock"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setPropertyStart(I)V

    .line 117
    return-void
.end method

.method public setSBATBlockCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setSBATBlockCount(I)V

    .line 138
    return-void
.end method

.method public setSBATStart(I)V
    .locals 1
    .param p1, "startBlock"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setSBATStart(I)V

    .line 128
    return-void
.end method

.method public writeBlock(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "block"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 188
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->writeData(Ljava/io/OutputStream;)V

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 191
    return-void
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
    .line 171
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->writeData(Ljava/io/OutputStream;)V

    .line 172
    return-void
.end method
