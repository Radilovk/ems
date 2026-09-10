.class public final Lorg/apache/poi/poifs/property/PropertyTable;
.super Lorg/apache/poi/poifs/property/PropertyTableBase;
.source "PropertyTable.java"

# interfaces
.implements Lorg/apache/poi/poifs/storage/BlockWritable;


# instance fields
.field private _bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field private _blocks:[Lorg/apache/poi/poifs/storage/BlockWritable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V
    .locals 1
    .param p1, "headerBlock"    # Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_blocks:[Lorg/apache/poi/poifs/storage/BlockWritable;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/storage/RawDataBlockList;)V
    .locals 2
    .param p1, "headerBlock"    # Lorg/apache/poi/poifs/storage/HeaderBlock;
    .param p2, "blockList"    # Lorg/apache/poi/poifs/storage/RawDataBlockList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/poifs/storage/RawDataBlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/property/PropertyFactory;->convertToProperties([Lorg/apache/poi/poifs/storage/ListManagedBlock;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/property/PropertyTableBase;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)V

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_blocks:[Lorg/apache/poi/poifs/storage/BlockWritable;

    .line 71
    return-void
.end method


# virtual methods
.method public countBlocks()I
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_blocks:[Lorg/apache/poi/poifs/storage/BlockWritable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public preWrite()V
    .locals 3

    .line 78
    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/poifs/property/Property;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/property/Property;

    .line 81
    .local v0, "properties":[Lorg/apache/poi/poifs/property/Property;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 83
    aget-object v2, v0, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/property/Property;->setIndex(I)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "k":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-static {v1, v2}, Lorg/apache/poi/poifs/storage/PropertyBlock;->createPropertyBlockArray(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/util/List;)[Lorg/apache/poi/poifs/storage/BlockWritable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_blocks:[Lorg/apache/poi/poifs/storage/BlockWritable;

    .line 90
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 92
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/apache/poi/poifs/property/Property;->preWrite()V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    .end local v1    # "k":I
    :cond_1
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

    .line 119
    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_blocks:[Lorg/apache/poi/poifs/storage/BlockWritable;

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_blocks:[Lorg/apache/poi/poifs/storage/BlockWritable;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 123
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/poi/poifs/storage/BlockWritable;->writeBlocks(Ljava/io/OutputStream;)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "j":I
    :cond_0
    return-void
.end method
