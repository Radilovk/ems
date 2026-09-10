.class public final Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;
.super Ljava/lang/Object;
.source "NPOIFSDocument.java"

# interfaces
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;


# instance fields
.field private _block_size:I

.field private _filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

.field private _property:Lorg/apache/poi/poifs/property/DocumentProperty;

.field private _stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "filesystem"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .param p4, "writer"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 96
    const/16 v0, 0x1000

    if-ge p2, v0, :cond_0

    .line 97
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 98
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBlockStoreBlockSize()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-direct {v0, p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 101
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockStoreBlockSize()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    .line 104
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 105
    .local v0, "innerOs":Ljava/io/OutputStream;
    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    invoke-direct {v1, v0, p2}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 106
    .local v1, "os":Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    const-string v3, "\\\\"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>([Ljava/lang/String;)V

    .line 107
    .local v2, "path":Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->getComponent(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "docName":Ljava/lang/String;
    new-instance v4, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;

    invoke-direct {v4, v1, v2, v3, p2}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;I)V

    .line 109
    .local v4, "event":Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;
    invoke-interface {p4, v4}, Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;->processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 113
    new-instance v5, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {v5, p1, p2}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 114
    iget-object v6, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/poifs/property/DocumentProperty;->setStartBlock(I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filesystem"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .param p3, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 84
    invoke-direct {p0, p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->store(Ljava/io/InputStream;)I

    move-result v0

    .line 87
    .local v0, "length":I
    new-instance v1, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 88
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/property/DocumentProperty;->setStartBlock(I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V
    .locals 2
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 3
    .param p1, "property"    # Lorg/apache/poi/poifs/property/DocumentProperty;
    .param p2, "filesystem"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 61
    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/DocumentProperty;->getSize()I

    move-result v0

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    .line 64
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/DocumentProperty;->getStartBlock()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 65
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBlockStoreBlockSize()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/DocumentProperty;->getStartBlock()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 68
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockStoreBlockSize()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    .line 70
    :goto_0
    return-void
.end method

.method private store(Ljava/io/InputStream;)I
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const/16 v0, 0x1000

    .line 122
    .local v0, "bigBlockSize":I
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1001

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 123
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 126
    const-wide/16 v2, 0x1000

    invoke-virtual {v1, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 127
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 128
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBlockStoreBlockSize()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    goto :goto_0

    .line 130
    :cond_0
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v2, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 131
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockStoreBlockSize()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    .line 135
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    .line 138
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 139
    .local v2, "os":Ljava/io/OutputStream;
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 140
    .local v3, "buf":[B
    const/4 v4, 0x0

    .line 142
    .local v4, "length":I
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "readBytes":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 143
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    add-int/2addr v4, v6

    goto :goto_1

    .line 146
    .end local v6    # "readBytes":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 148
    return v4
.end method


# virtual methods
.method free()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->free()V

    .line 156
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;->setStartBlock(I)V

    .line 157
    return-void
.end method

.method getBlockIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, "empty":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method getDocumentBlockSize()I
    .locals 1

    .line 165
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    return v0
.end method

.method getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    return-object v0
.end method

.method getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 261
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "Document: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/DocumentProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSize()I
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/DocumentProperty;->getSize()I

    move-result v0

    return v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 9

    .line 204
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 208
    .local v0, "results":[Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getSize()I

    move-result v3

    if-lez v3, :cond_1

    .line 210
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getSize()I

    move-result v3

    new-array v3, v3, [B

    .line 211
    .local v3, "data":[B
    const/4 v4, 0x0

    .line 212
    .local v4, "offset":I
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 213
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    iget v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    array-length v8, v3

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 214
    .local v7, "length":I
    invoke-virtual {v6, v3, v4, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 215
    add-int/2addr v4, v7

    .line 216
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "length":I
    goto :goto_0

    .line 218
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 219
    .local v5, "output":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7, v5, v1}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;I)V

    .line 220
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .end local v3    # "data":[B
    .end local v4    # "offset":I
    .end local v5    # "output":Ljava/io/ByteArrayOutputStream;
    .local v2, "result":Ljava/lang/String;
    goto :goto_1

    .line 222
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    const-string v2, "<NO DATA>"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .restart local v2    # "result":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 224
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 225
    .restart local v2    # "result":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 227
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    aput-object v2, v0, v1

    .line 228
    return-object v0
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 238
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public preferArray()Z
    .locals 1

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public replaceContents(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->free()V

    .line 186
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->store(Ljava/io/InputStream;)I

    move-result v0

    .line 187
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/property/DocumentProperty;->setStartBlock(I)V

    .line 188
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/property/DocumentProperty;->updateSize(I)V

    .line 189
    return-void
.end method
