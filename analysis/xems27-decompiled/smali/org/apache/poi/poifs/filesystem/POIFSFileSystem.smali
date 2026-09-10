.class public Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
.super Ljava/lang/Object;
.source "POIFSFileSystem.java"

# interfaces
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;


# static fields
.field private static final _logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _documents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/dev/POIFSViewable;",
            ">;"
        }
    .end annotation
.end field

.field private _property_table:Lorg/apache/poi/poifs/property/PropertyTable;

.field private _root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 92
    new-instance v0, Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 93
    .local v0, "header_block":Lorg/apache/poi/poifs/storage/HeaderBlock;
    new-instance v1, Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/property/PropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_documents:Ljava/util/List;

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 13
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    .line 131
    const/4 v0, 0x0

    .line 137
    .local v0, "success":Z
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v2, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    .local v2, "header_block":Lorg/apache/poi/poifs/storage/HeaderBlock;
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 141
    new-instance v4, Lorg/apache/poi/poifs/storage/RawDataBlockList;

    invoke-direct {v4, p1, v3}, Lorg/apache/poi/poifs/storage/RawDataBlockList;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 142
    .local v1, "data_blocks":Lorg/apache/poi/poifs/storage/RawDataBlockList;
    const/4 v0, 0x1

    .line 144
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    .line 145
    nop

    .line 150
    new-instance v5, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATCount()I

    move-result v9

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATIndex()I

    move-result v10

    move-object v11, v1

    invoke-direct/range {v5 .. v11}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I[IIILorg/apache/poi/poifs/storage/BlockList;)V

    .line 158
    new-instance v3, Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-direct {v3, v2, v1}, Lorg/apache/poi/poifs/property/PropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/storage/RawDataBlockList;)V

    .line 162
    .local v3, "properties":Lorg/apache/poi/poifs/property/PropertyTable;
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v6

    invoke-static {v4, v1, v5, v6}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->getSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/poifs/property/RootProperty;->getChildren()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v10

    move-object v5, p0

    move-object v7, v1

    invoke-direct/range {v5 .. v10}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    .line 174
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/poifs/property/RootProperty;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 175
    return-void

    .line 144
    .end local v1    # "data_blocks":Lorg/apache/poi/poifs/storage/RawDataBlockList;
    .end local v3    # "properties":Lorg/apache/poi/poifs/property/PropertyTable;
    :catchall_0
    move-exception v3

    .restart local v1    # "data_blocks":Lorg/apache/poi/poifs/storage/RawDataBlockList;
    goto :goto_0

    .end local v1    # "data_blocks":Lorg/apache/poi/poifs/storage/RawDataBlockList;
    .end local v2    # "header_block":Lorg/apache/poi/poifs/storage/HeaderBlock;
    :catchall_1
    move-exception v3

    move-object v2, v1

    .local v2, "data_blocks":Lorg/apache/poi/poifs/storage/RawDataBlockList;
    move-object v12, v2

    move-object v1, v12

    .restart local v1    # "data_blocks":Lorg/apache/poi/poifs/storage/RawDataBlockList;
    .local v2, "header_block":Lorg/apache/poi/poifs/storage/HeaderBlock;
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    throw v3
.end method

