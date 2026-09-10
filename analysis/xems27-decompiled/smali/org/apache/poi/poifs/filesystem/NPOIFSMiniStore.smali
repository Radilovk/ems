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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;",
            "Lorg/apache/poi/poifs/storage/HeaderBlock;",
            ")V"
        }
    .end annotation

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
    .locals 6
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "firstInStore":Z
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 95
    :cond_0
    if-nez v0, :cond_1

    .line 97
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 98
    :catch_0
    move-exception v1

    .line 106
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getFreeBlock()I

    move-result v1

    .line 107
    .local v1, "newBigBlock":I
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createBlockIfNeeded(I)Ljava/nio/ByteBuffer;

    .line 110
    if-eqz v0, :cond_2

    .line 111
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_get_property_table()Lorg/apache/poi/poifs/property/NPropertyTable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/NPropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/property/RootProperty;->setStartBlock(I)V

    .line 112
    new-instance v3, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v3, v4, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    goto :goto_1

    .line 115
    :cond_2
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v3

    .line 116
    .local v3, "loopDetector":Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v4

    .line 118
    .local v4, "block":I
    :goto_0
    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    .line 119
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v5, v4}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getNextBlock(I)I

    move-result v5

    .line 120
    .local v5, "next":I
    if-ne v5, v2, :cond_3

    .line 121
    nop

    .line 125
    .end local v5    # "next":I
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v5, v4, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    .line 129
    .end local v3    # "loopDetector":Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .end local v4    # "block":I
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    .line 132
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->createBlockIfNeeded(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 123
    .restart local v3    # "loopDetector":Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .restart local v4    # "block":I
    .restart local v5    # "next":I
    :cond_3
    move v4, v5

    .line 124
    .end local v5    # "next":I
    goto :goto_0
.end method

.method protected getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    .locals 2
    .param p1, "offset"    # I

    .line 140
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getSBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object v0

    return-object v0
.end method

.method protected getBlockAt(I)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    mul-int/lit8 v0, p1, 0x40

    .line 63
    .local v0, "byteOffset":I
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result v1

    div-int v1, v0, v1

    .line 64
    .local v1, "bigBlockNumber":I
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result v2

    rem-int v2, v0, v2

    .line 67
    .local v2, "bigBlockOffset":I
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 68
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/ByteBuffer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v4    # "i":I
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 72
    .local v4, "dataBlock":Ljava/nio/ByteBuffer;
    if-eqz v4, :cond_1

    .line 77
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 81
    .local v5, "miniBuffer":Ljava/nio/ByteBuffer;
    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 82
    return-object v5

    .line 73
    .end local v5    # "miniBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Big block "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " outside stream"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected getBlockStoreBlockSize()I
    .locals 1

    .line 241
    const/16 v0, 0x40

    return v0
.end method

.method protected getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance v0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_root:Lorg/apache/poi/poifs/property/RootProperty;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/RootProperty;->getSize()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;J)V

    return-object v0
.end method

.method protected getFreeBlock()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v0

    .line 172
    .local v0, "sectorsPerSBAT":I
    const/4 v1, 0x0

    .line 173
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 175
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 176
    .local v3, "sbat":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 179
    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v5

    .line 180
    .local v5, "sbatValue":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 182
    add-int v6, v1, v4

    return v6

    .line 178
    .end local v5    # "sbatValue":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 188
    .end local v4    # "j":I
    :cond_1
    add-int/2addr v1, v0

    .line 173
    .end local v3    # "sbat":Lorg/apache/poi/poifs/storage/BATBlock;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v2

    .line 197
    .local v2, "newSBAT":Lorg/apache/poi/poifs/storage/BATBlock;
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getFreeBlock()I

    move-result v3

    .line 198
    .local v3, "batForSBAT":I
    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    .line 201
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATCount()I

    move-result v4

    const/4 v5, -0x2

    const/4 v6, 0x1

    if-nez v4, :cond_3

    .line 203
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setSBATStart(I)V

    .line 204
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v4, v6}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setSBATBlockCount(I)V

    goto :goto_3

    .line 207
    :cond_3
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v4

    .line 208
    .local v4, "loopDetector":Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v7

    .line 210
    .local v7, "batOffset":I
    :goto_2
    invoke-virtual {v4, v7}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    .line 211
    iget-object v8, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v8, v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getNextBlock(I)I

    move-result v8

    .line 212
    .local v8, "nextBat":I
    if-ne v8, v5, :cond_4

    .line 213
    nop

    .line 219
    .end local v8    # "nextBat":I
    iget-object v8, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v8, v7, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    .line 222
    iget-object v8, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATCount()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setSBATBlockCount(I)V

    .line 228
    .end local v4    # "loopDetector":Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .end local v7    # "batOffset":I
    :goto_3
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v4, v3, v5}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    .line 229
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return v1

    .line 215
    .restart local v4    # "loopDetector":Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .restart local v7    # "batOffset":I
    .restart local v8    # "nextBat":I
    :cond_4
    move v7, v8

    .line 216
    .end local v8    # "nextBat":I
    goto :goto_2
.end method

.method protected getNextBlock(I)I
    .locals 3
    .param p1, "offset"    # I

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 249
    .local v1, "sbat":Lorg/apache/poi/poifs/storage/BATBlock;
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getOurBlockIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 250
    .local v2, "block":Ljava/nio/ByteBuffer;
    invoke-static {v1, v2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->writeBlock(Lorg/apache/poi/poifs/storage/BATBlock;Ljava/nio/ByteBuffer;)V

    .line 251
    .end local v1    # "sbat":Lorg/apache/poi/poifs/storage/BATBlock;
    .end local v2    # "block":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 252
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
