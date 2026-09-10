.class public final Lorg/apache/poi/poifs/filesystem/POIFSDocument;
.super Ljava/lang/Object;
.source "POIFSDocument.java"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/BATManaged;
.implements Lorg/apache/poi/poifs/storage/BlockWritable;
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;,
        Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;
    }
.end annotation


# static fields
.field private static final EMPTY_BIG_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/DocumentBlock;

.field private static final EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;


# instance fields
.field private final _bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field private _big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

.field private _property:Lorg/apache/poi/poifs/property/DocumentProperty;

.field private _size:I

.field private _small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-array v0, v1, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    sput-object v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->EMPTY_BIG_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    .line 49
    new-array v0, v1, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    sput-object v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p4, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p5, "writer"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    .line 195
    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 196
    new-instance v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 197
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    .line 198
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/DocumentProperty;->shouldUseSmallBlocks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    .line 200
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    sget-object v2, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->EMPTY_BIG_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    sget-object v2, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    .line 203
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p4, "writer"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    .prologue
    .line 207
    sget-object v3, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/io/InputStream;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/io/InputStream;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p3, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v3, "blocks":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/storage/DocumentBlock;>;"
    iput v6, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    .line 156
    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 158
    :cond_0
    new-instance v1, Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-direct {v1, p3, p2}, Lorg/apache/poi/poifs/storage/DocumentBlock;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 159
    .local v1, "block":Lorg/apache/poi/poifs/storage/DocumentBlock;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DocumentBlock;->size()I

    move-result v2

    .line 161
    .local v2, "blockSize":I
    if-lez v2, :cond_1

    .line 162
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    .line 165
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DocumentBlock;->partiallyRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    .line 171
    .local v0, "bigBlocks":[Lorg/apache/poi/poifs/storage/DocumentBlock;
    new-instance v4, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    invoke-direct {v4, p2, v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    .line 172
    new-instance v4, Lorg/apache/poi/poifs/property/DocumentProperty;

    iget v5, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    invoke-direct {v4, p1, v5}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 173
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v4, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    .line 174
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/property/DocumentProperty;->shouldUseSmallBlocks()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    new-instance v4, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    iget v5, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    invoke-static {p2, v0, v5}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->convert(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/BlockWritable;I)[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    .line 176
    new-instance v4, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    new-array v5, v6, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-direct {v4, p2, v5}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_2
    new-instance v4, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    sget-object v5, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v4, p2, v5}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p3, "blocks"    # [Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    .line 131
    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 132
    new-instance v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 133
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    .line 134
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    invoke-static {v0}, Lorg/apache/poi/poifs/property/Property;->isSmall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    sget-object v1, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->EMPTY_BIG_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-direct {v0, p2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    .line 136
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    invoke-static {p3}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->convertRawBlocksToSmallBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    invoke-static {p3}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->convertRawBlocksToBigBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)[Lorg/apache/poi/poifs/storage/DocumentBlock;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    .line 139
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    sget-object v1, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v0, p2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "blocks"    # [Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/RawDataBlock;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "blocks"    # [Lorg/apache/poi/poifs/storage/RawDataBlock;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    .line 68
    array-length v0, p2

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 77
    :goto_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {p2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->convertRawBlocksToBigBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)[Lorg/apache/poi/poifs/storage/DocumentBlock;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    .line 78
    new-instance v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 79
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    sget-object v2, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    .line 80
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    .line 81
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/RawDataBlock;->getBigBlockSize()I

    move-result v0

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->LARGER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "blocks"    # [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .param p3, "length"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    .line 110
    array-length v0, p2

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 116
    :goto_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    sget-object v2, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->EMPTY_BIG_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    .line 117
    new-instance v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 118
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {v0, v1, p2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    .line 119
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    .line 120
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_0
.end method

.method private static convertRawBlocksToBigBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)[Lorg/apache/poi/poifs/storage/DocumentBlock;
    .locals 4
    .param p0, "blocks"    # [Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    array-length v2, p0

    new-array v1, v2, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    .line 86
    .local v1, "result":[Lorg/apache/poi/poifs/storage/DocumentBlock;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 87
    new-instance v3, Lorg/apache/poi/poifs/storage/DocumentBlock;

    aget-object v2, p0, v0

    check-cast v2, Lorg/apache/poi/poifs/storage/RawDataBlock;

    invoke-direct {v3, v2}, Lorg/apache/poi/poifs/storage/DocumentBlock;-><init>(Lorg/apache/poi/poifs/storage/RawDataBlock;)V

    aput-object v3, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-object v1
.end method

.method private static convertRawBlocksToSmallBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .locals 3
    .param p0, "blocks"    # [Lorg/apache/poi/poifs/storage/ListManagedBlock;

    .prologue
    const/4 v2, 0x0

    .line 92
    instance-of v1, p0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    if-eqz v1, :cond_0

    .line 93
    check-cast p0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .end local p0    # "blocks":[Lorg/apache/poi/poifs/storage/ListManagedBlock;
    check-cast p0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .line 97
    .local v0, "result":[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    :goto_0
    return-object p0

    .line 95
    .end local v0    # "result":[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .restart local p0    # "blocks":[Lorg/apache/poi/poifs/storage/ListManagedBlock;
    :cond_0
    array-length v1, p0

    new-array v0, v1, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .line 96
    .restart local v0    # "result":[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 97
    goto :goto_0
.end method


# virtual methods
.method public countBlocks()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->countBlocks()I

    move-result v0

    return v0
.end method

.method getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 275
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    if-lt p1, v0, :cond_1

    .line 276
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    if-le p1, v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request for Offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doc size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    .line 281
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/DocumentProperty;->shouldUseSmallBlocks()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->getBlocks()[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->getDataInputBlock([Lorg/apache/poi/poifs/storage/SmallDocumentBlock;I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->getBlocks()[Lorg/apache/poi/poifs/storage/DocumentBlock;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/poifs/storage/DocumentBlock;->getDataInputBlock([Lorg/apache/poi/poifs/storage/DocumentBlock;I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v0

    goto :goto_0
.end method

.method getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "Document: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/property/DocumentProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    return v0
.end method

.method public getSmallBlocks()[Lorg/apache/poi/poifs/storage/BlockWritable;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->getBlocks()[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object v0

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 336
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    .line 340
    .local v6, "results":[Ljava/lang/Object;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 341
    .local v4, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 343
    .local v0, "blocks":[Lorg/apache/poi/poifs/storage/BlockWritable;
    iget-object v8, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->isValid()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 344
    iget-object v8, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->getBlocks()[Lorg/apache/poi/poifs/storage/DocumentBlock;

    move-result-object v0

    .line 348
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 349
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    array-length v8, v0

    if-ge v3, v8, :cond_2

    .line 350
    aget-object v8, v0, v3

    invoke-interface {v8, v4}, Lorg/apache/poi/poifs/storage/BlockWritable;->writeBlocks(Ljava/io/OutputStream;)V

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    .end local v3    # "k":I
    :cond_1
    iget-object v8, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->isValid()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 346
    iget-object v8, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->getBlocks()[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object v0

    goto :goto_0

    .line 352
    .restart local v3    # "k":I
    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 354
    .local v1, "data":[B
    array-length v8, v1

    iget-object v9, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v9}, Lorg/apache/poi/poifs/property/DocumentProperty;->getSize()I

    move-result v9

    if-le v8, v9, :cond_3

    .line 355
    iget-object v8, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/property/DocumentProperty;->getSize()I

    move-result v8

    new-array v7, v8, [B

    .line 357
    .local v7, "tmp":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v7

    invoke-static {v1, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    move-object v1, v7

    .line 360
    .end local v7    # "tmp":[B
    :cond_3
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .end local v4    # "output":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 361
    .restart local v4    # "output":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v8, v9, v4, v10}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;I)V

    .line 362
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 369
    .end local v0    # "blocks":[Lorg/apache/poi/poifs/storage/BlockWritable;
    .end local v1    # "data":[B
    .end local v3    # "k":I
    .end local v4    # "output":Ljava/io/ByteArrayOutputStream;
    .local v5, "result":Ljava/lang/String;
    :goto_2
    aput-object v5, v6, v11

    .line 370
    return-object v6

    .line 364
    .end local v5    # "result":Ljava/lang/String;
    .restart local v0    # "blocks":[Lorg/apache/poi/poifs/storage/BlockWritable;
    .restart local v4    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_1
    const-string v5, "<NO DATA>"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_2

    .line 366
    .end local v0    # "blocks":[Lorg/apache/poi/poifs/storage/BlockWritable;
    .end local v4    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 367
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_2
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public preferArray()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method read([BI)V
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v8, 0x0

    .line 232
    array-length v4, p1

    .line 234
    .local v4, "len":I
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v2

    .line 236
    .local v2, "currentBlock":Lorg/apache/poi/poifs/storage/DataInputBlock;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v0

    .line 237
    .local v0, "blockAvailable":I
    if-le v0, v4, :cond_1

    .line 238
    invoke-virtual {v2, p1, v8, v4}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readFully([BII)V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    move v5, v4

    .line 243
    .local v5, "remaining":I
    const/4 v7, 0x0

    .line 244
    .local v7, "writePos":I
    move v3, p2

    .line 245
    .local v3, "currentOffset":I
    :cond_2
    :goto_1
    if-lez v5, :cond_0

    .line 246
    if-lt v5, v0, :cond_3

    const/4 v1, 0x1

    .line 248
    .local v1, "blockIsExpiring":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 249
    move v6, v0

    .line 253
    .local v6, "reqSize":I
    :goto_3
    invoke-virtual {v2, p1, v7, v6}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readFully([BII)V

    .line 254
    sub-int/2addr v5, v6

    .line 255
    add-int/2addr v7, v6

    .line 256
    add-int/2addr v3, v6

    .line 257
    if-eqz v1, :cond_2

    .line 258
    iget v9, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_size:I

    if-ne v3, v9, :cond_6

    .line 259
    if-lez v5, :cond_5

    .line 260
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "reached end of document stream unexpectedly"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v1    # "blockIsExpiring":Z
    .end local v6    # "reqSize":I
    :cond_3
    move v1, v8

    .line 246
    goto :goto_2

    .line 251
    .restart local v1    # "blockIsExpiring":Z
    :cond_4
    move v6, v5

    .restart local v6    # "reqSize":I
    goto :goto_3

    .line 262
    :cond_5
    const/4 v2, 0x0

    .line 263
    goto :goto_0

    .line 265
    :cond_6
    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v0

    goto :goto_1
.end method

.method public setStartBlock(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/DocumentProperty;->setStartBlock(I)V

    .line 325
    return-void
.end method

.method public writeBlocks(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->writeBlocks(Ljava/io/OutputStream;)V

    .line 304
    return-void
.end method
