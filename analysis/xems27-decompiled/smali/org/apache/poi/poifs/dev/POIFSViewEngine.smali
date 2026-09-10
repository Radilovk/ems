.class public Lorg/apache/poi/poifs/dev/POIFSViewEngine;
.super Ljava/lang/Object;
.source "POIFSViewEngine.java"


# static fields
.field private static final _EOL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->_EOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static indent(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "indentLevel"    # I
    .param p1, "indentString"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v0, "finalBuffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v1, "indentPrefix":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "j":I
    :cond_0
    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v2, "reader":Ljava/io/LineNumberReader;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "line":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->_EOL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_1

    .line 128
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 124
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->_EOL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static inspectViewable(Ljava/lang/Object;ZILjava/lang/String;)Ljava/util/List;
    .locals 6
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v1, p0, Lorg/apache/poi/poifs/dev/POIFSViewable;

    if-eqz v1, :cond_3

    .line 62
    move-object v1, p0

    check-cast v1, Lorg/apache/poi/poifs/dev/POIFSViewable;

    .line 64
    .local v1, "inspected":Lorg/apache/poi/poifs/dev/POIFSViewable;
    invoke-interface {v1}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getShortDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p3, v2}, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->indent(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    if-eqz p1, :cond_2

    .line 68
    invoke-interface {v1}, Lorg/apache/poi/poifs/dev/POIFSViewable;->preferArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-interface {v1}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableArray()[Ljava/lang/Object;

    move-result-object v2

    .line 72
    .local v2, "data":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 74
    aget-object v4, v2, v3

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, p1, v5, p3}, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->inspectViewable(Ljava/lang/Object;ZILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "data":[Ljava/lang/Object;
    .end local v3    # "j":I
    :cond_0
    goto :goto_2

    .line 81
    :cond_1
    invoke-interface {v1}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 83
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-static {v3, p1, v4, p3}, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->inspectViewable(Ljava/lang/Object;ZILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 92
    .end local v1    # "inspected":Lorg/apache/poi/poifs/dev/POIFSViewable;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_2
    :goto_2
    goto :goto_3

    .line 95
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lorg/apache/poi/poifs/dev/POIFSViewEngine;->indent(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :goto_3
    return-object v0
.end method
