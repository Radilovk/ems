.class public Lorg/apache/poi/poifs/dev/POIFSViewEngine;
.super Ljava/lang/Object;
.source "POIFSViewEngine.java"


# static fields
.field private static final _EOL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->_EOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static indent(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "indentLevel"    # I
    .param p1, "indentString"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v1, "finalBuffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v2, "indentPrefix":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, p0, :cond_0

    .line 109
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_0
    new-instance v5, Ljava/io/LineNumberReader;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v5, "reader":Ljava/io/LineNumberReader;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "line":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_1

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->_EOL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v5}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 124
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->_EOL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static inspectViewable(Ljava/lang/Object;ZILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "viewable"    # Ljava/lang/Object;
    .param p1, "drilldown"    # Z
    .param p2, "indentLevel"    # I
    .param p3, "indentString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "ZI",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v4, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v5, p0, Lorg/apache/poi/poifs/dev/POIFSViewable;

    if-eqz v5, :cond_1

    move-object v1, p0

    .line 62
    check-cast v1, Lorg/apache/poi/poifs/dev/POIFSViewable;

    .line 64
    .local v1, "inspected":Lorg/apache/poi/poifs/dev/POIFSViewable;
    invoke-interface {v1}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getShortDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3, v5}, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->indent(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    if-eqz p1, :cond_2

    .line 68
    invoke-interface {v1}, Lorg/apache/poi/poifs/dev/POIFSViewable;->preferArray()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    invoke-interface {v1}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableArray()[Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "data":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 74
    aget-object v5, v0, v3

    add-int/lit8 v6, p2, 0x1

    invoke-static {v5, p1, v6, p3}, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->inspectViewable(Ljava/lang/Object;ZILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "data":[Ljava/lang/Object;
    .end local v3    # "j":I
    :cond_0
    invoke-interface {v1}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 83
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    invoke-static {v5, p1, v6, p3}, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->inspectViewable(Ljava/lang/Object;ZILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 95
    .end local v1    # "inspected":Lorg/apache/poi/poifs/dev/POIFSViewable;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3, v5}, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->indent(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_2
    return-object v4
.end method
