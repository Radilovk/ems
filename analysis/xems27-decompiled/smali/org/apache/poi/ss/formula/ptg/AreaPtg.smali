.class public final Lorg/apache/poi/ss/formula/ptg/AreaPtg;
.super Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;
.source "AreaPtg.java"


# static fields
.field public static final sid:S = 0x25s


# direct methods
.method public constructor <init>(IIIIZZZZ)V
    .locals 0
    .param p1, "firstRow"    # I
    .param p2, "lastRow"    # I
    .param p3, "firstColumn"    # I
    .param p4, "lastColumn"    # I
    .param p5, "firstRowRelative"    # Z
    .param p6, "lastRowRelative"    # Z
    .param p7, "firstColRelative"    # Z
    .param p8, "lastColRelative"    # Z

    .line 31
    invoke-direct/range {p0 .. p8}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(IIIIZZZZ)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "arearef"    # Ljava/lang/String;

    .line 37
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 0
    .param p1, "areaRef"    # Lorg/apache/poi/ss/util/AreaReference;

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getSid()B
    .locals 1

    .line 44
    const/16 v0, 0x25

    return v0
.end method
