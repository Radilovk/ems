.class public final Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;
.super Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
.source "NDocumentInputStream.java"


# instance fields
.field private _buffer:Ljava/nio/ByteBuffer;

.field private _closed:Z

.field private _current_block_count:I

.field private _current_offset:I

.field private _data:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private _document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

.field private _document_size:I

.field private _marked_offset:I

.field private _marked_offset_count:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 5
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>()V

    .line 63
    instance-of v2, p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-nez v2, :cond_0

    .line 64
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open internal document storage, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a Document Node"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    iput v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 67
    iput v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    .line 68
    iput v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    .line 69
    iput v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    .line 70
    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    .line 71
    iput-boolean v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    move-object v0, p1

    .line 73
    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 74
    .local v0, "doc":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 75
    .local v1, "property":Lorg/apache/poi/poifs/property/DocumentProperty;
    new-instance v3, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    .line 79
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)V
    .locals 2
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>()V

    .line 88
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 89
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    .line 90
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    .line 91
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    .line 92
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getSize()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    .line 93
    iput-boolean v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    .line 94
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    .line 95
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    .line 96
    return-void
.end method

.method private atEOD()Z
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAvaliable(I)V
    .locals 4
    .param p1, "requestedSize"    # I

    .prologue
    .line 231
    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 235
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer underrun - requested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    iget v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    return-void
.end method

.method private dieIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    .line 109
    return-void
.end method

.method public mark(I)V
    .locals 2
    .param p1, "ignoredReadlimit"    # I

    .prologue
    .line 113
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    .line 114
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    .line 115
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->dieIfClosed()V

    .line 120
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->atEOD()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    const/4 v1, -0x1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    new-array v0, v4, [B

    .line 124
    .local v0, "b":[B
    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->read([BII)I

    move-result v1

    .line 125
    .local v1, "result":I
    if-ltz v1, :cond_0

    .line 126
    aget-byte v2, v0, v3

    if-gez v2, :cond_2

    .line 127
    aget-byte v2, v0, v3

    add-int/lit16 v1, v2, 0x100

    goto :goto_0

    .line 129
    :cond_2
    aget-byte v1, v0, v3

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->dieIfClosed()V

    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "buffer must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v1, p1

    add-int v2, p2, p3

    if-ge v1, v2, :cond_2

    .line 141
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "can\'t read past buffer boundaries"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_2
    if-nez p3, :cond_3

    .line 144
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    .line 146
    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->atEOD()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    const/4 v0, -0x1

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->available()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 150
    .local v0, "limit":I
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    goto :goto_0
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readUByte()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 242
    invoke-direct {p0, p3}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "read":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 246
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_1

    .line 247
    :cond_0
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    .line 248
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    .line 251
    :cond_1
    sub-int v2, p3, v1

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 252
    .local v0, "limit":I
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    add-int v3, p2, v1

    invoke-virtual {v2, p1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 253
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 254
    add-int/2addr v1, v0

    .line 255
    goto :goto_0

    .line 256
    .end local v0    # "limit":I
    :cond_2
    return-void
.end method

.method public readInt()I
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 286
    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    .line 287
    new-array v0, v2, [B

    .line 288
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    .line 289
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v1

    return v1
.end method

.method public readLong()J
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 270
    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    .line 271
    new-array v0, v1, [B

    .line 272
    .local v0, "data":[B
    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    .line 273
    invoke-static {v0, v2}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v2

    return-wide v2
.end method

.method public readShort()S
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 278
    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    .line 279
    new-array v0, v2, [B

    .line 280
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    .line 281
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getShort([B)S

    move-result v1

    return v1
.end method

.method public readUByte()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    .line 303
    new-array v0, v1, [B

    .line 304
    .local v0, "data":[B
    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    .line 305
    aget-byte v1, v0, v2

    if-ltz v1, :cond_0

    .line 306
    aget-byte v1, v0, v2

    .line 307
    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, v2

    add-int/lit16 v1, v1, 0x100

    goto :goto_0
.end method

.method public readUShort()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 294
    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    .line 295
    new-array v0, v2, [B

    .line 296
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    .line 297
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v1

    return v1
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 162
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    if-nez v2, :cond_0

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    if-nez v2, :cond_0

    .line 163
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    .line 164
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 165
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    .line 166
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    .line 195
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    .line 172
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    if-ge v0, v2, :cond_1

    .line 174
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    .line 175
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_1
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    .line 181
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    iget v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    if-eq v2, v3, :cond_2

    .line 183
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    .line 184
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    .line 189
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    iget v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    sub-int v1, v2, v3

    .line 190
    .local v1, "skipBy":I
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    .end local v1    # "skipBy":I
    :cond_2
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    goto :goto_0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 199
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->dieIfClosed()V

    .line 200
    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    .line 217
    :goto_0
    return-wide v2

    .line 203
    :cond_0
    iget v4, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    long-to-int v5, p1

    add-int v0, v4, v5

    .line 205
    .local v0, "new_offset":I
    iget v4, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    if-ge v0, v4, :cond_2

    .line 207
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    .line 212
    :cond_1
    :goto_1
    iget v4, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    sub-int v4, v0, v4

    int-to-long v2, v4

    .line 215
    .local v2, "rval":J
    long-to-int v4, v2

    new-array v1, v4, [B

    .line 216
    .local v1, "skip":[B
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([B)V

    goto :goto_0

    .line 208
    .end local v1    # "skip":[B
    .end local v2    # "rval":J
    :cond_2
    iget v4, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    if-le v0, v4, :cond_1

    .line 209
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    goto :goto_1
.end method
