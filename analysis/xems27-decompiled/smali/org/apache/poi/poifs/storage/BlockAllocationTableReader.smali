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
    .locals 16
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

    .line 81
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-direct/range {p0 .. p1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 83
    invoke-static/range {p2 .. p2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->sanityCheckBlockCount(I)V

    .line 91
    array-length v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 95
    .local v3, "limit":I
    new-array v4, v0, [Lorg/apache/poi/poifs/storage/RawDataBlock;

    .line 98
    .local v4, "blocks":[Lorg/apache/poi/poifs/storage/RawDataBlock;
    const/4 v5, 0x0

    .local v5, "block_index":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 101
    aget v6, v1, v5

    .line 102
    .local v6, "nextOffset":I
    invoke-interface/range {p6 .. p6}, Lorg/apache/poi/poifs/storage/BlockList;->blockCount()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 109
    invoke-interface {v2, v6}, Lorg/apache/poi/poifs/storage/BlockList;->remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/poifs/storage/RawDataBlock;

    aput-object v7, v4, v5

    .line 98
    .end local v6    # "nextOffset":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    .restart local v6    # "nextOffset":I
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Your file contains "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p6 .. p6}, Lorg/apache/poi/poifs/storage/BlockList;->blockCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " sectors, but the initial DIFAT array at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " referenced block # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ". This isn\'t allowed and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " your file is corrupt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 114
    .end local v6    # "nextOffset":I
    :cond_1
    if-ge v5, v0, :cond_5

    .line 118
    if-ltz p5, :cond_4

    .line 123
    move/from16 v6, p5

    .line 124
    .local v6, "chain_index":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v7

    .line 125
    .local v7, "max_entries_per_block":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getNextXBATChainOffset()I

    move-result v8

    .line 130
    .local v8, "chain_index_offset":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    move/from16 v10, p4

    if-ge v9, v10, :cond_6

    .line 132
    sub-int v11, v0, v5

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 134
    invoke-interface {v2, v6}, Lorg/apache/poi/poifs/storage/BlockList;->remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/poi/poifs/storage/ListManagedBlock;->getData()[B

    move-result-object v11

    .line 135
    .local v11, "data":[B
    const/4 v12, 0x0

    .line 137
    .local v12, "offset":I
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_2
    if-ge v13, v3, :cond_2

    .line 139
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "block_index":I
    .local v14, "block_index":I
    invoke-static {v11, v12}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v15

    invoke-interface {v2, v15}, Lorg/apache/poi/poifs/storage/BlockList;->remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v15

    check-cast v15, Lorg/apache/poi/poifs/storage/RawDataBlock;

    aput-object v15, v4, v5

    .line 142
    add-int/lit8 v12, v12, 0x4

    .line 137
    add-int/lit8 v13, v13, 0x1

    move v5, v14

    goto :goto_2

    .line 144
    .end local v13    # "k":I
    .end local v14    # "block_index":I
    .restart local v5    # "block_index":I
    :cond_2
    invoke-static {v11, v8}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v6

    .line 145
    const/4 v13, -0x2

    if-ne v6, v13, :cond_3

    .line 147
    goto :goto_3

    .line 130
    .end local v11    # "data":[B
    .end local v12    # "offset":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 120
    .end local v6    # "chain_index":I
    .end local v7    # "max_entries_per_block":I
    .end local v8    # "chain_index_offset":I
    .end local v9    # "j":I
    :cond_4
    move/from16 v10, p4

    new-instance v6, Ljava/io/IOException;

    const-string v7, "BAT count exceeds limit, yet XBAT index indicates no valid entries"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 114
    :cond_5
    move/from16 v10, p4

    .line 151
    :cond_6
    :goto_3
    if-ne v5, v0, :cond_7

    .line 158
    move-object/from16 v6, p0

    invoke-direct {v6, v4, v2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->setEntries([Lorg/apache/poi/poifs/storage/ListManagedBlock;Lorg/apache/poi/poifs/storage/BlockList;)V

    .line 159
    return-void

    .line 153
    :cond_7
    move-object/from16 v6, p0

    new-instance v7, Ljava/io/IOException;

    const-string v8, "Could not find all blocks"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
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

    .line 181
    if-lez p0, :cond_1

    .line 187
    const v0, 0xffff

    if-gt p0, v0, :cond_0

    .line 193
    return-void

    .line 188
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is too high. POI maximum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal block count; minimum count is 1, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 291
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v0

    .line 293
    .local v0, "limit":I
    const/4 v1, 0x0

    .local v1, "block_index":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 295
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/apache/poi/poifs/storage/ListManagedBlock;->getData()[B

    move-result-object v2

    .line 296
    .local v2, "data":[B
    const/4 v3, 0x0

    .line 298
    .local v3, "offset":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 300
    invoke-static {v2, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    .line 302
    .local v5, "entry":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 304
    iget-object v6, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v6}, Lorg/apache/poi/util/IntList;->size()I

    move-result v6

    invoke-interface {p2, v6}, Lorg/apache/poi/poifs/storage/BlockList;->zap(I)V

    .line 306
    :cond_0
    iget-object v6, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v6, v5}, Lorg/apache/poi/util/IntList;->add(I)Z

    .line 307
    nop

    .end local v5    # "entry":I
    add-int/lit8 v3, v3, 0x4

    .line 298
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 311
    .end local v4    # "k":I
    :cond_1
    const/4 v4, 0x0

    aput-object v4, p1, v1

    .line 293
    .end local v2    # "data":[B
    .end local v3    # "offset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "block_index":I
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

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "blocks":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/storage/ListManagedBlock;>;"
    move v1, p1

    .line 211
    .local v1, "currentBlock":I
    const/4 v2, 0x1

    .line 212
    .local v2, "firstPass":Z
    const/4 v3, 0x0

    .line 218
    .local v3, "dataBlock":Lorg/apache/poi/poifs/storage/ListManagedBlock;
    :goto_0
    const/4 v4, -0x2

    if-eq v1, v4, :cond_2

    .line 221
    :try_start_0
    invoke-interface {p3, v1}, Lorg/apache/poi/poifs/storage/BlockList;->remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v4

    move-object v3, v4

    .line 222
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v4, v1}, Lorg/apache/poi/util/IntList;->get(I)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 225
    const/4 v2, 0x0

    goto :goto_1

    .line 226
    :catch_0
    move-exception v4

    .line 227
    .local v4, "e":Ljava/io/IOException;
    const/4 v5, 0x5

    if-ne v1, p2, :cond_0

    .line 229
    sget-object v6, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_logger:Lorg/apache/poi/util/POILogger;

    const-string v7, "Warning, header block comes after data blocks in POIFS block listing"

    invoke-virtual {v6, v5, v7}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 230
    const/4 v1, -0x2

    goto :goto_1

    .line 231
    :cond_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 234
    sget-object v6, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_logger:Lorg/apache/poi/util/POILogger;

    const-string v7, "Warning, incorrectly terminated empty data blocks in POIFS block listing (should end at -2, ended at 0)"

    invoke-virtual {v6, v5, v7}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 235
    const/4 v1, -0x2

    .line 240
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 238
    .restart local v4    # "e":Ljava/io/IOException;
    :cond_1
    throw v4

    .line 243
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/poi/poifs/storage/ListManagedBlock;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/poi/poifs/storage/ListManagedBlock;

    return-object v4
.end method

.method getNextBlockIndex(I)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is unused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isUsed(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 258
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->_entries:Lorg/apache/poi/util/IntList;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/IntList;->get(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 259
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    return v0
.end method
