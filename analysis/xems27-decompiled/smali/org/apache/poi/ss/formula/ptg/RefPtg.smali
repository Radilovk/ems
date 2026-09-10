.class public final Lorg/apache/poi/ss/formula/ptg/RefPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;
.source "RefPtg.java"


# static fields
.field public static final sid:B = 0x24t


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "isRowRelative"    # Z
    .param p4, "isColumnRelative"    # Z

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;-><init>(IIZZ)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cellref"    # Ljava/lang/String;

    .line 36
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;)V
    .locals 0
    .param p1, "cr"    # Lorg/apache/poi/ss/util/CellReference;

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getSid()B
    .locals 1

    .line 52
    const/16 v0, 0x24

    return v0
.end method

.method public bridge synthetic write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 28
    invoke-super {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method
