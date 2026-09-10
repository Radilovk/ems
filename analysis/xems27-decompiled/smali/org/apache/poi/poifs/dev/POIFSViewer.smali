.class public Lorg/apache/poi/poifs/dev/POIFSViewer;
.super Ljava/lang/Object;
.source "POIFSViewer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 46
    array-length v0, p0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 48
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Must specify at least one file to view"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 51
    :cond_0
    array-length v0, p0

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 53
    .local v0, "printNames":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 55
    aget-object v2, p0, v1

    invoke-static {v2, v0}, Lorg/apache/poi/poifs/dev/POIFSViewer;->viewFile(Ljava/lang/String;Z)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private static viewFile(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "printName"    # Z

    .line 62
    if-eqz p1, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v0, "flowerbox":Ljava/lang/StringBuffer;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 69
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "j":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 73
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 78
    .end local v0    # "flowerbox":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 80
    .local v0, "fs":Lorg/apache/poi/poifs/dev/POIFSViewable;
    const/4 v1, 0x0

    const-string v2, "  "

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->inspectViewable(Ljava/lang/Object;ZILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 84
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 92
    .end local v0    # "fs":Lorg/apache/poi/poifs/dev/POIFSViewable;
    .end local v1    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    goto :goto_2

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
