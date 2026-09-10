.class final Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
.super Lorg/apache/poi/ss/formula/CellCacheEntry;
.source "FormulaCellCacheEntry.java"


# instance fields
.field private _sensitiveInputCells:[Lorg/apache/poi/ss/formula/CellCacheEntry;

.field private _usedBlankCellGroup:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/CellCacheEntry;-><init>()V

    .line 46
    return-void
.end method

.method private changeConsumingCells([Lorg/apache/poi/ss/formula/CellCacheEntry;)V
    .locals 7
    .param p1, "usedCells"    # [Lorg/apache/poi/ss/formula/CellCacheEntry;

    .line 77
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->_sensitiveInputCells:[Lorg/apache/poi/ss/formula/CellCacheEntry;

    .line 78
    .local v0, "prevUsedCells":[Lorg/apache/poi/ss/formula/CellCacheEntry;
    array-length v1, p1

    .line 79
    .local v1, "nUsed":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 80
    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Lorg/apache/poi/ss/formula/CellCacheEntry;->addConsumingCell(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "i":I
    :cond_0
    if-nez v0, :cond_1

    .line 83
    return-void

    .line 85
    :cond_1
    array-length v2, v0

    .line 86
    .local v2, "nPrevUsed":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 87
    return-void

    .line 90
    :cond_2
    if-ge v1, v3, :cond_3

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "usedSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/formula/CellCacheEntry;>;"
    goto :goto_2

    .line 93
    .end local v3    # "usedSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/formula/CellCacheEntry;>;"
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 94
    .restart local v3    # "usedSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/formula/CellCacheEntry;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 95
    aget-object v5, p1, v4

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 98
    .end local v4    # "i":I
    :cond_4
    :goto_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v2, :cond_6

    .line 99
    aget-object v5, v0, v4

    .line 100
    .local v5, "prevUsed":Lorg/apache/poi/ss/formula/CellCacheEntry;
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 102
    invoke-virtual {v5, p0}, Lorg/apache/poi/ss/formula/CellCacheEntry;->clearConsumingCell(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V

    .line 98
    .end local v5    # "prevUsed":Lorg/apache/poi/ss/formula/CellCacheEntry;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 105
    .end local v4    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public clearFormulaEntry()V
    .locals 3

    .line 65
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->_sensitiveInputCells:[Lorg/apache/poi/ss/formula/CellCacheEntry;

    .line 66
    .local v0, "usedCells":[Lorg/apache/poi/ss/formula/CellCacheEntry;
    if-eqz v0, :cond_0

    .line 67
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 68
    aget-object v2, v0, v1

    invoke-virtual {v2, p0}, Lorg/apache/poi/ss/formula/CellCacheEntry;->clearConsumingCell(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V

    .line 67
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->_sensitiveInputCells:[Lorg/apache/poi/ss/formula/CellCacheEntry;

    .line 72
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->clearValue()V

    .line 73
    return-void
.end method

.method public isInputSensitive()Z
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->_sensitiveInputCells:[Lorg/apache/poi/ss/formula/CellCacheEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 50
    array-length v0, v0

    if-lez v0, :cond_0

    .line 51
    return v1

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->_usedBlankCellGroup:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v1
.end method

.method public notifyUpdatedBlankCell(Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;IILorg/apache/poi/ss/formula/IEvaluationListener;)V
    .locals 1
    .param p1, "bsk"    # Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;
    .param p2, "rowIndex"    # I
    .param p3, "columnIndex"    # I
    .param p4, "evaluationListener"    # Lorg/apache/poi/ss/formula/IEvaluationListener;

    .line 114
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->_usedBlankCellGroup:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;->containsCell(Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->clearFormulaEntry()V

    .line 117
    invoke-virtual {p0, p4}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setSensitiveInputCells([Lorg/apache/poi/ss/formula/CellCacheEntry;)V
    .locals 1
    .param p1, "sensitiveInputCells"    # [Lorg/apache/poi/ss/formula/CellCacheEntry;

    .line 60
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/CellCacheEntry;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/CellCacheEntry;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->changeConsumingCells([Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 61
    iput-object p1, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->_sensitiveInputCells:[Lorg/apache/poi/ss/formula/CellCacheEntry;

    .line 62
    return-void
.end method

.method public updateFormulaResult(Lorg/apache/poi/ss/formula/eval/ValueEval;[Lorg/apache/poi/ss/formula/CellCacheEntry;Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;)V
    .locals 0
    .param p1, "result"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "sensitiveInputCells"    # [Lorg/apache/poi/ss/formula/CellCacheEntry;
    .param p3, "usedBlankAreas"    # Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;

    .line 108
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->updateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    .line 109
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->setSensitiveInputCells([Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 110
    iput-object p3, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->_usedBlankCellGroup:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;

    .line 111
    return-void
.end method
