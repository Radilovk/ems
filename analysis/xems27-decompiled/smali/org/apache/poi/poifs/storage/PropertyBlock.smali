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

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/storage/BigBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getPropertiesPerBlock()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/poifs/property/Property;

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/PropertyBlock;->_properties:[Lorg/apache/poi/poifs/property/Property;

    .line 47
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/PropertyBlock;->_properties:[Lorg/apache/poi/poifs/property/Property;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 49
    add-int v2, v0, p3

    aget-object v2, p2, v2

    aput-object v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "j":I
    :cond_0
    return-void
.end method

.method public static createPropertyBlockArray(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/util/List;)[Lorg/apache/poi/poifs/storage/BlockWritable;
    .locals 7
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/common/POIFSBigBlockSize;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;)[",
            "Lorg/apache/poi/poifs/storage/BlockWritable;"
        }
    .end annotation

    .line 67
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/property/Property;>;"
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getPropertiesPerBlock()I

    move-result v0

    .line 68
    .local v0, "_properties_per_block":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    .line 71
    .local v1, "block_count":I
    mul-int v2, v1, v0

    new-array v2, v2, [Lorg/apache/poi/poifs/property/Property;

    .line 74
    .local v2, "to_be_written":[Lorg/apache/poi/poifs/property/Property;
    const/4 v3, 0x0

    new-array v4, v3, [Lorg/apache/poi/poifs/property/Property;

    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "j":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 81
    new-instance v4, Lorg/apache/poi/poifs/storage/PropertyBlock$1;

    invoke-direct {v4}, Lorg/apache/poi/poifs/storage/PropertyBlock$1;-><init>()V

    aput-object v4, v2, v3

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "j":I
    :cond_0
    new-array v3, v1, [Lorg/apache/poi/poifs/storage/BlockWritable;

    .line 95
    .local v3, "rvalue":[Lorg/apache/poi/poifs/storage/BlockWritable;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 97
    new-instance v5, Lorg/apache/poi/poifs/storage/PropertyBlock;

    mul-int v6, v4, v0

    invoke-direct {v5, p0, v2, v6}, Lorg/apache/poi/poifs/storage/PropertyBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/property/Property;I)V

    aput-object v5, v3, v4

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 100
    .end local v4    # "j":I
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

    .line 118
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/PropertyBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getPropertiesPerBlock()I

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
    .end local v1    # "j":I
    :cond_0
    return-void
.end method
