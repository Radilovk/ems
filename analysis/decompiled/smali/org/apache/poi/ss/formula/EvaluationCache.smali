.class final Lorg/apache/poi/ss/formula/EvaluationCache;
.super Ljava/lang/Object;
.source "EvaluationCache.java"


# instance fields
.field final _evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

.field private final _formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

.field private final _plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;


# direct methods
.method constructor <init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V
    .locals 1
    .param p1, "evaluationListener"    # Lorg/apache/poi/ss/formula/IEvaluationListener;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    .line 47
    new-instance v0, Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/PlainCellCache;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    .line 48
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/FormulaCellCache;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    .line 49
    return-void
.end method

.method private areValuesEqual(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 8
    .param p1, "a"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "b"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    if-nez p1, :cond_1

    move v1, v2

    .line 173
    .end local p1    # "a":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p2    # "b":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    :goto_0
    return v1

    .line 155
    .restart local p1    # "a":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p2    # "b":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 156
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v0, v3, :cond_2

    move v1, v2

    .line 158
    goto :goto_0

    .line 160
    :cond_2
    sget-object v3, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p1, v3, :cond_3

    .line 161
    if-eq p2, p1, :cond_0

    move v1, v2

    goto :goto_0

    .line 163
    :cond_3
    const-class v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-ne v0, v3, :cond_4

    .line 164
    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .end local p1    # "a":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v4

    check-cast p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .end local p2    # "b":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 166
    .restart local p1    # "a":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p2    # "b":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_4
    const-class v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-ne v0, v3, :cond_5

    .line 167
    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .end local p1    # "a":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lorg/apache/poi/ss/formula/eval/StringEval;

    .end local p2    # "b":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 169
    .restart local p1    # "a":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p2    # "b":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_5
    const-class v3, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-ne v0, v3, :cond_6

    .line 170
    check-cast p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .end local p1    # "a":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v3

    check-cast p2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .end local p2    # "b":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 172
    .restart local p1    # "a":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p2    # "b":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_6
    const-class v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-ne v0, v3, :cond_7

    .line 173
    check-cast p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local p1    # "a":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v3

    check-cast p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local p2    # "b":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 175
    .restart local p1    # "a":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p2    # "b":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected value class ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateAnyBlankReferencingFormulas(IIII)V
    .locals 3
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I

    .prologue
    .line 120
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;-><init>(II)V

    .line 121
    .local v0, "bsk":Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    new-instance v2, Lorg/apache/poi/ss/formula/EvaluationCache$1;

    invoke-direct {v2, p0, v0, p3, p4}, Lorg/apache/poi/ss/formula/EvaluationCache$1;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;II)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/formula/FormulaCellCache;->applyOperation(Lorg/apache/poi/ss/formula/FormulaCellCache$IEntryOperation;)V

    .line 127
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onClearWholeCache()V

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/PlainCellCache;->clear()V

    .line 196
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/FormulaCellCache;->clear()V

    .line 197
    return-void
.end method

