.class public final Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;
.super Ljava/lang/Object;
.source "BlockAllocationTableReader.java"


# static fields
.field private static final MAX_BLOCK_COUNT:I = 0xffff

.field private static final _logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _entries:Lorg/apache/poi/util/IntList;

.field private bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 1
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 177
    new-instance v0, Lorg/apache/poi/util/IntList;

    invoke-direct {v0}, Lorg/apache/poi/util/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_entries:Lorg/apache/poi/util/IntList;

    .line 178
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I[IIILorg/apache/poi/poifs/storage/BlockList;)V
    .locals 17
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "block_count"    # I
    .param p3, "block_array"    # [I
    .param p4, "xbat_count"    # I
    .param p5, "xbat_index"    # I
    .param p6, "raw_block_list"    # Lorg/apache/poi/poifs/storage/BlockList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct/range {p0 .. p1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 83
    invoke-static/range {p2 .. p2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->sanityCheckBlockCount(I)V

    .line 91
    move-object/from16 v0, p3

    array-length v14, v0

    move/from16 v0, p2

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 95
    .local v10, "limit":I
    move/from16 v0, p2

    new-array v4, v0, [Lorg/apache/poi/poifs/storage/RawDataBlock;

    .line 98
    .local v4, "blocks":[Lorg/apache/poi/poifs/storage/RawDataBlock;
    const/4 v2, 0x0

    .local v2, "block_index":I
    :goto_0
    if-ge v2, v10, :cond_1

    .line 101
    aget v12, p3, v2

    .line 102
    .local v12, "nextOffset":I
    invoke-interface/range {p6 .. p6}, Lorg/apache/poi/poifs/storage/BlockList;->blockCount()I

    move-result v14

    if-le v12, v14, :cond_0

    .line 103
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Your file contains "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p6 .. p6}, Lorg/apache/poi/poifs/storage/BlockList;->blockCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sectors, but the initial DIFAT array at index "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " referenced block # "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ". This isn\'t allowed and "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " your file is corrupt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 109
    :cond_0
    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Lorg/apache/poi/poifs/storage/BlockList;->remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v14

    check-cast v14, Lorg/apache/poi/poifs/storage/RawDataBlock;

    aput-object v14, v4, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v12    # "nextOffset":I
    :cond_1
    move/from16 v0, p2

    if-ge v2, v0, :cond_4

    .line 118
    if-gez p5, :cond_2

    .line 120
    new-instance v14, Ljava/io/IOException;

    const-string v15, "BAT count exceeds limit, yet XBAT index indicates no valid entries"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 123
    :cond_2
    move/from16 v5, p5

    .line 124
    .local v5, "chain_index":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v11

    .line 125
    .local v11, "max_entries_per_block":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getNextXBATChainOffset()I

    move-result v6

    .line 130
    .local v6, "chain_index_offset":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    move/from16 v0, p4

    if-ge v8, v0, :cond_4

    .line 132
    sub-int v14, p2, v2

    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 134
    move-object/from16 v0, p6

    invoke-interface {v0, v5}, Lorg/apache/poi/poifs/storage/BlockList;->remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/poi/poifs/storage/ListManagedBlock;->getData()[B

    move-result-object v7

    .line 135
    .local v7, "data":[B
    const/4 v13, 0x0

    .line 137
    .local v13, "offset":I
    const/4 v9, 0x0

    .local v9, "k":I
    move v3, v2

    .end local v2    # "block_index":I
    .local v3, "block_index":I
    :goto_2
    if-ge v9, v10, :cond_3

    .line 139
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "block_index":I
    .restart local v2    # "block_index":I
    invoke-static {v7, v13}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p6

    invoke-interface {v0, v14}, Lorg/apache/poi/poifs/storage/BlockList;->remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v14

    check-cast v14, Lorg/apache/poi/poifs/storage/RawDataBlock;

    aput-object v14, v4, v3

    .line 142
    add-int/lit8 v13, v13, 0x4

    .line 137
    add-int/lit8 v9, v9, 0x1

    move v3, v2

    .end local v2    # "block_index":I
    .restart local v3    # "block_index":I
    goto :goto_2

    .line 144
    :cond_3
    invoke-static {v7, v6}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    .line 145
    const/4 v14, -0x2

    if-ne v5, v14, :cond_5

    move v2, v3

    .line 151
    .end local v3    # "block_index":I
    .end local v5    # "chain_index":I
    .end local v6    # "chain_index_offset":I
    .end local v7    # "data":[B
    .end local v8    # "j":I
    .end local v9    # "k":I
    .end local v11    # "max_entries_per_block":I
    .end local v13    # "offset":I
    .restart local v2    # "block_index":I
    :cond_4
    move/from16 v0, p2

    if-eq v2, v0, :cond_6

    .line 153
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Could not find all blocks"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 130
    .end local v2    # "block_index":I
    .restart local v3    # "block_index":I
    .restart local v5    # "chain_index":I
    .restart local v6    # "chain_index_offset":I
    .restart local v7    # "data":[B
    .restart local v8    # "j":I
    .restart local v9    # "k":I
    .restart local v11    # "max_entries_per_block":I
    .restart local v13    # "offset":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    move v2, v3

    .end local v3    # "block_index":I
    .restart local v2    # "block_index":I
    goto :goto_1

    .line 158
    .end local v5    # "chain_index":I
    .end local v6    # "chain_index_offset":I
    .end local v7    # "data":[B
    .end local v8    # "j":I
    .end local v9    # "k":I
    .end local v11    # "max_entries_per_block":I
    .end local v13    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v4, v1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->setEntries([Lorg/apache/poi/poifs/storage/ListManagedBlock;Lorg/apache/poi/poifs/storage/BlockList;)V

    .line 159
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;Lorg/apache/poi/poifs/storage/BlockList;)V
    .locals 0
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "blocks"    # [Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .param p3, "raw_block_list"    # Lorg/apache/poi/poifs/storage/BlockList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 172
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->setEntries([Lorg/apache/poi/poifs/storage/ListManagedBlock;Lorg/apache/poi/poifs/storage/BlockList;)V

    .line 173
    return-void
.end method

.method public static sanityCheckBlockCount(I)V
    .locals 4
    .param p0, "block_count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xffff

    .line 181
    if-gtz p0, :cond_0

    .line 182
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal block count; minimum count is 1, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    if-le p0, v3, :cond_1

    .line 188
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too high. POI maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    return-void
.end method

.method private setEntries([Lorg/apache/poi/poifs/storage/ListManagedBlock;Lorg/apache/poi/poifs/storage/BlockList;)V
    .locals 7
    .param p1, "blocks"    # [Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .param p2, "raw_blocks"    # Lorg/apache/poi/poifs/storage/BlockList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v6, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v4

    .line 293
    .local v4, "limit":I
    const/4 v0, 0x0

    .local v0, "block_index":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_2

    .line 295
    aget-object v6, p1, v0

    invoke-interface {v6}, Lorg/apache/poi/poifs/storage/ListManagedBlock;->getData()[B

    move-result-object v1

    .line 296
    .local v1, "data":[B
    const/4 v5, 0x0

    .line 298
    .local v5, "offset":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 300
    invoke-static {v1, v5}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    .line 302
    .local v2, "entry":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 304
    iget-object v6, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v6}, Lorg/apache/poi/util/IntList;->size()I

    move-result v6

    invoke-interface {p2, v6}, Lorg/apache/poi/poifs/storage/BlockList;->zap(I)V

    .line 306
    :cond_0
    iget-object v6, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v6, v2}, Lorg/apache/poi/util/IntList;->add(I)Z

    .line 307
    add-int/lit8 v5, v5, 0x4

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 311
    .end local v2    # "entry":I
    :cond_1
    const/4 v6, 0x0

    aput-object v6, p1, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "data":[B
    .end local v3    # "k":I
    .end local v5    # "offset":I
    :cond_2
    invoke-interface {p2, p0}, Lorg/apache/poi/poifs/storage/BlockList;->setBAT(Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;)V

    .line 314
    return-void
.end method


# virtual methods
.method fetchBlocks(IILorg/apache/poi/poifs/storage/BlockList;)[Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .locals 8
    .param p1, "startBlock"    # I
    .param p2, "headerPropertiesStartBlock"    # I
    .param p3, "blockList"    # Lorg/apache/poi/poifs/storage/BlockList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "blocks":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/storage/ListManagedBlock;>;"
    move v1, p1

    .line 211
    .local v1, "currentBlock":I
    const/4 v4, 0x1

    .line 212
    .local v4, "firstPass":Z
    const/4 v2, 0x0

    .line 218
    .local v2, "dataBlock":Lorg/apache/poi/poifs/storage/ListManagedBlock;
    :goto_0
    const/4 v5, -0x2

    if-eq v1, v5, :cond_2

    .line 221
    :try_start_0
    invoke-interface {p3, v1}, Lorg/apache/poi/poifs/storage/BlockList;->remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v2

    .line 222
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v5, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/IntList;->get(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    const/4 v4, 0x0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v3

    .line 227
    .local v3, "e":Ljava/io/IOException;
    if-ne v1, p2, :cond_0

    .line 229
    sget-object v5, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_logger:Lorg/apache/poi/util/POILogger;

    const-string v6, "Warning, header block comes after data blocks in POIFS block listing"

    invoke-virtual {v5, v7, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 230
    const/4 v1, -0x2

    goto :goto_0

    .line 231
    :cond_0
    if-nez v1, :cond_1

    if-eqz v4, :cond_1

    .line 234
    sget-object v5, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_logger:Lorg/apache/poi/util/POILogger;

    const-string v6, "Warning, incorrectly terminated empty data blocks in POIFS block listing (should end at -2, ended at 0)"

    invoke-virtual {v5, v7, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 235
    const/4 v1, -0x2

    goto :goto_0

    .line 238
    :cond_1
    throw v3

    .line 243
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/poi/poifs/storage/ListManagedBlock;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/poi/poifs/storage/ListManagedBlock;

    return-object v5
.end method

.method getNextBlockIndex(I)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->isUsed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/IntList;->get(I)I

    move-result v0

    return v0

    .line 280
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isUsed(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 258
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v2, p1}, Lorg/apache/poi/util/IntList;->get(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method
