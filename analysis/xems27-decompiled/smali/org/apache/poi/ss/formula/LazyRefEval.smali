.class final Lorg/apache/poi/ss/formula/LazyRefEval;
.super Lorg/apache/poi/ss/formula/eval/RefEvalBase;
.source "LazyRefEval.java"


# instance fields
.field private final _evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;


# direct methods
.method public constructor <init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V
    .locals 0
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I
    .param p3, "sre"    # Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    .line 34
    invoke-direct {p0, p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;-><init>(Lorg/apache/poi/ss/formula/SheetRange;II)V

    .line 35
    iput-object p3, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    .line 36
    return-void
.end method


# virtual methods
.method public getInnerValueEval()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getFirstSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/LazyRefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "sheetIndex"    # I

    .line 43
    iget-object v0, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyRefEval;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyRefEval;->getColumn()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getEvalForCell(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 8
    .param p1, "relFirstRowIx"    # I
    .param p2, "relLastRowIx"    # I
    .param p3, "relFirstColIx"    # I
    .param p4, "relLastColIx"    # I

    .line 48
    new-instance v7, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyRefEval;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyRefEval;->getColumn()I

    move-result v2

    move-object v0, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;-><init>(IIIIII)V

    .line 51
    .local v0, "area":Lorg/apache/poi/ss/formula/ptg/AreaI;
    new-instance v1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyRefEval;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/LazyRefEval;->getColumn()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 56
    .local v0, "cr":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    iget-object v2, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetNameRange()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
