.class public Lorg/apache/poi/hssf/util/Region;
.super Lorg/apache/poi/ss/util/Region;
.source "Region.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/ss/util/Region;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(ISIS)V
    .locals 0
    .param p1, "rowFrom"    # I
    .param p2, "colFrom"    # S
    .param p3, "rowTo"    # I
    .param p4, "colTo"    # S

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/Region;-><init>(ISIS)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/Region;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method
