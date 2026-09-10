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
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 66
    const-class v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v1, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

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

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    .line 131
    const/4 v12, 0x0

    .line 137
    .local v12, "success":Z
    :try_start_0
    new-instance v10, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v10, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/io/InputStream;)V

    .line 138
    .local v10, "header_block":Lorg/apache/poi/poifs/storage/HeaderBlock;
    invoke-virtual {v10}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 141
    new-instance v6, Lorg/apache/poi/poifs/storage/RawDataBlockList;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {v6, p1, v0}, Lorg/apache/poi/poifs/storage/RawDataBlockList;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .local v6, "data_blocks":Lorg/apache/poi/poifs/storage/RawDataBlockList;
    const/4 v12, 0x1

    .line 144
    invoke-direct {p0, p1, v12}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    .line 150
    new-instance v0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    invoke-virtual {v10}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v1

    invoke-virtual {v10}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v2

    invoke-virtual {v10}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v3

    invoke-virtual {v10}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATCount()I

    move-result v4

    invoke-virtual {v10}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATIndex()I

    move-result v5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I[IIILorg/apache/poi/poifs/storage/BlockList;)V

    .line 158
    new-instance v11, Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-direct {v11, v10, v6}, Lorg/apache/poi/poifs/property/PropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/storage/RawDataBlockList;)V

    .line 162
    .local v11, "properties":Lorg/apache/poi/poifs/property/PropertyTable;
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v11}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v1

    invoke-virtual {v10}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->getSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;

    move-result-object v5

    invoke-virtual {v11}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/RootProperty;->getChildren()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v10}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    .line 174
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v11}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/RootProperty;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 175
    return-void

    .line 144
    .end local v6    # "data_blocks":Lorg/apache/poi/poifs/storage/RawDataBlockList;
    .end local v10    # "header_block":Lorg/apache/poi/poifs/storage/HeaderBlock;
    .end local v11    # "properties":Lorg/apache/poi/poifs/property/PropertyTable;
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, v12}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    throw v0
.end method

