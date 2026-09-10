.class public Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;
.super Ljava/lang/Object;
.source "POIFSReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/eventfilesystem/POIFSReader$SampleListener;
    }
.end annotation


# instance fields
.field private registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

.field private registryClosed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    invoke-direct {v0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    .line 62
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    array-length v4, p0

    if-nez v4, :cond_0

    .line 193
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "at least one argument required: input filename(s)"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 199
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 201
    new-instance v3, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;

    invoke-direct {v3}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;-><init>()V

    .line 202
    .local v3, "reader":Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;
    new-instance v2, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader$SampleListener;

    invoke-direct {v2}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader$SampleListener;-><init>()V

    .line 204
    .local v2, "listener":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    invoke-virtual {v3, v2}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V

    .line 205
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/io/FileInputStream;

    aget-object v4, p0, v1

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "istream":Ljava/io/FileInputStream;
    invoke-virtual {v3, v0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->read(Ljava/io/InputStream;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "istream":Ljava/io/FileInputStream;
    .end local v2    # "listener":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    .end local v3    # "reader":Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;
    :cond_1
    return-void
.end method

.method private processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;)V
    .locals 11
    .param p1, "small_blocks"    # Lorg/apache/poi/poifs/storage/BlockList;
    .param p2, "big_blocks"    # Lorg/apache/poi/poifs/storage/BlockList;
    .param p3, "properties"    # Ljava/util/Iterator;
    .param p4, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 219
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 221
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/property/Property;

    .line 222
    .local v5, "property":Lorg/apache/poi/poifs/property/Property;
    invoke-virtual {v5}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 226
    new-instance v4, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-direct {v4, p4, v8}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;[Ljava/lang/String;)V

    .line 232
    .local v4, "new_path":Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    check-cast v5, Lorg/apache/poi/poifs/property/DirectoryProperty;

    .end local v5    # "property":Lorg/apache/poi/poifs/property/Property;
    invoke-virtual {v5}, Lorg/apache/poi/poifs/property/DirectoryProperty;->getChildren()Ljava/util/Iterator;

    move-result-object v8

    invoke-direct {p0, p1, p2, v8, v4}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;)V

    goto :goto_0

    .line 238
    .end local v4    # "new_path":Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .restart local v5    # "property":Lorg/apache/poi/poifs/property/Property;
    :cond_1
    invoke-virtual {v5}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result v7

    .line 239
    .local v7, "startBlock":I
    iget-object v8, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    invoke-virtual {v8, p4, v3}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->getListeners(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 241
    .local v2, "listeners":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 243
    invoke-virtual {v5}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result v6

    .line 244
    .local v6, "size":I
    const/4 v0, 0x0

    .line 246
    .local v0, "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    invoke-virtual {v5}, Lorg/apache/poi/poifs/property/Property;->shouldUseSmallBlocks()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 248
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .end local v0    # "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    invoke-interface {p1, v7, v10}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v8

    invoke-direct {v0, v3, v8, v6}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    .line 258
    .restart local v0    # "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 260
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;

    .line 263
    .local v1, "listener":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    new-instance v8, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;

    new-instance v9, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v9, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    invoke-direct {v8, v9, p4, v3}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;->processPOIFSReaderEvent(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;)V

    goto :goto_1

    .line 254
    .end local v1    # "listener":Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    :cond_2
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .end local v0    # "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    invoke-interface {p2, v7, v10}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v8

    invoke-direct {v0, v3, v8, v6}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    .restart local v0    # "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    goto :goto_1

    .line 273
    .end local v0    # "document":Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    .end local v6    # "size":I
    :cond_3
    invoke-virtual {v5}, Lorg/apache/poi/poifs/property/Property;->shouldUseSmallBlocks()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 275
    invoke-interface {p1, v7, v10}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    goto :goto_0

    .line 279
    :cond_4
    invoke-interface {p2, v7, v10}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    goto :goto_0

    .line 284
    .end local v2    # "listeners":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "property":Lorg/apache/poi/poifs/property/Property;
    .end local v7    # "startBlock":I
    :cond_5
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    .line 78
    new-instance v7, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v7, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v7, "header_block":Lorg/apache/poi/poifs/storage/HeaderBlock;
    new-instance v6, Lorg/apache/poi/poifs/storage/RawDataBlockList;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    invoke-direct {v6, p1, v0}, Lorg/apache/poi/poifs/storage/RawDataBlockList;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 85
    .local v6, "data_blocks":Lorg/apache/poi/poifs/storage/RawDataBlockList;
    new-instance v0, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v1

    invoke-virtual {v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v2

    invoke-virtual {v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v3

    invoke-virtual {v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATCount()I

    move-result v4

    invoke-virtual {v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATIndex()I

    move-result v5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I[IIILorg/apache/poi/poifs/storage/BlockList;)V

    .line 93
    new-instance v8, Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-direct {v8, v7, v6}, Lorg/apache/poi/poifs/property/PropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/storage/RawDataBlockList;)V

    .line 97
    .local v8, "properties":Lorg/apache/poi/poifs/property/PropertyTable;
    invoke-virtual {v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    invoke-virtual {v8}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v1

    invoke-virtual {v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->getSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;

    move-result-object v0

    invoke-virtual {v8}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/RootProperty;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-direct {v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>()V

    invoke-direct {p0, v0, v6, v1, v2}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;)V

    .line 104
    return-void
.end method

.method public registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 122
    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V

    .line 127
    return-void
.end method

.method public registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    .param p2, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 171
    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    if-eqz v0, :cond_2

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 175
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    if-nez p2, :cond_3

    new-instance p2, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    .end local p2    # "path":Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    invoke-direct {p2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>()V

    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    .line 178
    return-void
.end method
