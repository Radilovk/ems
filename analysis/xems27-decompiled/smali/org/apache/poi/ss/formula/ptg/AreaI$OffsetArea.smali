.class public Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;
.super Ljava/lang/Object;
.source "AreaI.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/AreaI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/ptg/AreaI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffsetArea"
.end annotation


# instance fields
.field private final _firstColumn:I

.field private final _firstRow:I

.field private final _lastColumn:I

.field private final _lastRow:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "baseRow"    # I
    .param p2, "baseColumn"    # I
    .param p3, "relFirstRowIx"    # I
    .param p4, "relLastRowIx"    # I
    .param p5, "relFirstColIx"    # I
    .param p6, "relLastColIx"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;->_firstRow:I

    .line 54
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;->_lastRow:I

    .line 55
    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;->_firstColumn:I

    .line 56
    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;->_lastColumn:I

    .line 57
    return-void
.end method


# virtual methods
.method public getFirstColumn()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;->_firstColumn:I

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;->_firstRow:I

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;->_lastColumn:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;->_lastRow:I

    return v0
.end method
