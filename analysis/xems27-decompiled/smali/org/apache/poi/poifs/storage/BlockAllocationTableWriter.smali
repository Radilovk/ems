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

    .line 166
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->writeData(Ljava/nio/ByteBuffer;)V

    .line 167
    return-void
.end method


# virtual methods
.method public allocateSpace(I)I
    .locals 6
    .param p1, "blockCount"    # I

    .line 108
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntList;->size()I

    move-result v0

    .line 110
    .local v0, "startBlock":I
    if-lez p1, :cond_1

    .line 112
    add-int/lit8 v1, p1, -0x1

    .line 113
    .local v1, "limit":I
    add-int/lit8 v2, v0, 0x1

    .line 115
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 117
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_entries:Lorg/apache/poi/util/IntList;

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    invoke-virtual {v4, v2}, Lorg/apache/poi/util/IntList;->add(I)Z

    .line 115
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    .line 119
    .end local v3    # "k":I
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_entries:Lorg/apache/poi/util/IntList;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/IntList;->add(I)Z

    .line 121
    .end local v1    # "limit":I
    .end local v2    # "index":I
    :cond_1
    return v0
.end method

.method public countBlocks()I
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_blocks:[Lorg/apache/poi/poifs/storage/BATBlock;

    array-length v0, v0

    return v0
.end method

.method public createBlocks()I
    .locals 5

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "xbat_blocks":I
    const/4 v1, 0x0

    .line 73
    .local v1, "bat_blocks":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    add-int v3, v1, v0

    iget-object v4, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v4}, Lorg/apache/poi/util/IntList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->calculateStorageRequirements(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)I

    move-result v2

    .line 78
    .local v2, "calculated_bat_blocks":I
    iget-object v3, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v3, v2}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->calculateXBATStorageRequirements(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)I

    move-result v3

    .line 82
    .local v3, "calculated_xbat_blocks":I
    if-ne v1, v2, :cond_0

    if-ne v0, v3, :cond_0

    .line 87
    nop

    .line 92
    .end local v2    # "calculated_bat_blocks":I
    .end local v3    # "calculated_xbat_blocks":I
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->allocateSpace(I)I

    move-result v2

    .line 94
    .local v2, "startBlock":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->allocateSpace(I)I

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->simpleCreateBlocks()V

    .line 96
    return v2

    .line 89
    .local v2, "calculated_bat_blocks":I
    .restart local v3    # "calculated_xbat_blocks":I
    :cond_0
    move v1, v2

    .line 90
    move v0, v3

    .line 91
    .end local v2    # "calculated_bat_blocks":I
    .end local v3    # "calculated_xbat_blocks":I
    goto :goto_0
.end method

.method public getStartBlock()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_start_block:I

    return v0
.end method

.method public setStartBlock(I)V
    .locals 0
    .param p1, "start_block"    # I

    .line 184
    iput p1, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_start_block:I

    .line 185
    return-void
.end method

.method simpleCreateBlocks()V
    .locals 2

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
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->_blocks:[Lorg/apache/poi/poifs/storage/BATBlock;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 156
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->writeBlocks(Ljava/io/OutputStream;)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "j":I
    :cond_0
    return-void
.end method
