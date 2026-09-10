.class public final Lorg/apache/poi/poifs/storage/SmallBlockTableReader;
.super Ljava/lang/Object;
.source "SmallBlockTableReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;
    .locals 4
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "blockList"    # Lorg/apache/poi/poifs/storage/RawDataBlockList;
    .param p2, "root"    # Lorg/apache/poi/poifs/property/RootProperty;
    .param p3, "sbatStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/RootProperty;->getStartBlock()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/poifs/storage/RawDataBlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v0

    .line 57
    .local v0, "smallBlockBlocks":[Lorg/apache/poi/poifs/storage/ListManagedBlock;
    new-instance v2, Lorg/apache/poi/poifs/storage/SmallDocumentBlockList;

    invoke-static {p0, v0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->extract(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/poifs/storage/SmallDocumentBlockList;-><init>(Ljava/util/List;)V

    .line 61
    .local v2, "list":Lorg/apache/poi/poifs/storage/BlockList;
    new-instance v3, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    invoke-virtual {p1, p3, v1}, Lorg/apache/poi/poifs/storage/RawDataBlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v1

    invoke-direct {v3, p0, v1, v2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;Lorg/apache/poi/poifs/storage/BlockList;)V

    .line 64
    return-object v2
.end method
