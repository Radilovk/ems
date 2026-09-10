.class public Lorg/apache/poi/poifs/dev/POIFSViewer;
.super Ljava/lang/Object;
.source "POIFSViewer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 46
    array-length v2, p0

    if-gez v2, :cond_0

    .line 48
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Must specify at least one file to view"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 51
    :cond_0
    array-length v2, p0

    if-le v2, v1, :cond_1

    .line 53
    .local v1, "printNames":Z
    :goto_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 55
    aget-object v2, p0, v0

    invoke-static {v2, v1}, Lorg/apache/poi/poifs/dev/POIFSViewer;->viewFile(Ljava/lang/String;Z)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    .end local v0    # "j":I
    .end local v1    # "printNames":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    .restart local v0    # "j":I
    .restart local v1    # "printNames":Z
    :cond_2
    return-void
.end method

.method private static viewFile(Ljava/lang/String;Z)V
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "printName"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_1

    .line 64
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v1, "flowerbox":Ljava/lang/StringBuffer;
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 69
    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_0
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 73
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 78
    .end local v1    # "flowerbox":Ljava/lang/StringBuffer;
    .end local v4    # "j":I
    :cond_1
    :try_start_0
    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 80
    .local v2, "fs":Lorg/apache/poi/poifs/dev/POIFSViewable;
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "  "

    invoke-static {v2, v6, v7, v8}, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->inspectViewable(Ljava/lang/Object;ZILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 82
    .local v5, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 84
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    .end local v2    # "fs":Lorg/apache/poi/poifs/dev/POIFSViewable;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method
