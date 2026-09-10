.class public final Lorg/apache/poi/hssf/util/AreaReference;
.super Lorg/apache/poi/ss/util/AreaReference;
.source "AreaReference.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reference"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/util/CellReference;Lorg/apache/poi/hssf/util/CellReference;)V
    .locals 0
    .param p1, "topLeft"    # Lorg/apache/poi/hssf/util/CellReference;
    .param p2, "botRight"    # Lorg/apache/poi/hssf/util/CellReference;

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)V

    .line 37
    return-void
.end method
