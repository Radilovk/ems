.class public Lorg/apache/poi/poifs/dev/POIFSLister;
.super Ljava/lang/Object;
.source "POIFSLister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayDirectory(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "withSizes"    # Z

    .line 76
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "newIndent":Ljava/lang/String;
    const/4 v1, 0x0

    .line 80
    .local v1, "hadChildren":Z
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntries()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 83
    .local v3, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    instance-of v4, v3, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v4, :cond_0

    .line 84
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-static {v4, v0, p2}, Lorg/apache/poi/poifs/dev/POIFSLister;->displayDirectory(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 86
    :cond_0
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 87
    .local v4, "doc":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getName()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "name":Ljava/lang/String;
    const-string v6, ""

    .line 89
    .local v6, "size":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ge v8, v9, :cond_1

    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(0x0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "altname":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " <"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ">"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    .end local v8    # "altname":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getSize()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " / 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 97
    :cond_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    .end local v3    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v4    # "doc":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "size":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 100
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :cond_3
    if-nez v1, :cond_4

    .line 101
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(no children)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    :cond_4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    array-length v0, p0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Must specify at least one file to view"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    .local v0, "withSizes":Z
    const/4 v1, 0x1

    .line 50
    .local v1, "newPOIFS":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_6

    .line 51
    aget-object v3, p0, v2

    const-string v4, "-size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    aget-object v3, p0, v2

    const-string v4, "-sizes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 53
    :cond_1
    aget-object v3, p0, v2

    const-string v4, "-old"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    aget-object v3, p0, v2

    const-string v4, "-old-poifs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 56
    :cond_2
    if-eqz v1, :cond_3

    .line 57
    aget-object v3, p0, v2

    invoke-static {v3, v0}, Lorg/apache/poi/poifs/dev/POIFSLister;->viewFile(Ljava/lang/String;Z)V

    goto :goto_3

    .line 59
    :cond_3
    aget-object v3, p0, v2

    invoke-static {v3, v0}, Lorg/apache/poi/poifs/dev/POIFSLister;->viewFileOld(Ljava/lang/String;Z)V

    goto :goto_3

    .line 54
    :cond_4
    :goto_1
    const/4 v1, 0x0

    goto :goto_3

    .line 52
    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 50
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "j":I
    :cond_6
    return-void
.end method

.method public static viewFile(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "withSizes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    .line 67
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lorg/apache/poi/poifs/dev/POIFSLister;->displayDirectory(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public static viewFileOld(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "withSizes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lorg/apache/poi/poifs/dev/POIFSLister;->displayDirectory(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method
