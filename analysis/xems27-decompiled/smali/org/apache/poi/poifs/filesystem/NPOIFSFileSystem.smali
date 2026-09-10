.class public Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
.super Lorg/apache/poi/poifs/filesystem/BlockStore;
.source "NPOIFSFileSystem.java"

# interfaces
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;
.implements Ljava/io/Closeable;


# instance fields
.field private _bat_blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;"
        }
    .end annotation
.end field

.field private _data:Lorg/apache/poi/poifs/nio/DataSource;

.field private _header:Lorg/apache/poi/poifs/storage/HeaderBlock;

.field private _mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

.field private _property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

.field private _root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private _xbat_blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;"
        }
    .end annotation
.end field

.field private bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Z)V

    .line 119
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATCount(I)V

    .line 120
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    new-array v2, v0, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATArray([I)V

    .line 121
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v1, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v1

    .line 122
    .local v1, "bb":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v1, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    .line 123
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const/4 v2, -0x3

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    .line 126
    const/4 v2, -0x2

    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    .line 128
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/property/NPropertyTable;->setStartBlock(I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZ)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Z)V

    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, "channel":Ljava/nio/channels/ReadableByteChannel;
    const/4 v2, 0x0

    .line 291
    .local v2, "success":Z
    :try_start_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3

    move-object v1, v3

    .line 294
    const/16 v3, 0x200

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 295
    .local v3, "headerBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v1, v3}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    .line 298
    new-instance v4, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v4, v3}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 301
    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->sanityCheckBlockCount(I)V

    .line 306
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-static {v4}, Lorg/apache/poi/poifs/storage/BATBlock;->calculateMaximumSize(Lorg/apache/poi/poifs/storage/HeaderBlock;)J

    move-result-wide v4

    .line 307
    .local v4, "maxSize":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    .line 310
    long-to-int v6, v4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 313
    .local v6, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 315
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 318
    invoke-static {v1, v6}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    .line 319
    const/4 v2, 0x1

    .line 322
    new-instance v0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-direct {v0, v7, v8}, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .end local v3    # "headerBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "maxSize":J
    .end local v6    # "data":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    .line 326
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 327
    :cond_0
    invoke-direct {p0, p1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    .line 328
    nop

    .line 331
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readCoreContents()V

    .line 332
    return-void

    .line 308
    .restart local v3    # "headerBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "maxSize":J
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable read a >2gb file via an InputStream"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    .end local v2    # "success":Z
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .end local v3    # "headerBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "maxSize":J
    .restart local v1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    .restart local v2    # "success":Z
    .restart local p1    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 326
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 327
    :cond_2
    invoke-direct {p0, p1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    throw v0
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Z)V

    .line 185
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZ)V
    .locals 5
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "srcFile"    # Ljava/io/File;
    .param p3, "readOnly"    # Z
    .param p4, "closeChannelOnError"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Z)V

    .line 213
    if-eqz p2, :cond_1

    .line 214
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 217
    new-instance v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-direct {v0, p2, p3}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/File;Z)V

    .line 218
    .local v0, "d":Lorg/apache/poi/poifs/nio/FileBackedDataSource;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    move-object p1, v1

    .line 219
    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    .line 220
    .end local v0    # "d":Lorg/apache/poi/poifs/nio/FileBackedDataSource;
    goto :goto_0

    .line 215
    :cond_0
    new-instance v0, Lorg/apache/poi/EmptyFileException;

    invoke-direct {v0}, Lorg/apache/poi/EmptyFileException;-><init>()V

    .end local p1    # "channel":Ljava/nio/channels/FileChannel;
    .end local p2    # "srcFile":Ljava/io/File;
    .end local p3    # "readOnly":Z
    .end local p4    # "closeChannelOnError":Z
    throw v0

    .line 221
    .restart local p1    # "channel":Ljava/nio/channels/FileChannel;
    .restart local p2    # "srcFile":Ljava/io/File;
    .restart local p3    # "readOnly":Z
    .restart local p4    # "closeChannelOnError":Z
    :cond_1
    new-instance v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-direct {v0, p1, p3}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/nio/channels/FileChannel;Z)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    .line 225
    :goto_0
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    .local v0, "headerBuffer":Ljava/nio/ByteBuffer;
    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    .line 229
    new-instance v1, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 232
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readCoreContents()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0    # "headerBuffer":Ljava/nio/ByteBuffer;
    nop

    .line 250
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/RuntimeException;
    if-eqz p4, :cond_2

    .line 243
    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 245
    const/4 p1, 0x0

    .line 248
    :cond_2
    throw v0

    .line 233
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    if-eqz p4, :cond_3

    .line 235
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 237
    :cond_3
    throw v0
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Z)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZ)V

    .line 204
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4
    .param p1, "newFS"    # Z

    .line 96
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/BlockStore;-><init>()V

    .line 92
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 97
    new-instance v0, Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 98
    new-instance v0, Lorg/apache/poi/poifs/property/NPropertyTable;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/property/NPropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    .line 99
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/NPropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/property/RootProperty;Ljava/util/List;Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 104
    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;-><init>([B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    .line 109
    :cond_0
    return-void
.end method

.method private closeInputStream(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "success"    # Z

    .line 339
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    if-nez p2, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 342
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "isBAT"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    xor-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v0

    .line 449
    .local v0, "newBAT":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    .line 451
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 452
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v3

    mul-int v2, v2, v3

    .line 453
    .local v2, "writeTo":I
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/poi/poifs/nio/DataSource;->write(Ljava/nio/ByteBuffer;J)V

    .line 455
    return-object v0
.end method

.method public static createNonClosingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 76
    new-instance v0, Lorg/apache/poi/util/CloseIgnoringInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/CloseIgnoringInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static hasPOIFSHeader(Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "inp"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 363
    new-array v0, v0, [B

    .line 364
    .local v0, "header":[B
    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 365
    new-instance v1, Lorg/apache/poi/util/LongField;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/util/LongField;-><init>(I[B)V

    .line 368
    .local v1, "signature":Lorg/apache/poi/util/LongField;
    instance-of v3, p0, Ljava/io/PushbackInputStream;

    if-eqz v3, :cond_0

    .line 369
    move-object v3, p0

    check-cast v3, Ljava/io/PushbackInputStream;

    .line 370
    .local v3, "pin":Ljava/io/PushbackInputStream;
    invoke-virtual {v3, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 371
    .end local v3    # "pin":Ljava/io/PushbackInputStream;
    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 376
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/util/LongField;->get()J

    move-result-wide v3

    const-wide v5, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 807
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "two arguments required: input filename and output filename"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 809
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 811
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 813
    .local v0, "istream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    aget-object v1, p0, v1

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v1, v2

    .line 815
    .local v1, "ostream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v2, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 817
    .local v2, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_start_2
    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 819
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 820
    nop

    .line 822
    .end local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 823
    nop

    .line 825
    .end local v1    # "ostream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 826
    nop

    .line 827
    return-void

    .line 819
    .restart local v1    # "ostream":Ljava/io/FileOutputStream;
    .restart local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    .end local v0    # "istream":Ljava/io/FileInputStream;
    .end local v1    # "ostream":Ljava/io/FileOutputStream;
    .end local p0    # "args":[Ljava/lang/String;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 822
    .end local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local v0    # "istream":Ljava/io/FileInputStream;
    .restart local v1    # "ostream":Ljava/io/FileOutputStream;
    .restart local p0    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .end local v0    # "istream":Ljava/io/FileInputStream;
    .end local p0    # "args":[Ljava/lang/String;
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 825
    .end local v1    # "ostream":Ljava/io/FileOutputStream;
    .restart local v0    # "istream":Ljava/io/FileInputStream;
    .restart local p0    # "args":[Ljava/lang/String;
    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1
.end method

.method private readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V
    .locals 3
    .param p1, "batAt"    # I
    .param p2, "loopDetector"    # Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    .line 441
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 442
    .local v0, "fatData":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v1, v0}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v1

    .line 443
    .local v1, "bat":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    .line 444
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method private readCoreContents()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 390
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v0

    .line 393
    .local v0, "loopDetector":Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v1

    .local v1, "arr$":[I
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 394
    .local v4, "fatAt":I
    invoke-direct {p0, v4, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    .line 393
    .end local v4    # "fatAt":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 402
    .local v1, "remainingFATs":I
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATIndex()I

    move-result v2

    .line 403
    .local v2, "nextAt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 404
    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    .line 405
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 406
    .local v4, "fatData":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v5, v4}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v5

    .line 407
    .local v5, "xfat":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v5, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    .line 408
    iget-object v6, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v2

    .line 409
    iget-object v6, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v6, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 413
    .local v6, "xbatFATs":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v6, :cond_2

    .line 414
    invoke-virtual {v5, v7}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v8

    .line 415
    .local v8, "fatAt":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v9, -0x2

    if-ne v8, v9, :cond_1

    goto :goto_3

    .line 416
    :cond_1
    invoke-direct {p0, v8, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    .line 413
    .end local v8    # "fatAt":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 418
    .end local v7    # "j":I
    :cond_2
    :goto_3
    sub-int/2addr v1, v6

    .line 403
    .end local v4    # "fatData":Ljava/nio/ByteBuffer;
    .end local v6    # "xbatFATs":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 423
    .end local v3    # "i":I
    .end local v5    # "xfat":Lorg/apache/poi/poifs/storage/BATBlock;
    :cond_3
    new-instance v3, Lorg/apache/poi/poifs/property/NPropertyTable;

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/poifs/property/NPropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    .line 427
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v3, "sbats":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/storage/BATBlock;>;"
    new-instance v4, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/property/NPropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v4, p0, v5, v3, v6}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/property/RootProperty;Ljava/util/List;Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    .line 429
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v2

    .line 430
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 431
    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    .line 432
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 433
    .local v5, "fatData":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v6, v5}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v6

    .line 434
    .local v6, "sfat":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v6, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    .line 435
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getNextBlock(I)I

    move-result v2

    .line 430
    .end local v5    # "fatData":Ljava/nio/ByteBuffer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 438
    .end local v4    # "i":I
    .end local v6    # "sfat":Lorg/apache/poi/poifs/storage/BATBlock;
    :cond_4
    return-void
.end method

.method private syncWithDataSource()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    .line 761
    .local v0, "propStream":Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/NPropertyTable;->preWrite()V

    .line 762
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/property/NPropertyTable;->write(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)V

    .line 766
    new-instance v1, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, v2}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    .line 767
    .local v1, "hbw":Lorg/apache/poi/poifs/storage/HeaderBlockWriter;
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->writeBlock(Ljava/nio/ByteBuffer;)V

    .line 770
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 771
    .local v3, "bat":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/BATBlock;->getOurBlockIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 772
    .local v4, "block":Ljava/nio/ByteBuffer;
    invoke-static {v3, v4}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->writeBlock(Lorg/apache/poi/poifs/storage/BATBlock;Ljava/nio/ByteBuffer;)V

    .line 773
    .end local v3    # "bat":Lorg/apache/poi/poifs/storage/BATBlock;
    .end local v4    # "block":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 775
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 776
    .restart local v3    # "bat":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/BATBlock;->getOurBlockIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 777
    .restart local v4    # "block":Ljava/nio/ByteBuffer;
    invoke-static {v3, v4}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->writeBlock(Lorg/apache/poi/poifs/storage/BATBlock;Ljava/nio/ByteBuffer;)V

    .line 778
    .end local v3    # "bat":Lorg/apache/poi/poifs/storage/BATBlock;
    .end local v4    # "block":Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 781
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->syncWithDataSource()V

    .line 782
    return-void
.end method


# virtual methods
.method _get_property_table()Lorg/apache/poi/poifs/property/NPropertyTable;
    .locals 1

    .line 623
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    return-object v0
.end method

.method addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V
    .locals 1
    .param p1, "directory"    # Lorg/apache/poi/poifs/property/DirectoryProperty;

    .line 651
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/NPropertyTable;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    .line 652
    return-void
.end method

.method addDocument(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)V
    .locals 2
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    .line 641
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/NPropertyTable;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    .line 642
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/DataSource;->close()V

    .line 791
    return-void
.end method

.method protected createBlockIfNeeded(I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 481
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    mul-int v1, v1, v2

    int-to-long v1, v1

    .line 485
    .local v1, "startAt":J
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 486
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v4, v3, v1, v2}, Lorg/apache/poi/poifs/nio/DataSource;->write(Ljava/nio/ByteBuffer;J)V

    .line 488
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    return-object v4
.end method

.method public createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

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

    .line 670
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

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

    .line 690
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

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

    .line 857
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    .locals 2
    .param p1, "offset"    # I

    .line 498
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object v0

    return-object v0
.end method

.method public getBigBlockSize()I
    .locals 1

    .line 943
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    return v0
.end method

.method public getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    .line 950
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method protected getBlockAt(I)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    add-int/lit8 v0, p1, 0x1

    int-to-long v0, v0

    .line 465
    .local v0, "blockWanted":J
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, v0

    .line 467
    .local v2, "startAt":J
    :try_start_0
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v5

    invoke-virtual {v4, v5, v2, v3}, Lorg/apache/poi/poifs/nio/DataSource;->read(IJ)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 468
    :catch_0
    move-exception v4

    .line 469
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Block "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not found - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected getBlockStoreBlockSize()I
    .locals 1

    .line 955
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result v0

    return v0
.end method

.method protected getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    new-instance v0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/nio/DataSource;->size()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;J)V

    return-object v0
.end method

.method protected getFreeBlock()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v0

    .line 533
    .local v0, "numSectors":I
    const/4 v1, 0x0

    .line 534
    .local v1, "offset":I
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 535
    .local v3, "bat":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 537
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 538
    invoke-virtual {v3, v5}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v6

    .line 539
    .local v6, "batValue":I
    if-ne v6, v4, :cond_0

    .line 541
    add-int v4, v1, v5

    return v4

    .line 537
    .end local v6    # "batValue":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 547
    .end local v5    # "j":I
    :cond_1
    add-int/2addr v1, v0

    .line 548
    .end local v3    # "bat":Lorg/apache/poi/poifs/storage/BATBlock;
    goto :goto_0

    .line 552
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v3

    .line 553
    .restart local v3    # "bat":Lorg/apache/poi/poifs/storage/BATBlock;
    const/4 v5, -0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 554
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v5

    const/16 v7, 0x6d

    if-lt v5, v7, :cond_9

    .line 559
    const/4 v5, 0x0

    .line 560
    .local v5, "xbat":Lorg/apache/poi/poifs/storage/BATBlock;
    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 561
    .local v8, "x":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v8}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 562
    move-object v5, v8

    .line 563
    goto :goto_3

    .line 565
    .end local v8    # "x":Lorg/apache/poi/poifs/storage/BATBlock;
    :cond_3
    goto :goto_2

    .line 566
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    if-nez v5, :cond_6

    .line 568
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4, v6}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v4

    .line 570
    .end local v5    # "xbat":Lorg/apache/poi/poifs/storage/BATBlock;
    .local v4, "xbat":Lorg/apache/poi/poifs/storage/BATBlock;
    invoke-virtual {v4, v6, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 572
    const/4 v5, -0x4

    invoke-virtual {v3, v2, v5}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    .line 578
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 579
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setXBATStart(I)V

    goto :goto_4

    .line 581
    :cond_5
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/storage/BATBlock;

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v5

    invoke-virtual {v2, v5, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 585
    :goto_4
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setXBATCount(I)V

    goto :goto_6

    .line 589
    .end local v4    # "xbat":Lorg/apache/poi/poifs/storage/BATBlock;
    .restart local v5    # "xbat":Lorg/apache/poi/poifs/storage/BATBlock;
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget-object v6, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 590
    invoke-virtual {v5, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v6

    if-ne v6, v4, :cond_7

    .line 591
    invoke-virtual {v5, v2, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 592
    goto :goto_6

    .line 589
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 596
    .end local v2    # "i":I
    .end local v5    # "xbat":Lorg/apache/poi/poifs/storage/BATBlock;
    :cond_8
    :goto_6
    goto :goto_7

    .line 598
    :cond_9
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v4

    add-int/2addr v4, v2

    new-array v4, v4, [I

    .line 599
    .local v4, "newBATs":[I
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v5

    array-length v7, v4

    sub-int/2addr v7, v2

    invoke-static {v5, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    array-length v5, v4

    sub-int/2addr v5, v2

    aput v1, v4, v5

    .line 601
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2, v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATArray([I)V

    .line 603
    .end local v4    # "newBATs":[I
    :goto_7
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATCount(I)V

    .line 606
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;
    .locals 1

    .line 631
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    return-object v0
.end method

.method protected getNextBlock(I)I
    .locals 3
    .param p1, "offset"    # I

    .line 508
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object v0

    .line 509
    .local v0, "bai":Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v1

    return v1
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 3

    .line 836
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-nez v0, :cond_0

    .line 837
    new-instance v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/NPropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 839
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .line 934
    const-string v0, "POIFS FileSystem"

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 1

    .line 888
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->preferArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 892
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

    .line 905
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->preferArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 909
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public preferArray()Z
    .locals 1

    .line 922
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->preferArray()Z

    move-result v0

    return v0
.end method

.method remove(Lorg/apache/poi/poifs/filesystem/EntryNode;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/poi/poifs/filesystem/EntryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    if-eqz v0, :cond_0

    .line 869
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 870
    .local v0, "doc":Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->free()V

    .line 874
    .end local v0    # "doc":Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/NPropertyTable;->removeProperty(Lorg/apache/poi/poifs/property/Property;)V

    .line 875
    return-void
.end method

.method protected setNextBlock(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "nextBlock"    # I

    .line 517
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object v0

    .line 518
    .local v0, "bai":Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 521
    return-void
.end method

.method protected size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/DataSource;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public writeFilesystem()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    instance-of v1, v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    if-eqz v1, :cond_1

    .line 726
    check-cast v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->isWriteable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->syncWithDataSource()V

    .line 733
    return-void

    .line 727
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "POIFS opened in read only mode, so writeFilesystem() may not be called. Open the FileSystem in read-write mode first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "POIFS opened from an inputstream, so writeFilesystem() may not be called. Use writeFilesystem(OutputStream) instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeFilesystem(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->syncWithDataSource()V

    .line 751
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/nio/DataSource;->copyTo(Ljava/io/OutputStream;)V

    .line 752
    return-void
.end method