.method public getOrCreateFormulaCellEntry(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .prologue
    .line 179
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/formula/FormulaCellCache;->get(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    .line 180
    .local v0, "result":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .end local v0    # "result":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    invoke-direct {v0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;-><init>()V

    .line 183
    .restart local v0    # "result":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v1, p1, v0}, Lorg/apache/poi/ss/formula/FormulaCellCache;->put(Lorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V

    .line 185
    :cond_0
    return-object v0
.end method

.method public getPlainValueEntry(IIIILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    .locals 4
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I
    .param p5, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 132
    new-instance v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;-><init>(IIII)V

    .line 133
    .local v0, "loc":Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v2, v0}, Lorg/apache/poi/ss/formula/PlainCellCache;->get(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    move-result-object v1

    .line 134
    .local v1, "result":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    if-nez v1, :cond_1

    .line 135
    new-instance v1, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    .end local v1    # "result":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    invoke-direct {v1, p5}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 136
    .restart local v1    # "result":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v2, v0, v1}, Lorg/apache/poi/ss/formula/PlainCellCache;->put(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;)V

    .line 137
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-interface {v2, p2, p3, p4, v1}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onReadPlainValue(IIILorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    .line 149
    :cond_0
    :goto_0
    return-object v1

    .line 142
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    invoke-direct {p0, v2, p5}, Lorg/apache/poi/ss/formula/EvaluationCache;->areValuesEqual(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "value changed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-interface {v2, p2, p3, p4, p5}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onCacheHit(IIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    goto :goto_0
.end method

.method public notifyDeleteCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 5
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .prologue
    .line 200
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 201
    iget-object v3, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v3, p3}, Lorg/apache/poi/ss/formula/FormulaCellCache;->remove(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    .line 202
    .local v0, "fcce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-nez v0, :cond_1

    .line 218
    .end local v0    # "fcce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_0
    :goto_0
    return-void

    .line 205
    .restart local v0    # "fcce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->setSensitiveInputCells([Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 206
    iget-object v3, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v0, v3}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    goto :goto_0

    .line 209
    .end local v0    # "fcce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_2
    new-instance v1, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v3

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v4

    invoke-direct {v1, p1, p2, v3, v4}, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;-><init>(IIII)V

    .line 210
    .local v1, "loc":Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
    iget-object v3, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v3, v1}, Lorg/apache/poi/ss/formula/PlainCellCache;->get(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    move-result-object v2

    .line 212
    .local v2, "pcce":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    if-eqz v2, :cond_0

    .line 215
    iget-object v3, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    goto :goto_0
.end method

.method public notifyUpdateCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 17
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .prologue
    .line 52
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/apache/poi/ss/formula/FormulaCellCache;->get(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v8

    .line 54
    .local v8, "fcce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    invoke-interface/range {p3 .. p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v5

    .line 55
    .local v5, "rowIndex":I
    invoke-interface/range {p3 .. p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v6

    .line 56
    .local v6, "columnIndex":I
    new-instance v15, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v15, v0, v1, v5, v6}, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;-><init>(IIII)V

    .line 57
    .local v15, "loc":Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v3, v15}, Lorg/apache/poi/ss/formula/PlainCellCache;->get(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    move-result-object v14

    .line 59
    .local v14, "pcce":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    invoke-interface/range {p3 .. p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 60
    if-nez v8, :cond_3

    .line 61
    new-instance v8, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .end local v8    # "fcce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    invoke-direct {v8}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;-><init>()V

    .line 62
    .restart local v8    # "fcce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-nez v14, :cond_1

    .line 63
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v3, :cond_0

    .line 64
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    move/from16 v4, p2

    move-object/from16 v7, p3

    invoke-interface/range {v3 .. v8}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onChangeFromBlankValue(IIILorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    .line 67
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v5, v6}, Lorg/apache/poi/ss/formula/EvaluationCache;->updateAnyBlankReferencingFormulas(IIII)V

    .line 70
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v8}, Lorg/apache/poi/ss/formula/FormulaCellCache;->put(Lorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V

    .line 75
    :goto_0
    if-nez v14, :cond_4

    .line 116
    :cond_2
    :goto_1
    return-void

    .line 72
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v8, v3}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 73
    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->clearFormulaEntry()V

    goto :goto_0

    .line 79
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v14, v3}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v3, v15}, Lorg/apache/poi/ss/formula/PlainCellCache;->remove(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)V

    goto :goto_1

    .line 83
    :cond_5
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v16

    .line 84
    .local v16, "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    if-nez v14, :cond_9

    .line 85
    sget-object v3, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_8

    .line 89
    new-instance v14, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    .end local v14    # "pcce":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 90
    .restart local v14    # "pcce":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    if-nez v8, :cond_7

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v3, :cond_6

    .line 92
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    move/from16 v10, p2

    move v11, v5

    move v12, v6

    move-object/from16 v13, p3

    invoke-interface/range {v9 .. v14}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onChangeFromBlankValue(IIILorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    .line 94
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v5, v6}, Lorg/apache/poi/ss/formula/EvaluationCache;->updateAnyBlankReferencingFormulas(IIII)V

    .line 97
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v3, v15, v14}, Lorg/apache/poi/ss/formula/PlainCellCache;->put(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;)V

    .line 107
    :cond_8
    :goto_2
    if-eqz v8, :cond_2

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/apache/poi/ss/formula/FormulaCellCache;->remove(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 112
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->setSensitiveInputCells([Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v8, v3}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    goto :goto_1

    .line 100
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;->updateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v14, v3}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 103
    :cond_a
    sget-object v3, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_8

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v3, v15}, Lorg/apache/poi/ss/formula/PlainCellCache;->remove(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)V

    goto :goto_2
.end method
