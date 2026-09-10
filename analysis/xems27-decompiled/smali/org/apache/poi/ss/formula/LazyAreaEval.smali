.class final Lorg/apache/poi/ss/formula/LazyAreaEval;
.super Lorg/apache/poi/ss/formula/eval/AreaEvalBase;
.source "LazyAreaEval.java"


# instance fields
.field private final _evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;


# direct methods
.method public constructor <init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V
    .locals 6
    .param p1, "firstRowIndex"    # I
    .param p2, "firstColumnIndex"    # I
    .param p3, "lastRowIndex"    # I
    .param p4, "lastColumnIndex"    # I
    .param p5, "evaluator"    # Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    .line 40
    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/SheetRange;IIII)V

    .line 41
    iput-object p5, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    .line 42
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRangeEvaluator;)V
    .locals 0
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/AreaI;
    .param p2, "evaluator"    # Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRange;)V

    .line 35
    iput-object p2, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    .line 36
    return-void
.end method


# virtual methods
.method public getColumn(I)Lorg/apache/poi/ss/formula/LazyAreaEval;
    .locals 8
    .param p1, "columnIndex"    # I

    .line 69
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstColumn()I

    move-result v0

    add-int/2addr v0, p1

    .line 74
    .local v0, "absColIx":I
    new-instance v7, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getLastRow()I

    move-result v4

    iget-object v6, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-object v1, v7

    move v3, v0

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v7

    .line 70
    .end local v0    # "absColIx":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid columnIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".  Allowable range is (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getColumn(I)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 1
    .param p1, "x0"    # I

    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getColumn(I)Lorg/apache/poi/ss/formula/LazyAreaEval;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "relativeRowIndex"    # I
    .param p2, "relativeColumnIndex"    # I

    .line 45
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "relativeRowIndex"    # I
    .param p3, "relativeColumnIndex"    # I

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstRow()I

    move-result v0

    add-int/2addr v0, p2

    .line 49
    .local v0, "rowIx":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstColumn()I

    move-result v1

    add-int/2addr v1, p3

    .line 51
    .local v1, "colIx":I
    iget-object v2, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {v2, p1, v0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getEvalForCell(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    return-object v2
.end method

.method public getRow(I)Lorg/apache/poi/ss/formula/LazyAreaEval;
    .locals 8
    .param p1, "rowIndex"    # I

    .line 61
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstRow()I

    move-result v0

    add-int/2addr v0, p1

    .line 66
    .local v0, "absRowIx":I
    new-instance v7, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getLastColumn()I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-object v1, v7

    move v2, v0

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v7

    .line 62
    .end local v0    # "absRowIx":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rowIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".  Allowable range is (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getRow(I)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 1
    .param p1, "x0"    # I

    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getRow(I)Lorg/apache/poi/ss/formula/LazyAreaEval;

    move-result-object v0

    return-object v0
.end method

.method public isSubTotal(II)Z
    .locals 3
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 96
    iget-object v0, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getFirstSheetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v0

    .line 97
    .local v0, "_sre":Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstRow()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstColumn()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->isSubTotal(II)Z

    move-result v1

    return v1
.end method

.method public offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 8
    .param p1, "relFirstRowIx"    # I
    .param p2, "relLastRowIx"    # I
    .param p3, "relFirstColIx"    # I
    .param p4, "relLastColIx"    # I

    .line 55
    new-instance v7, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstColumn()I

    move-result v2

    move-object v0, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;-><init>(IIIIII)V

    .line 58
    .local v0, "area":Lorg/apache/poi/ss/formula/ptg/AreaI;
    new-instance v1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 78
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getFirstColumn()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 79
    .local v0, "crA":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getLastRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getLastColumn()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 80
    .local v1, "crB":Lorg/apache/poi/ss/util/CellReference;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-object v3, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetNameRange()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
