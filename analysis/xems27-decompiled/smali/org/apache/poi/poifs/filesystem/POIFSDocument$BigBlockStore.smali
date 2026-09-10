.class final Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;
.super Ljava/lang/Object;
.source "POIFSDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/POIFSDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BigBlockStore"
.end annotation


# instance fields
.field private final _bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field private final _name:Ljava/lang/String;

.field private final _path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

.field private final _size:I

.field private final _writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

.field private bigBlocks:[Lorg/apache/poi/poifs/storage/DocumentBlock;


# direct methods
.method constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V
    .locals 1
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "size"    # I
    .param p5, "writer"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 504
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->bigBlocks:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    .line 505
    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    .line 506
    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_name:Ljava/lang/String;

    .line 507
    iput p4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_size:I

    .line 508
    iput-object p5, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    .line 509
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V
    .locals 2
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "blocks"    # [Lorg/apache/poi/poifs/storage/DocumentBlock;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 486
    invoke-virtual {p2}, [Lorg/apache/poi/poifs/storage/DocumentBlock;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->bigBlocks:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    .line 488
    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_name:Ljava/lang/String;

    .line 489
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_size:I

    .line 490
    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    .line 491
    return-void
.end method


# virtual methods
.method countBlocks()I
    .locals 2

    .line 558
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->bigBlocks:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    array-length v0, v0

    return v0

    .line 562
    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_size:I

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    div-int/2addr v0, v1

    return v0

    .line 565
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getBlocks()[Lorg/apache/poi/poifs/storage/DocumentBlock;
    .locals 7

    .line 522
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    if-eqz v0, :cond_0

    .line 523
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_size:I

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 524
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_size:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 526
    .local v1, "dstream":Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    new-instance v3, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_name:Ljava/lang/String;

    iget v6, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_size:I

    invoke-direct {v3, v1, v4, v5, v6}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;->processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V

    .line 527
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_size:I

    invoke-static {v2, v3, v4}, Lorg/apache/poi/poifs/storage/DocumentBlock;->convert(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[BI)[Lorg/apache/poi/poifs/storage/DocumentBlock;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->bigBlocks:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    .line 529
    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dstream":Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->bigBlocks:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    return-object v0
.end method

.method isValid()Z
    .locals 1

    .line 515
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->bigBlocks:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    array-length v0, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method writeBlocks(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    if-eqz v0, :cond_0

    .line 540
    new-instance v0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_size:I

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 542
    .local v0, "dstream":Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_name:Ljava/lang/String;

    iget v5, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_size:I

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;->processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V

    .line 543
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->countBlocks()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    mul-int v1, v1, v2

    invoke-static {}, Lorg/apache/poi/poifs/storage/DocumentBlock;->getFillByte()B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->writeFiller(IB)V

    .line 545
    .end local v0    # "dstream":Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
    goto :goto_1

    .line 546
    :cond_0
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$BigBlockStore;->bigBlocks:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 547
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/storage/DocumentBlock;->writeBlocks(Ljava/io/OutputStream;)V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    .end local v0    # "k":I
    :cond_1
    :goto_1
    return-void
.end method
