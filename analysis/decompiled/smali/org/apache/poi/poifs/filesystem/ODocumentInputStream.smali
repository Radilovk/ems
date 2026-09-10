.class public final Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;
.super Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
.source "ODocumentInputStream.java"


# instance fields
.field private _closed:Z

.field private _currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

.field private _current_offset:I

.field private _document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

.field private _document_size:I

.field private _marked_offset:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 3
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>()V

    .line 58
    instance-of v1, p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot open internal document storage"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 61
    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 62
    .local v0, "documentNode":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getDocument()Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    move-result-object v1

    if-nez v1, :cond_1

    .line 63
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot open internal document storage"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    iput v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 67
    iput v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_marked_offset:I

    .line 68
    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    .line 69
    iput-boolean v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    .line 70
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getDocument()Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 71
    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V
    .locals 2
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>()V

    .line 80
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 81
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_marked_offset:I

    .line 82
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getSize()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    .line 83
    iput-boolean v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    .line 84
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 85
    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    .line 86
    return-void
.end method

.method private atEOD()Z
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

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
    .line 188
    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 192
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

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    iget v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

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

    .line 195
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
    .line 178
    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    return-void
.end method

.method private getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    .line 99
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "ignoredReadlimit"    # I

    .prologue
    .line 103
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_marked_offset:I

    .line 104
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->dieIfClosed()V

    .line 113
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->atEOD()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const/4 v0, -0x1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readUByte()I

    move-result v0

    .line 117
    .local v0, "result":I
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 118
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 119
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

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
    .line 126
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->dieIfClosed()V

    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "buffer must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v1, p1

    add-int v2, p2, p3

    if-ge v1, v2, :cond_2

    .line 131
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "can\'t read past buffer boundaries"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_2
    if-nez p3, :cond_3

    .line 134
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 136
    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->atEOD()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    const/4 v0, -0x1

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->available()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 140
    .local v0, "limit":I
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->readFully([BII)V

    goto :goto_0
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->readUByte()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([BII)V
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 214
    invoke-direct {p0, p3}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->checkAvaliable(I)V

    .line 215
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v0

    .line 216
    .local v0, "blockAvailable":I
    if-le v0, p3, :cond_1

    .line 217
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v5, p1, p2, p3}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readFully([BII)V

    .line 218
    iget v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v5, p3

    iput v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    move v2, p3

    .line 223
    .local v2, "remaining":I
    move v4, p2

    .line 224
    .local v4, "writePos":I
    :cond_2
    :goto_1
    if-lez v2, :cond_0

    .line 225
    if-lt v2, v0, :cond_3

    const/4 v1, 0x1

    .line 227
    .local v1, "blockIsExpiring":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 228
    move v3, v0

    .line 232
    .local v3, "reqSize":I
    :goto_3
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v5, p1, v4, v3}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readFully([BII)V

    .line 233
    sub-int/2addr v2, v3

    .line 234
    add-int/2addr v4, v3

    .line 235
    iget v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 236
    if-eqz v1, :cond_2

    .line 237
    iget v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    iget v6, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    if-ne v5, v6, :cond_6

    .line 238
    if-lez v2, :cond_5

    .line 239
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "reached end of document stream unexpectedly"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 225
    .end local v1    # "blockIsExpiring":Z
    .end local v3    # "reqSize":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 230
    .restart local v1    # "blockIsExpiring":Z
    :cond_4
    move v3, v2

    .restart local v3    # "reqSize":I
    goto :goto_3

    .line 242
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    goto :goto_0

    .line 245
    :cond_6
    iget v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    invoke-direct {p0, v5}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    .line 246
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v0

    goto :goto_1
.end method

.method public readInt()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 273
    invoke-direct {p0, v4}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->checkAvaliable(I)V

    .line 274
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v0

    .line 276
    .local v0, "blockAvailable":I
    if-le v0, v4, :cond_0

    .line 277
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readIntLE()I

    move-result v2

    .line 287
    .local v2, "result":I
    :goto_0
    iget v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 288
    return v2

    .line 279
    .end local v2    # "result":I
    :cond_0
    iget v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v1

    .line 280
    .local v1, "nextBlock":Lorg/apache/poi/poifs/storage/DataInputBlock;
    if-ne v0, v4, :cond_1

    .line 281
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readIntLE()I

    move-result v2

    .line 285
    .restart local v2    # "result":I
    :goto_1
    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    goto :goto_0

    .line 283
    .end local v2    # "result":I
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1, v3, v0}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readIntLE(Lorg/apache/poi/poifs/storage/DataInputBlock;I)I

    move-result v2

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public readLong()J
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 253
    invoke-direct {p0, v5}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->checkAvaliable(I)V

    .line 254
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v0

    .line 256
    .local v0, "blockAvailable":I
    if-le v0, v5, :cond_0

    .line 257
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readLongLE()J

    move-result-wide v2

    .line 267
    .local v2, "result":J
    :goto_0
    iget v4, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 268
    return-wide v2

    .line 259
    .end local v2    # "result":J
    :cond_0
    iget v4, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v1

    .line 260
    .local v1, "nextBlock":Lorg/apache/poi/poifs/storage/DataInputBlock;
    if-ne v0, v5, :cond_1

    .line 261
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readLongLE()J

    move-result-wide v2

    .line 265
    .restart local v2    # "result":J
    :goto_1
    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    goto :goto_0

    .line 263
    .end local v2    # "result":J
    :cond_1
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1, v4, v0}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readLongLE(Lorg/apache/poi/poifs/storage/DataInputBlock;I)J

    move-result-wide v2

    .restart local v2    # "result":J
    goto :goto_1
.end method

.method public readShort()S
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->readUShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUByte()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 313
    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->checkAvaliable(I)V

    .line 314
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readUByte()I

    move-result v0

    .line 315
    .local v0, "result":I
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 316
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 317
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    .line 319
    :cond_0
    return v0
.end method

.method public readUShort()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 293
    invoke-direct {p0, v4}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->checkAvaliable(I)V

    .line 294
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v0

    .line 296
    .local v0, "blockAvailable":I
    if-le v0, v4, :cond_0

    .line 297
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readUShortLE()I

    move-result v2

    .line 307
    .local v2, "result":I
    :goto_0
    iget v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 308
    return v2

    .line 299
    .end local v2    # "result":I
    :cond_0
    iget v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v1

    .line 300
    .local v1, "nextBlock":Lorg/apache/poi/poifs/storage/DataInputBlock;
    if-ne v0, v4, :cond_1

    .line 301
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readUShortLE()I

    move-result v2

    .line 305
    .restart local v2    # "result":I
    :goto_1
    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    goto :goto_0

    .line 303
    .end local v2    # "result":I
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1, v3}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readUShortLE(Lorg/apache/poi/poifs/storage/DataInputBlock;)I

    move-result v2

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_marked_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 152
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    .line 153
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 157
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->dieIfClosed()V

    .line 158
    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 174
    :goto_0
    return-wide v2

    .line 161
    :cond_0
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    long-to-int v4, p1

    add-int v0, v1, v4

    .line 163
    .local v0, "new_offset":I
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    if-ge v0, v1, :cond_2

    .line 166
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    .line 170
    :cond_1
    :goto_1
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    sub-int v1, v0, v1

    int-to-long v2, v1

    .line 172
    .local v2, "rval":J
    iput v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 173
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    goto :goto_0

    .line 167
    .end local v2    # "rval":J
    :cond_2
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    if-le v0, v1, :cond_1

    .line 168
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    goto :goto_1
.end method
