.class public final Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;
.super Ljava/lang/Object;
.source "BlockAllocationTableWriter.java"

# interfaces
.implements Lorg/apache/poi/poifs/storage/BlockWritable;
.implements Lorg/apache/poi/poifs/filesystem/BATManaged;


# instance fields
.field private _bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field private _blocks:[Lorg/apache/poi/poifs/storage/BATBlock;

.field private _entries:Lorg/apache/poi/util/IntList;

.field private _start_block:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 1
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 56
    const/4 v0, -0x2

    iput v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_start_block:I

    .line 57
    new-instance v0, Lorg/apache/poi/util/IntList;

    invoke-direct {v0}, Lorg/apache/poi/util/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_entries:Lorg/apache/poi/util/IntList;

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/poifs/storage/BATBlock;

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_blocks:[Lorg/apache/poi/poifs/storage/BATBlock;

    .line 59
    return-void
.end method

.method public static writeBlock(Lorg/apache/poi/poifs/storage/BATBlock;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "bat"    # Lorg/apache/poi/poifs/storage/BATBlock;
    .param p1, "block"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->writeData(Ljava/nio/ByteBuffer;)V

    .line 167
    return-void
.end method


# virtual methods
.method public allocateSpace(I)I
    .locals 7
    .param p1, "blockCount"    # I

    .prologue
    .line 108
    iget-object v5, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v5}, Lorg/apache/poi/util/IntList;->size()I

    move-result v4

    .line 110
    .local v4, "startBlock":I
    if-lez p1, :cond_1

    .line 112
    add-int/lit8 v3, p1, -0x1

    .line 113
    .local v3, "limit":I
    add-int/lit8 v0, v4, 0x1

    .line 115
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "k":I
    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 117
    iget-object v5, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_entries:Lorg/apache/poi/util/IntList;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {v5, v1}, Lorg/apache/poi/util/IntList;->add(I)Z

    .line 115
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 119
    :cond_0
    iget-object v5, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_entries:Lorg/apache/poi/util/IntList;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Lorg/apache/poi/util/IntList;->add(I)Z

    .line 121
    .end local v1    # "index":I
    .end local v2    # "k":I
    .end local v3    # "limit":I
    :cond_1
    return v4
.end method

.method public countBlocks()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_blocks:[Lorg/apache/poi/poifs/storage/BATBlock;

    array-length v0, v0

    return v0
.end method

.method public createBlocks()I
    .locals 8

    .prologue
    .line 68
    const/4 v4, 0x0

    .line 69
    .local v4, "xbat_blocks":I
    const/4 v0, 0x0

    .line 73
    .local v0, "bat_blocks":I
    :goto_0
    iget-object v5, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    add-int v6, v0, v4

    iget-object v7, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v7}, Lorg/apache/poi/util/IntList;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Lorg/apache/poi/poifs/storage/BATBlock;->calculateStorageRequirements(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)I

    move-result v1

    .line 78
    .local v1, "calculated_bat_blocks":I
    iget-object v5, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v5, v1}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->calculateXBATStorageRequirements(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)I

    move-result v2

    .line 82
    .local v2, "calculated_xbat_blocks":I
    if-ne v0, v1, :cond_0

    if-ne v4, v2, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->allocateSpace(I)I

    move-result v3

    .line 94
    .local v3, "startBlock":I
    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->allocateSpace(I)I

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->simpleCreateBlocks()V

    .line 96
    return v3

    .line 89
    .end local v3    # "startBlock":I
    :cond_0
    move v0, v1

    .line 90
    move v4, v2

    .line 91
    goto :goto_0
.end method

.method public getStartBlock()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_start_block:I

    return v0
.end method

.method public setStartBlock(I)V
    .locals 0
    .param p1, "start_block"    # I

    .prologue
    .line 184
    iput p1, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_start_block:I

    .line 185
    return-void
.end method

.method simpleCreateBlocks()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v1}, Lorg/apache/poi/util/IntList;->toArray()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[I)[Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_blocks:[Lorg/apache/poi/poifs/storage/BATBlock;

    .line 140
    return-void
.end method

.method public writeBlocks(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_blocks:[Lorg/apache/poi/poifs/storage/BATBlock;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_blocks:[Lorg/apache/poi/poifs/storage/BATBlock;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->writeBlocks(Ljava/io/OutputStream;)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method
