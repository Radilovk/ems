.class public abstract Lorg/apache/poi/ss/formula/eval/AreaEvalBase;
.super Ljava/lang/Object;
.source "AreaEvalBase.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/AreaEval;


# instance fields
.field private final _firstColumn:I

.field private final _firstRow:I

.field private final _firstSheet:I

.field private final _lastColumn:I

.field private final _lastRow:I

.field private final _lastSheet:I

.field private final _nColumns:I

.field private final _nRows:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 6
    .param p1, "firstRow"    # I
    .param p2, "firstColumn"    # I
    .param p3, "lastRow"    # I
    .param p4, "lastColumn"    # I

    .line 55
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/SheetRange;IIII)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/ss/formula/SheetRange;IIII)V
    .locals 1
    .param p1, "sheets"    # Lorg/apache/poi/ss/formula/SheetRange;
    .param p2, "firstRow"    # I
    .param p3, "firstColumn"    # I
    .param p4, "lastRow"    # I
    .param p5, "lastColumn"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p3, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    .line 39
    iput p2, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    .line 40
    iput p5, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    .line 41
    iput p4, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    .line 43
    sub-int v0, p5, p3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_nColumns:I

    .line 44
    sub-int v0, p4, p2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_nRows:I

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/SheetRange;->getFirstSheetIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstSheet:I

    .line 48
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/SheetRange;->getLastSheetIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastSheet:I

    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstSheet:I

    .line 51
    iput v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastSheet:I

    .line 53
    :goto_0
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaI;)V
    .locals 1
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/AreaI;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRange;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRange;)V
    .locals 6
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/AreaI;
    .param p2, "sheets"    # Lorg/apache/poi/ss/formula/SheetRange;

    .line 62
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getFirstRow()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getFirstColumn()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getLastRow()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getLastColumn()I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/SheetRange;IIII)V

    .line 63
    return-void
.end method


# virtual methods
.method public final contains(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 104
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    if-gt v0, p2, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final containsColumn(I)Z
    .locals 1
    .param p1, "col"    # I

    .line 113
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final containsRow(I)Z
    .locals 1
    .param p1, "row"    # I

    .line 109
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 89
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    sub-int v0, p1, v0

    .line 90
    .local v0, "rowOffsetIx":I
    iget v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    sub-int v1, p2, v1

    .line 92
    .local v1, "colOffsetIx":I
    const-string v2, ")"

    const-string v3, ".."

    const-string v4, ") is outside the allowed range ("

    if-ltz v0, :cond_1

    iget v5, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_nRows:I

    if-ge v0, v5, :cond_1

    .line 96
    if-ltz v1, :cond_0

    iget v5, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_nColumns:I

    if-ge v1, v5, :cond_0

    .line 100
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    return-object v2

    .line 97
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Specified column index ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Specified row index ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getFirstColumn()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    return v0
.end method

.method public final getFirstRow()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    return v0
.end method

.method public getFirstSheetIndex()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstSheet:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 124
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getLastColumn()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    return v0
.end method

.method public final getLastRow()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    return v0
.end method

.method public getLastSheetIndex()I
    .locals 1

    .line 85
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastSheet:I

    return v0
.end method

.method public abstract getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method

.method public abstract getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method

.method public final getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 128
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "col"    # I

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .line 138
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isColumn()Z
    .locals 2

    .line 117
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRow()Z
    .locals 2

    .line 121
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubTotal(II)Z
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 146
    const/4 v0, 0x0

    return v0
.end method