.method private closeInputStream(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "success"    # Z

    .line 182
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POIFS is closing the supplied input stream of type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") which supports mark/reset.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "This will be a problem for the caller if the stream will still be used.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "If that is the case the caller should wrap the input stream to avoid this close logic.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "This warning is only temporary and will not be present in future versions of POI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 191
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    if-nez p2, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 194
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createNonClosingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 73
    new-instance v0, Lorg/apache/poi/util/CloseIgnoringInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/CloseIgnoringInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static hasPOIFSHeader(Ljava/io/InputStream;)Z
    .locals 2
    .param p0, "inp"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->peekFirst8Bytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 214
    .local v0, "header":[B
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->hasPOIFSHeader([B)Z

    move-result v1

    return v1
.end method

.method public static hasPOIFSHeader([B)Z
    .locals 7
    .param p0, "header8Bytes"    # [B

    .line 221
    new-instance v0, Lorg/apache/poi/util/LongField;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/util/LongField;-><init>(I[B)V

    .line 224
    .local v0, "signature":Lorg/apache/poi/util/LongField;
    invoke-virtual {v0}, Lorg/apache/poi/util/LongField;->get()J

    move-result-wide v2

    const-wide v4, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 398
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "two arguments required: input filename and output filename"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 402
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "istream":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    aget-object v1, p0, v1

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 405
    .local v1, "ostream":Ljava/io/FileOutputStream;
    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v2, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    .line 406
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 407
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 408
    return-void
.end method

.method private processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V
    .locals 10
    .param p1, "small_blocks"    # Lorg/apache/poi/poifs/storage/BlockList;
    .param p2, "big_blocks"    # Lorg/apache/poi/poifs/storage/BlockList;
    .param p4, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p5, "headerPropertiesStartAt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/storage/BlockList;",
            "Lorg/apache/poi/poifs/storage/BlockList;",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;",
            "Lorg/apache/poi/poifs/filesystem/DirectoryNode;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    .local p3, "properties":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/property/Property;>;"
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/Property;

    .line 491
    .local v0, "property":Lorg/apache/poi/poifs/property/Property;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "name":Ljava/lang/String;
    if-nez p4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, p4

    .line 496
    .local v2, "parent":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 501
    .local v3, "new_dir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 503
    move-object v4, v0

    check-cast v4, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/property/DirectoryProperty;->getChildren()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, v3

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    .line 507
    .end local v3    # "new_dir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    goto :goto_3

    .line 510
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result v3

    .line 511
    .local v3, "startBlock":I
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result v4

    .line 512
    .local v4, "size":I
    const/4 v5, 0x0

    .line 514
    .local v5, "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->shouldUseSmallBlocks()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 516
    new-instance v6, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-interface {p1, v3, p5}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v7

    invoke-direct {v6, v1, v7, v4}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    move-object v5, v6

    goto :goto_2

    .line 523
    :cond_2
    new-instance v6, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-interface {p2, v3, p5}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v7

    invoke-direct {v6, v1, v7, v4}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    move-object v5, v6

    .line 528
    :goto_2
    invoke-virtual {v2, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 530
    .end local v0    # "property":Lorg/apache/poi/poifs/property/Property;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "parent":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local v3    # "startBlock":I
    .end local v4    # "size":I
    .end local v5    # "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    :goto_3
    goto :goto_0

    .line 531
    :cond_3
    return-void
.end method


# virtual methods
.method addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V
    .locals 1
    .param p1, "directory"    # Lorg/apache/poi/poifs/property/DirectoryProperty;

    .line 463
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/PropertyTable;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    .line 464
    return-void
.end method

.method addDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V
    .locals 2
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 451
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_documents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/PropertyTable;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    .line 453
    return-void
.end method

.method public createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v0

    return-object v0
.end method

.method public createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object v0

    return-object v0
.end method

.method public createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "writer"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object v0

    return-object v0
.end method

.method public createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 1
    .param p1, "documentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBigBlockSize()I
    .locals 1

    .line 597
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    return v0
.end method

.method public getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    .line 603
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 3

    .line 418
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .line 590
    const-string v0, "POIFS FileSystem"

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 1

    .line 544
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->preferArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 548
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

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

    .line 561
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->preferArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 565
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public preferArray()Z
    .locals 1

    .line 578
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->preferArray()Z

    move-result v0

    return v0
.end method

.method remove(Lorg/apache/poi/poifs/filesystem/EntryNode;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/poi/poifs/filesystem/EntryNode;

    .line 474
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/PropertyTable;->removeProperty(Lorg/apache/poi/poifs/property/Property;)V

    .line 475
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->isDocumentEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_documents:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getDocument()Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 479
    :cond_0
    return-void
.end method

.method public writeFilesystem(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/PropertyTable;->preWrite()V

    .line 299
    new-instance v0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_documents:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/util/List;Lorg/apache/poi/poifs/property/RootProperty;)V

    .line 303
    .local v0, "sbtw":Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;
    new-instance v1, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {v1, v2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 308
    .local v1, "bat":Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v2, "bm_objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_documents:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBAT()Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 319
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 321
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/poifs/filesystem/BATManaged;

    .line 322
    .local v4, "bmo":Lorg/apache/poi/poifs/filesystem/BATManaged;
    invoke-interface {v4}, Lorg/apache/poi/poifs/filesystem/BATManaged;->countBlocks()I

    move-result v5

    .line 324
    .local v5, "block_count":I
    if-eqz v5, :cond_0

    .line 326
    invoke-virtual {v1, v5}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->allocateSpace(I)I

    move-result v6

    invoke-interface {v4, v6}, Lorg/apache/poi/poifs/filesystem/BATManaged;->setStartBlock(I)V

    .line 335
    .end local v4    # "bmo":Lorg/apache/poi/poifs/filesystem/BATManaged;
    .end local v5    # "block_count":I
    :cond_0
    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->createBlocks()I

    move-result v4

    .line 342
    .local v4, "batStartBlock":I
    new-instance v5, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;

    iget-object v6, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {v5, v6}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 343
    .local v5, "header_block_writer":Lorg/apache/poi/poifs/storage/HeaderBlockWriter;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->countBlocks()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setBATBlocks(II)[Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v6

    .line 348
    .local v6, "xbat_blocks":[Lorg/apache/poi/poifs/storage/BATBlock;
    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/property/PropertyTable;->getStartBlock()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setPropertyStart(I)V

    .line 351
    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBAT()Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->getStartBlock()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setSBATStart(I)V

    .line 354
    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBATBlockCount()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setSBATBlockCount(I)V

    .line 361
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v7, "writers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v8, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_documents:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 365
    iget-object v8, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBAT()Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    array-length v9, v6

    if-ge v8, v9, :cond_2

    .line 371
    aget-object v9, v6, v8

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 375
    .end local v8    # "j":I
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 376
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 378
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/poifs/storage/BlockWritable;

    .line 380
    .local v8, "writer":Lorg/apache/poi/poifs/storage/BlockWritable;
    invoke-interface {v8, p1}, Lorg/apache/poi/poifs/storage/BlockWritable;->writeBlocks(Ljava/io/OutputStream;)V

    .line 381
    .end local v8    # "writer":Lorg/apache/poi/poifs/storage/BlockWritable;
    goto :goto_2

    .line 382
    :cond_3
    return-void
.end method
