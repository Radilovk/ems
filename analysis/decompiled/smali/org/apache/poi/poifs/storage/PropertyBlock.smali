.class public final Lorg/apache/poi/poifs/storage/PropertyBlock;
.super Lorg/apache/poi/poifs/storage/BigBlock;
.source "PropertyBlock.java"


# instance fields
.field private _properties:[Lorg/apache/poi/poifs/property/Property;


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/property/Property;I)V
    .locals 3
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "properties"    # [Lorg/apache/poi/poifs/property/Property;
    .param p3, "offset"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/storage/BigBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getPropertiesPerBlock()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/poifs/property/Property;

    iput-object v1, p0, Lorg/apache/poi/poifs/storage/PropertyBlock;->_properties:[Lorg/apache/poi/poifs/property/Property;

    .line 47
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/PropertyBlock;->_properties:[Lorg/apache/poi/poifs/property/Property;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/PropertyBlock;->_properties:[Lorg/apache/poi/poifs/property/Property;

    add-int v2, v0, p3

    aget-object v2, p2, v2

    aput-object v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public static createPropertyBlockArray(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/util/List;)[Lorg/apache/poi/poifs/storage/BlockWritable;
    .locals 8
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/common/POIFSBigBlockSize;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;)[",
            "Lorg/apache/poi/poifs/storage/BlockWritable;"
        }
    .end annotation

    .prologue
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/property/Property;>;"
    const/4 v7, 0x0

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getPropertiesPerBlock()I

    move-result v0

    .line 68
    .local v0, "_properties_per_block":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    div-int v1, v5, v0

    .line 71
    .local v1, "block_count":I
    mul-int v5, v1, v0

    new-array v4, v5, [Lorg/apache/poi/poifs/property/Property;

    .line 74
    .local v4, "to_be_written":[Lorg/apache/poi/poifs/property/Property;
    new-array v5, v7, [Lorg/apache/poi/poifs/property/Property;

    invoke-interface {p1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "j":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 81
    new-instance v5, Lorg/apache/poi/poifs/storage/PropertyBlock$1;

    invoke-direct {v5}, Lorg/apache/poi/poifs/storage/PropertyBlock$1;-><init>()V

    aput-object v5, v4, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    new-array v3, v1, [Lorg/apache/poi/poifs/storage/BlockWritable;

    .line 95
    .local v3, "rvalue":[Lorg/apache/poi/poifs/storage/BlockWritable;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 97
    new-instance v5, Lorg/apache/poi/poifs/storage/PropertyBlock;

    mul-int v6, v2, v0

    invoke-direct {v5, p0, v4, v6}, Lorg/apache/poi/poifs/storage/PropertyBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/property/Property;I)V

    aput-object v5, v3, v2

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :cond_1
    return-object v3
.end method


# virtual methods
.method public bridge synthetic writeBlocks(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/storage/BigBlock;->writeBlocks(Ljava/io/OutputStream;)V

    return-void
.end method

.method writeData(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/PropertyBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getPropertiesPerBlock()I

    move-result v0

    .line 119
    .local v0, "_properties_per_block":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 121
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/PropertyBlock;->_properties:[Lorg/apache/poi/poifs/property/Property;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/property/Property;->writeData(Ljava/io/OutputStream;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method
