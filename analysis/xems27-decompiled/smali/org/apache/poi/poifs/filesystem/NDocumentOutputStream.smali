.class public final Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;
.super Ljava/io/OutputStream;
.source "NDocumentOutputStream.java"


# instance fields
.field private _buffer:Ljava/io/ByteArrayOutputStream;

.field private _closed:Z

.field private _document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

.field private _document_size:I

.field private _property:Lorg/apache/poi/poifs/property/DocumentProperty;

.field private _stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

.field private _stream_output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    .line 78
    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document_size:I

    .line 82
    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_closed:Z

    .line 85
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v0, v0, [B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, p2, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object v0

    .line 86
    .local v0, "doc":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/property/DocumentProperty;

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 87
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-direct {v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    .line 88
    return-void

    .line 79
    .end local v0    # "doc":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open internal directory storage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not a Directory Node"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 3
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    .line 59
    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document_size:I

    .line 63
    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_closed:Z

    .line 65
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 67
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    .line 68
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->free()V

    .line 69
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open internal document storage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not a Document Node"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkBufferSize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 101
    .local v0, "data":[B
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    .line 102
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->write([BII)V

    .line 106
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method private dieIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_closed:Z

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->replaceContents(Ljava/io/InputStream;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 156
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document_size:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;->updateSize(I)V

    .line 157
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;->setStartBlock(I)V

    .line 161
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_closed:Z

    .line 162
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->dieIfClosed()V

    .line 111
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 113
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->checkBufferSize()V

    goto :goto_0

    .line 115
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->write([B)V

    .line 117
    :goto_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->dieIfClosed()V

    .line 122
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 124
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->checkBufferSize()V

    goto :goto_0

    .line 126
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->write([BII)V

    .line 128
    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->dieIfClosed()V

    .line 133
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 135
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->checkBufferSize()V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 139
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    .line 141
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document_size:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document_size:I

    .line 144
    :goto_0
    return-void
.end method
