.class public Lorg/apache/poi/poifs/storage/RawDataBlockList;
.super Lorg/apache/poi/poifs/storage/BlockListImpl;
.source "RawDataBlockList.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/poi/poifs/storage/BlockListImpl;-><init>()V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v1, "blocks":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/storage/RawDataBlock;>;"
    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/storage/RawDataBlock;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    invoke-direct {v0, p1, v2}, Lorg/apache/poi/poifs/storage/RawDataBlock;-><init>(Ljava/io/InputStream;I)V

    .line 58
    .local v0, "block":Lorg/apache/poi/poifs/storage/RawDataBlock;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/RawDataBlock;->hasData()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/RawDataBlock;->eof()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/poifs/storage/RawDataBlock;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/poi/poifs/storage/ListManagedBlock;

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/storage/RawDataBlockList;->setBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)V

    .line 68
    return-void
.end method


# virtual methods
.method public bridge synthetic blockCount()I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lorg/apache/poi/poifs/storage/BlockListImpl;->blockCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lorg/apache/poi/poifs/storage/BlockListImpl;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .locals 1
    .param p1, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/storage/BlockListImpl;->remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBAT(Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/storage/BlockListImpl;->setBAT(Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;)V

    return-void
.end method

.method public bridge synthetic zap(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/storage/BlockListImpl;->zap(I)V

    return-void
.end method
