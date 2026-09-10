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

    .line 152
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 153
    return v0

    .line 155
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 156
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 158
    return v0

    .line 160
    :cond_1
    sget-object v2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_3

    .line 161
    if-ne p2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 163
    :cond_3
    const-class v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-ne v1, v2, :cond_5

    .line 164
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v4

    move-object v2, p2

    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    cmpl-double v2, v4, v6

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    .line 166
    :cond_5
    const-class v2, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-ne v1, v2, :cond_6

    .line 167
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    move-object v2, p2

    check-cast v2, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 169
    :cond_6
    const-class v2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-ne v1, v2, :cond_8

    .line 170
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v2

    move-object v4, p2

    check-cast v4, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v4

    if-ne v2, v4, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    .line 172
    :cond_8
    const-class v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-ne v1, v2, :cond_a

    .line 173
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v2

    move-object v4, p2

    check-cast v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v4

    if-ne v2, v4, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0

    .line 175
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected value class ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAnyBlankReferencingFormulas(IIII)V
    .locals 3
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I

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

    .line 192
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v0, :cond_0

    .line 193
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

    .line 179
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/FormulaCellCache;->get(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    .line 180
    .local v0, "result":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-nez v0, :cond_0

    .line 182
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;-><init>()V

    move-object v0, v1

    .line 183
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

    .line 132
    new-instance v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;-><init>(IIII)V

    .line 133
    .local v0, "loc":Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/formula/PlainCellCache;->get(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    move-result-object v1

    .line 134
    .local v1, "result":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    if-nez v1, :cond_0

    .line 135
    new-instance v2, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    invoke-direct {v2, p5}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    move-object v1, v2

    .line 136
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v2, v0, v1}, Lorg/apache/poi/ss/formula/PlainCellCache;->put(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;)V

    .line 137
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v2, :cond_1

    .line 138
    invoke-interface {v2, p2, p3, p4, v1}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onReadPlainValue(IIILorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    invoke-direct {p0, v2, p5}, Lorg/apache/poi/ss/formula/EvaluationCache;->areValuesEqual(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v2, :cond_1

    .line 146
    invoke-interface {v2, p2, p3, p4, p5}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onCacheHit(IIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 149
    :cond_1
    :goto_0
    return-object v1

    .line 143
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "value changed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public notifyDeleteCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 3
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 200
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 201
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v0, p3}, Lorg/apache/poi/ss/formula/FormulaCellCache;->remove(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    .line 202
    .local v0, "fcce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-nez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->setSensitiveInputCells([Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 206
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 208
    .end local v0    # "fcce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :goto_0
    goto :goto_1

    .line 209
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v1

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;-><init>(IIII)V

    .line 210
    .local v0, "loc":Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/formula/PlainCellCache;->get(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    move-result-object v1

    .line 212
    .local v1, "pcce":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    if-nez v1, :cond_2

    goto :goto_1

    .line 215
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 218
    .end local v0    # "loc":Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
    .end local v1    # "pcce":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    :goto_1
    return-void
.end method

.method public notifyUpdateCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 12
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 52
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v0, p3}, Lorg/apache/poi/ss/formula/FormulaCellCache;->get(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    .line 54
    .local v0, "fcce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v7

    .line 55
    .local v7, "rowIndex":I
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v8

    .line 56
    .local v8, "columnIndex":I
    new-instance v1, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    invoke-direct {v1, p1, p2, v7, v8}, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;-><init>(IIII)V

    move-object v9, v1

    .line 57
    .local v9, "loc":Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v1, v9}, Lorg/apache/poi/ss/formula/PlainCellCache;->get(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    move-result-object v10

    .line 59
    .local v10, "pcce":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 60
    if-nez v0, :cond_2

    .line 61
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;-><init>()V

    move-object v0, v1

    .line 62
    if-nez v10, :cond_1

    .line 63
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v1, :cond_0

    .line 64
    move v2, p2

    move v3, v7

    move v4, v8

    move-object v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onChangeFromBlankValue(IIILorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    .line 67
    :cond_0
    invoke-direct {p0, p1, p2, v7, v8}, Lorg/apache/poi/ss/formula/EvaluationCache;->updateAnyBlankReferencingFormulas(IIII)V

    .line 70
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v1, p3, v0}, Lorg/apache/poi/ss/formula/FormulaCellCache;->put(Lorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 73
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->clearFormulaEntry()V

    .line 75
    :goto_0
    if-nez v10, :cond_3

    goto :goto_2

    .line 79
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v10, v1}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 80
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v1, v9}, Lorg/apache/poi/ss/formula/PlainCellCache;->remove(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)V

    goto :goto_2

    .line 83
    :cond_4
    invoke-static {p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    .line 84
    .local v11, "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    if-nez v10, :cond_7

    .line 85
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eq v11, v1, :cond_9

    .line 89
    new-instance v1, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    invoke-direct {v1, v11}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    move-object v10, v1

    .line 90
    if-nez v0, :cond_6

    .line 91
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v1, :cond_5

    .line 92
    move v2, p2

    move v3, v7

    move v4, v8

    move-object v5, p3

    move-object v6, v10

    invoke-interface/range {v1 .. v6}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onChangeFromBlankValue(IIILorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    .line 94
    :cond_5
    invoke-direct {p0, p1, p2, v7, v8}, Lorg/apache/poi/ss/formula/EvaluationCache;->updateAnyBlankReferencingFormulas(IIII)V

    .line 97
    :cond_6
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v1, v9, v10}, Lorg/apache/poi/ss/formula/PlainCellCache;->put(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;)V

    goto :goto_1

    .line 100
    :cond_7
    invoke-virtual {v10, v11}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;->updateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 101
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v10, v1}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 103
    :cond_8
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v11, v1, :cond_9

    .line 104
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v1, v9}, Lorg/apache/poi/ss/formula/PlainCellCache;->remove(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)V

    .line 107
    :cond_9
    :goto_1
    if-nez v0, :cond_a

    goto :goto_2

    .line 111
    :cond_a
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v1, p3}, Lorg/apache/poi/ss/formula/FormulaCellCache;->remove(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->setSensitiveInputCells([Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 113
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 116
    .end local v11    # "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_2
    return-void
.end method