.method private closeInputStream(Ljava/io/InputStream;Z)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "success"    # Z

    .prologue
    .line 182
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Ljava/io/ByteArrayInputStream;

    if-nez v2, :cond_0

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POIFS is closing the supplied input stream of type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") which supports mark/reset.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "This will be a problem for the caller if the stream will still be used.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "If that is the case the caller should wrap the input stream to avoid this close logic.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "This warning is only temporary and will not be present in future versions of POI."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_logger:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 191
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    if-eqz p2, :cond_1

    .line 194
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createNonClosingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
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

    .prologue
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
    .locals 6
    .param p0, "header8Bytes"    # [B

    .prologue
    const/4 v1, 0x0

    .line 221
    new-instance v0, Lorg/apache/poi/util/LongField;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/util/LongField;-><init>(I[B)V

    .line 224
    .local v0, "signature":Lorg/apache/poi/util/LongField;
    invoke-virtual {v0}, Lorg/apache/poi/util/LongField;->get()J

    move-result-wide v2

    const-wide v4, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 396
    array-length v2, p0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 398
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "two arguments required: input filename and output filename"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 402
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "istream":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    aget-object v2, p0, v4

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

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
    .locals 13
    .param p1, "small_blocks"    # Lorg/apache/poi/poifs/storage/BlockList;
    .param p2, "big_blocks"    # Lorg/apache/poi/poifs/storage/BlockList;
    .param p4, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p5, "headerPropertiesStartAt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/storage/BlockList;",
            "Lorg/apache/poi/poifs/storage/BlockList;",
            "Ljava/util/Iterator",
            "<",
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

    .prologue
    .line 488
    .local p3, "properties":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/property/Property;>;"
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 490
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/poifs/property/Property;

    .line 491
    .local v10, "property":Lorg/apache/poi/poifs/property/Property;
    invoke-virtual {v10}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v8

    .line 492
    .local v8, "name":Ljava/lang/String;
    if-nez p4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v9

    .line 496
    .local v9, "parent":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :goto_1
    invoke-virtual {v10}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    invoke-virtual {v9, v8}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 501
    .local v5, "new_dir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    invoke-virtual {v10}, Lorg/apache/poi/poifs/property/Property;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 503
    check-cast v10, Lorg/apache/poi/poifs/property/DirectoryProperty;

    .end local v10    # "property":Lorg/apache/poi/poifs/property/Property;
    invoke-virtual {v10}, Lorg/apache/poi/poifs/property/DirectoryProperty;->getChildren()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    goto :goto_0

    .end local v5    # "new_dir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local v9    # "parent":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local v10    # "property":Lorg/apache/poi/poifs/property/Property;
    :cond_0
    move-object/from16 v9, p4

    .line 492
    goto :goto_1

    .line 510
    .restart local v9    # "parent":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :cond_1
    invoke-virtual {v10}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result v12

    .line 511
    .local v12, "startBlock":I
    invoke-virtual {v10}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result v11

    .line 512
    .local v11, "size":I
    const/4 v7, 0x0

    .line 514
    .local v7, "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    invoke-virtual {v10}, Lorg/apache/poi/poifs/property/Property;->shouldUseSmallBlocks()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    new-instance v7, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .end local v7    # "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    move/from16 v0, p5

    invoke-interface {p1, v12, v0}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v1

    invoke-direct {v7, v8, v1, v11}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    .line 528
    .restart local v7    # "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    :goto_2
    invoke-virtual {v9, v7}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    goto :goto_0

    .line 523
    :cond_2
    new-instance v7, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .end local v7    # "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    move/from16 v0, p5

    invoke-interface {p2, v12, v0}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v1

    invoke-direct {v7, v8, v1, v11}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    .restart local v7    # "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    goto :goto_2

    .line 531
    .end local v7    # "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "parent":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local v10    # "property":Lorg/apache/poi/poifs/property/Property;
    .end local v11    # "size":I
    .end local v12    # "startBlock":I
    :cond_3
    return-void
.end method


# virtual methods
.method addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V
    .locals 1
    .param p1, "directory"    # Lorg/apache/poi/poifs/property/DirectoryProperty;

    .prologue
    .line 463
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/PropertyTable;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    .line 464
    return-void
.end method

.method addDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V
    .locals 2
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 440
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBigBlockSize()I
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    return v0
.end method

.method public getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 3

    .prologue
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

    .prologue
    .line 590
    const-string v0, "POIFS FileSystem"

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->preferArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableArray()[Ljava/lang/Object;

    move-result-object v0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0
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
    .line 561
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->preferArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 565
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public preferArray()Z
    .locals 1

    .prologue
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

    .prologue
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

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .end local p1    # "entry":Lorg/apache/poi/poifs/filesystem/EntryNode;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getDocument()Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 479
    :cond_0
    return-void
.end method

.method public writeFilesystem(Ljava/io/OutputStream;)V
    .locals 16
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v13}, Lorg/apache/poi/poifs/property/PropertyTable;->preWrite()V

    .line 299
    new-instance v9, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_documents:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v15}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v15

    invoke-direct {v9, v13, v14, v15}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/util/List;Lorg/apache/poi/poifs/property/RootProperty;)V

    .line 303
    .local v9, "sbtw":Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;
    new-instance v1, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {v1, v13}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 308
    .local v1, "bat":Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v4, "bm_objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_documents:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {v9}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBAT()Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 319
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 321
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/filesystem/BATManaged;

    .line 322
    .local v5, "bmo":Lorg/apache/poi/poifs/filesystem/BATManaged;
    invoke-interface {v5}, Lorg/apache/poi/poifs/filesystem/BATManaged;->countBlocks()I

    move-result v3

    .line 324
    .local v3, "block_count":I
    if-eqz v3, :cond_0

    .line 326
    invoke-virtual {v1, v3}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->allocateSpace(I)I

    move-result v13

    invoke-interface {v5, v13}, Lorg/apache/poi/poifs/filesystem/BATManaged;->setStartBlock(I)V

    goto :goto_0

    .line 339
    .end local v3    # "block_count":I
    .end local v5    # "bmo":Lorg/apache/poi/poifs/filesystem/BATManaged;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->createBlocks()I

    move-result v2

    .line 342
    .local v2, "batStartBlock":I
    new-instance v6, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {v6, v13}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 343
    .local v6, "header_block_writer":Lorg/apache/poi/poifs/storage/HeaderBlockWriter;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->countBlocks()I

    move-result v13

    invoke-virtual {v6, v13, v2}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setBATBlocks(II)[Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v12

    .line 348
    .local v12, "xbat_blocks":[Lorg/apache/poi/poifs/storage/BATBlock;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v13}, Lorg/apache/poi/poifs/property/PropertyTable;->getStartBlock()I

    move-result v13

    invoke-virtual {v6, v13}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setPropertyStart(I)V

    .line 351
    invoke-virtual {v9}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBAT()Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->getStartBlock()I

    move-result v13

    invoke-virtual {v6, v13}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setSBATStart(I)V

    .line 354
    invoke-virtual {v9}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBATBlockCount()I

    move-result v13

    invoke-virtual {v6, v13}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setSBATBlockCount(I)V

    .line 361
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v11, "writers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_documents:Ljava/util/List;

    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v9}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBAT()Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    array-length v13, v12

    if-ge v8, v13, :cond_2

    .line 371
    aget-object v13, v12, v8

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 375
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 376
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 378
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/poifs/storage/BlockWritable;

    .line 380
    .local v10, "writer":Lorg/apache/poi/poifs/storage/BlockWritable;
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lorg/apache/poi/poifs/storage/BlockWritable;->writeBlocks(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 382
    .end local v10    # "writer":Lorg/apache/poi/poifs/storage/BlockWritable;
    :cond_3
    return-void
.end method
