.class public Lorg/apache/poi/poifs/dev/POIFSDump;
.super Ljava/lang/Object;
.source "POIFSDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V
    .locals 11
    .param p0, "root"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p1, "parent"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 54
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 55
    .local v2, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    instance-of v8, v2, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v8, :cond_0

    move-object v6, v2

    .line 56
    check-cast v6, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 57
    .local v6, "node":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    new-instance v4, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v4, v6}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    .line 58
    .local v4, "is":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-virtual {v6}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getSize()I

    move-result v8

    new-array v0, v8, [B

    .line 59
    .local v0, "bytes":[B
    invoke-virtual {v4, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([B)I

    .line 60
    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 62
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 64
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    throw v8

    .line 68
    .end local v0    # "bytes":[B
    .end local v4    # "is":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v6    # "node":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v7    # "out":Ljava/io/OutputStream;
    :cond_0
    instance-of v8, v2, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    if-eqz v8, :cond_1

    move-object v1, v2

    .line 69
    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 70
    .local v1, "dir":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    new-instance v3, Ljava/io/File;

    invoke-interface {v2}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 72
    invoke-static {v1, v3}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V

    goto :goto_0

    .line 74
    .end local v1    # "dir":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping unsupported POIFS entry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v2    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_2
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 38
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dumping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    new-instance v3, Ljava/io/FileInputStream;

    aget-object v5, p0, v2

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 40
    .local v3, "is":Ljava/io/FileInputStream;
    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v1, v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 41
    .local v1, "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 43
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v4

    .line 44
    .local v4, "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    new-instance v0, Ljava/io/File;

    invoke-interface {v4}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 47
    invoke-static {v4, v0}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    :cond_0
    return-void
.end method
