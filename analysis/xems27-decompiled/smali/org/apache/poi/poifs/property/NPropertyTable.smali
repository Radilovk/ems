.class public final Lorg/apache/poi/poifs/property/NPropertyTable;
.super Lorg/apache/poi/poifs/property/PropertyTableBase;
.source "NPropertyTable.java"


# static fields
.field private static final _logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/property/NPropertyTable;->_logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V
    .locals 1
    .param p1, "headerBlock"    # Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/property/NPropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 2
    .param p1, "headerBlock"    # Lorg/apache/poi/poifs/storage/HeaderBlock;
    .param p2, "filesystem"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/property/NPropertyTable;->buildProperties(Ljava/util/Iterator;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/property/PropertyTableBase;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)V

    .line 73
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/property/NPropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 74
    return-void
.end method

.method private static buildProperties(Ljava/util/Iterator;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)Ljava/util/List;
    .locals 9
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lorg/apache/poi/poifs/common/POIFSBigBlockSize;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    .local p0, "dataSource":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/ByteBuffer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/property/Property;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 91
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .local v2, "data":[B
    goto :goto_1

    .line 95
    .end local v2    # "data":[B
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    new-array v2, v2, [B

    .line 97
    .restart local v2    # "data":[B
    array-length v3, v2

    .line 98
    .local v3, "toRead":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 102
    sget-object v4, Lorg/apache/poi/poifs/property/NPropertyTable;->_logger:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " bytes instead of the expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Short Property Block, "

    invoke-virtual {v4, v5, v8, v6, v7}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 107
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 110
    .end local v3    # "toRead":I
    :goto_1
    invoke-static {v2, v0}, Lorg/apache/poi/poifs/property/PropertyFactory;->convertToProperties([BLjava/util/List;)V

    .line 111
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "data":[B
    goto :goto_0

    .line 112
    :cond_2
    return-object v0
.end method


# virtual methods
.method public countBlocks()I
    .locals 3

    .line 122
    iget-object v0, p0, Lorg/apache/poi/poifs/property/NPropertyTable;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    .line 123
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/poi/poifs/property/NPropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    div-int v1, v0, v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    return v1
.end method

.method public preWrite()V
    .locals 5

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/property/Property;>;"
    const/4 v1, 0x0

    .line 133
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/poi/poifs/property/NPropertyTable;->_properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/property/Property;

    .line 135
    .local v3, "p":Lorg/apache/poi/poifs/property/Property;
    if-nez v3, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/property/Property;->setIndex(I)V

    .line 137
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v3    # "p":Lorg/apache/poi/poifs/property/Property;
    move v1, v4

    goto :goto_0

    .line 141
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/property/Property;

    .restart local v3    # "p":Lorg/apache/poi/poifs/property/Property;
    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/Property;->preWrite()V

    .end local v3    # "p":Lorg/apache/poi/poifs/property/Property;
    goto :goto_1

    .line 142
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public write(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)V
    .locals 3
    .param p1, "stream"    # Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 149
    .local v0, "os":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/apache/poi/poifs/property/NPropertyTable;->_properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/Property;

    .line 150
    .local v2, "property":Lorg/apache/poi/poifs/property/Property;
    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/property/Property;->writeData(Ljava/io/OutputStream;)V

    .line 153
    .end local v2    # "property":Lorg/apache/poi/poifs/property/Property;
    :cond_0
    goto :goto_0

    .line 154
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 157
    invoke-virtual {p0}, Lorg/apache/poi/poifs/property/NPropertyTable;->getStartBlock()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 158
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/property/NPropertyTable;->setStartBlock(I)V

    .line 160
    :cond_2
    return-void
.end method
