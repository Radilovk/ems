.class public Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
.super Ljava/io/InputStream;
.source "DocumentInputStream.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field protected static final EOF:I = -0x1

.field protected static final SIZE_INT:I = 0x4

.field protected static final SIZE_LONG:I = 0x8

.field protected static final SIZE_SHORT:I = 0x2


# instance fields
.field private delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 4
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 53
    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v0, :cond_3

    .line 56
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 57
    .local v0, "documentNode":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 59
    .local v1, "parentNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getDocument()Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    new-instance v2, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;

    invoke-direct {v2, p1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 62
    new-instance v2, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;

    invoke-direct {v2, p1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;

    invoke-direct {v2, p1}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No FileSystem bound on the parent, can\'t read contents"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    .end local v0    # "documentNode":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v1    # "parentNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot open internal document storage"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)V
    .locals 1
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    .line 84
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 85
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V
    .locals 1
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 75
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 76
    new-instance v0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    .line 77
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 94
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "ignoredReadlimit"    # I

    .line 97
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->mark(I)V

    .line 98
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 147
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    .line 148
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 151
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    .line 152
    return-void
.end method

.method public readInt()I
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .line 155
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1

    .line 143
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readUShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUByte()I
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readUByte()I

    move-result v0

    return v0
.end method

.method public readUInt()J
    .locals 5

    .line 171
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readInt()I

    move-result v0

    .line 172
    .local v0, "i":I
    int-to-long v1, v0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    return-wide v1
.end method

.method public readUShort()I
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readUShort()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->reset()V

    .line 128
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
