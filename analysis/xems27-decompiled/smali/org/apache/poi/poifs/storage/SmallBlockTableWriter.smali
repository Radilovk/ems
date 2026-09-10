.class public Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;
.super Ljava/lang/Object;
.source "SmallBlockTableWriter.java"

# interfaces
.implements Lorg/apache/poi/poifs/storage/BlockWritable;
.implements Lorg/apache/poi/poifs/filesystem/BATManaged;


# instance fields
.field private _big_block_count:I

.field private _root:Lorg/apache/poi/poifs/property/RootProperty;

.field private _sbat:Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

.field private _small_blocks:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/util/List;Lorg/apache/poi/poifs/property/RootProperty;)V
    .locals 6
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "documents"    # Ljava/util/List;
    .param p3, "root"    # Lorg/apache/poi/poifs/property/RootProperty;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_sbat:Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_small_blocks:Ljava/util/List;

    .line 60
    iput-object p3, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_root:Lorg/apache/poi/poifs/property/RootProperty;

    .line 61
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 66
    .local v1, "doc":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getSmallBlocks()[Lorg/apache/poi/poifs/storage/BlockWritable;

    move-result-object v2

    .line 68
    .local v2, "blocks":[Lorg/apache/poi/poifs/storage/BlockWritable;
    array-length v3, v2

    if-eqz v3, :cond_1

    .line 70
    iget-object v3, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_sbat:Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->allocateSpace(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->setStartBlock(I)V

    .line 71
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 73
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_small_blocks:Ljava/util/List;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "j":I
    :cond_0
    goto :goto_2

    .line 76
    :cond_1
    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->setStartBlock(I)V

    .line 78
    .end local v1    # "doc":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    .end local v2    # "blocks":[Lorg/apache/poi/poifs/storage/BlockWritable;
    :goto_2
    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_sbat:Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->simpleCreateBlocks()V

    .line 80
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_root:Lorg/apache/poi/poifs/property/RootProperty;

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_small_blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/property/RootProperty;->setSize(I)V

    .line 81
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_small_blocks:Ljava/util/List;

    invoke-static {p1, v1}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->fill(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_big_block_count:I

    .line 82
    return-void
.end method


# virtual methods
.method public countBlocks()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_big_block_count:I

    return v0
.end method

.method public getSBAT()Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_sbat:Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    return-object v0
.end method

.method public getSBATBlockCount()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_big_block_count:I

    add-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public setStartBlock(I)V
    .locals 1
    .param p1, "start_block"    # I

    .line 127
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_root:Lorg/apache/poi/poifs/property/RootProperty;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/RootProperty;->setStartBlock(I)V

    .line 128
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

    .line 146
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->_small_blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 148
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/storage/BlockWritable;

    invoke-interface {v1, p1}, Lorg/apache/poi/poifs/storage/BlockWritable;->writeBlocks(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method
