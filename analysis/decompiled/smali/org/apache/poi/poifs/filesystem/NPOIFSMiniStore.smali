.class public Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;
.super Lorg/apache/poi/poifs/filesystem/BlockStore;
.source "NPOIFSMiniStore.java"


# instance fields
.field private _filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

.field private _header:Lorg/apache/poi/poifs/storage/HeaderBlock;

.field private _mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

.field private _root:Lorg/apache/poi/poifs/property/RootProperty;

.field private _sbat_blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/property/RootProperty;Ljava/util/List;Lorg/apache/poi/poifs/storage/HeaderBlock;)V
    .locals 2
    .param p1, "filesystem"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .param p2, "root"    # Lorg/apache/poi/poifs/property/RootProperty;
    .param p4, "header"    # Lorg/apache/poi/poifs/storage/HeaderBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;",
            "Lorg/apache/poi/poifs/property/RootProperty;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;",
            "Lorg/apache/poi/poifs/storage/HeaderBlock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "sbats":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/storage/BATBlock;>;"
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/BlockStore;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 50
    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    .line 51
    iput-object p4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 52
    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_root:Lorg/apache/poi/poifs/property/RootProperty;

    .line 54
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/RootProperty;->getStartBlock()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 55
    return-void
.end method


# virtual methods
.method protected createBlockIfNeeded(I)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x2

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "firstInStore":Z
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 91
    const/4 v1, 0x1

    .line 95
    :cond_0
    if-nez v1, :cond_1

    .line 97
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBlockAt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 132
    :goto_0
    return-object v5

    .line 98
    :catch_0
    move-exception v5

    .line 106
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getFreeBlock()I

    move-result v3

    .line 107
    .local v3, "newBigBlock":I
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v5, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createBlockIfNeeded(I)Ljava/nio/ByteBuffer;

    .line 110
    if-eqz v1, :cond_2

    .line 111
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_get_property_table()Lorg/apache/poi/poifs/property/NPropertyTable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/poifs/property/NPropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/apache/poi/poifs/property/RootProperty;->setStartBlock(I)V

    .line 112
    new-instance v5, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v6, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v5, v6, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iput-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 129
    :goto_1
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v5, v3, v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    .line 132
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->createBlockIfNeeded(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_0

    .line 115
    :cond_2
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v2

    .line 116
    .local v2, "loopDetector":Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v0

    .line 118
    .local v0, "block":I
    :goto_2
    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    .line 119
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v5, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getNextBlock(I)I

    move-result v4

    .line 120
    .local v4, "next":I
    if-ne v4, v7, :cond_3

    .line 125
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v5, v0, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    goto :goto_1

    .line 123
    :cond_3
    move v0, v4

    .line 124
    goto :goto_2
.end method

.method protected getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getSBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object v0

    return-object v0
.end method

.method protected getBlockAt(I)Ljava/nio/ByteBuffer;
    .locals 10
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    mul-int/lit8 v2, p1, 0x40

    .line 63
    .local v2, "byteOffset":I
    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result v7

    div-int v0, v2, v7

    .line 64
    .local v0, "bigBlockNumber":I
    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result v7

    rem-int v1, v2, v7

    .line 67
    .local v1, "bigBlockOffset":I
    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 68
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/ByteBuffer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 69
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 72
    .local v3, "dataBlock":Ljava/nio/ByteBuffer;
    if-nez v3, :cond_1

    .line 73
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Big block "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " outside stream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 77
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 81
    .local v6, "miniBuffer":Ljava/nio/ByteBuffer;
    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 82
    return-object v6
.end method

.method protected getBlockStoreBlockSize()I
    .locals 1

    .prologue
    .line 241
    const/16 v0, 0x40

    return v0
.end method

.method protected getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_root:Lorg/apache/poi/poifs/property/RootProperty;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/RootProperty;->getSize()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;J)V

    return-object v0
.end method

.method protected getFreeBlock()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, -0x2

    .line 169
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v11}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v10

    .line 172
    .local v10, "sectorsPerSBAT":I
    const/4 v7, 0x0

    .line 173
    .local v7, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_2

    .line 175
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 176
    .local v8, "sbat":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v8}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 178
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v10, :cond_1

    .line 179
    invoke-virtual {v8, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v9

    .line 180
    .local v9, "sbatValue":I
    const/4 v11, -0x1

    if-ne v9, v11, :cond_0

    .line 182
    add-int/2addr v7, v3

    .line 232
    .end local v3    # "j":I
    .end local v7    # "offset":I
    .end local v8    # "sbat":Lorg/apache/poi/poifs/storage/BATBlock;
    .end local v9    # "sbatValue":I
    :goto_2
    return v7

    .line 178
    .restart local v3    # "j":I
    .restart local v7    # "offset":I
    .restart local v8    # "sbat":Lorg/apache/poi/poifs/storage/BATBlock;
    .restart local v9    # "sbatValue":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    .end local v3    # "j":I
    .end local v9    # "sbatValue":I
    :cond_1
    add-int/2addr v7, v10

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v8    # "sbat":Lorg/apache/poi/poifs/storage/BATBlock;
    :cond_2
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v11}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/apache/poi/poifs/storage/BATBlock;->createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v5

    .line 197
    .local v5, "newSBAT":Lorg/apache/poi/poifs/storage/BATBlock;
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v11}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getFreeBlock()I

    move-result v0

    .line 198
    .local v0, "batForSBAT":I
    invoke-virtual {v5, v0}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    .line 201
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v11}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATCount()I

    move-result v11

    if-nez v11, :cond_3

    .line 203
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v11, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setSBATStart(I)V

    .line 204
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setSBATBlockCount(I)V

    .line 228
    :goto_3
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v11, v0, v13}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    .line 229
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    :cond_3
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v11}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v4

    .line 208
    .local v4, "loopDetector":Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v11}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v1

    .line 210
    .local v1, "batOffset":I
    :goto_4
    invoke-virtual {v4, v1}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    .line 211
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v11, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getNextBlock(I)I

    move-result v6

    .line 212
    .local v6, "nextBat":I
    if-ne v6, v13, :cond_4

    .line 219
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v11, v1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    .line 222
    iget-object v11, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v12, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v12}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATCount()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setSBATBlockCount(I)V

    goto :goto_3

    .line 215
    :cond_4
    move v1, v6

    .line 216
    goto :goto_4
.end method

.method protected getNextBlock(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object v0

    .line 150
    .local v0, "bai":Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v1

    return v1
.end method

.method protected setNextBlock(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "nextBlock"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object v0

    .line 158
    .local v0, "bai":Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 161
    return-void
.end method

.method protected syncWithDataSource()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 249
    .local v2, "sbat":Lorg/apache/poi/poifs/storage/BATBlock;
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/BATBlock;->getOurBlockIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 250
    .local v0, "block":Ljava/nio/ByteBuffer;
    invoke-static {v2, v0}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->writeBlock(Lorg/apache/poi/poifs/storage/BATBlock;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 252
    .end local v0    # "block":Ljava/nio/ByteBuffer;
    .end local v2    # "sbat":Lorg/apache/poi/poifs/storage/BATBlock;
    :cond_0
    return-void
.end method
