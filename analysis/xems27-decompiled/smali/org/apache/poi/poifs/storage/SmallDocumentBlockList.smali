.class public Lorg/apache/poi/poifs/storage/SmallDocumentBlockList;
.super Lorg/apache/poi/poifs/storage/BlockListImpl;
.source "SmallDocumentBlockList.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "blocks"    # Ljava/util/List;

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/poifs/storage/BlockListImpl;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    check-cast v0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlockList;->setBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)V

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic blockCount()I
    .locals 1

    .line 30
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

    .line 30
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

    .line 30
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

    .line 30
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/storage/BlockListImpl;->setBAT(Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;)V

    return-void
.end method

.method public bridge synthetic zap(I)V
    .locals 0
    .param p1, "x0"    # I

    .line 30
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/storage/BlockListImpl;->zap(I)V

    return-void
.end method
