.class final Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;
.super Ljava/lang/Object;
.source "POIFSDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/POIFSDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmallBlockStore"
.end annotation


# instance fields
.field private final _bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field private final _name:Ljava/lang/String;

.field private final _path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

.field private final _size:I

.field private _smallBlocks:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

.field private final _writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;


# direct methods
.method constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V
    .locals 1
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "size"    # I
    .param p5, "writer"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 442
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_smallBlocks:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .line 443
    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    .line 444
    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_name:Ljava/lang/String;

    .line 445
    iput p4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_size:I

    .line 446
    iput-object p5, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    .line 447
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V
    .locals 2
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "blocks"    # [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 424
    invoke-virtual {p2}, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_smallBlocks:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    .line 426
    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_name:Ljava/lang/String;

    .line 427
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_size:I

    .line 428
    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    .line 429
    return-void
.end method


# virtual methods
.method getBlocks()[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .locals 7

    .line 460
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_size:I

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 462
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_size:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 464
    .local v1, "dstream":Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

    new-instance v3, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_name:Ljava/lang/String;

    iget v6, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_size:I

    invoke-direct {v3, v1, v4, v5, v6}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;->processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V

    .line 465
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_size:I

    invoke-static {v2, v3, v4}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->convert(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[BI)[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_smallBlocks:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .line 467
    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dstream":Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_smallBlocks:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    return-object v0
.end method

.method isValid()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_smallBlocks:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    array-length v0, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument$SmallBlockStore;->_writer:Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;

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
