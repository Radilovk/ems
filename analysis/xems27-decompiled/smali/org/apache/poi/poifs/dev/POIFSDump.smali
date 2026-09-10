.class public Lorg/apache/poi/poifs/dev/POIFSDump;
.super Ljava/lang/Object;
.source "POIFSDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V
    .locals 8
    .param p0, "root"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p1, "parent"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 55
    .local v1, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v2, :cond_0

    .line 56
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 57
    .local v2, "node":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    new-instance v3, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v3, v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    .line 58
    .local v3, "is":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getSize()I

    move-result v4

    new-array v4, v4, [B

    .line 59
    .local v4, "bytes":[B
    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([B)I

    .line 60
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 62
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 64
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 67
    nop

    .line 68
    .end local v2    # "node":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v3    # "is":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v4    # "bytes":[B
    .end local v5    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .line 66
    .restart local v2    # "node":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v3    # "is":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v4    # "bytes":[B
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw v6

    .line 68
    .end local v2    # "node":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v3    # "is":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v4    # "bytes":[B
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_0
    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    if-eqz v2, :cond_1

    .line 69
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 70
    .local v2, "dir":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    new-instance v3, Ljava/io/File;

    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 72
    invoke-static {v2, v3}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V

    .line 73
    .end local v2    # "dir":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .end local v3    # "file":Ljava/io/File;
    goto :goto_1

    .line 74
    :cond_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unsupported POIFS entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    .end local v1    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    :goto_1
    goto :goto_0

    .line 77
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :cond_2
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 38
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/io/FileInputStream;

    aget-object v2, p0, v0

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "is":Ljava/io/FileInputStream;
    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 41
    .local v2, "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 43
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v3

    .line 44
    .local v3, "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    new-instance v4, Ljava/io/File;

    invoke-interface {v3}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 47
    invoke-static {v3, v4}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V

    .line 37
    .end local v1    # "is":Ljava/io/FileInputStream;
    .end local v2    # "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .end local v3    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
