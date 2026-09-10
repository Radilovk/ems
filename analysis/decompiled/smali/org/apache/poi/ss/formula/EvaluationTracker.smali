.class final Lorg/apache/poi/ss/formula/EvaluationTracker;
.super Ljava/lang/Object;
.source "EvaluationTracker.java"


# instance fields
.field private final _cache:Lorg/apache/poi/ss/formula/EvaluationCache;

.field private final _currentlyEvaluatingCells:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final _evaluationFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/formula/CellEvaluationFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V
    .locals 1
    .param p1, "cache"    # Lorg/apache/poi/ss/formula/EvaluationCache;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_evaluationFrames:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_currentlyEvaluatingCells:Ljava/util/Set;

    .line 48
    return-void
.end method


# virtual methods
.method public acceptFormulaDependency(Lorg/apache/poi/ss/formula/CellCacheEntry;)V
    .locals 3
    .param p1, "cce"    # Lorg/apache/poi/ss/formula/CellCacheEntry;

    .prologue
    .line 125
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_evaluationFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 126
    .local v1, "prevFrameIndex":I
    if-gez v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_evaluationFrames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;

    .line 130
    .local v0, "consumingFrame":Lorg/apache/poi/ss/formula/CellEvaluationFrame;
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->addSensitiveInputCell(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    goto :goto_0
.end method

.method public acceptPlainValueDependency(IIIILorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 9
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I
    .param p5, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_evaluationFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 138
    .local v8, "prevFrameIndex":I
    if-gez v8, :cond_0

    .line 150
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_evaluationFrames:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/formula/CellEvaluationFrame;

    .line 142
    .local v7, "consumingFrame":Lorg/apache/poi/ss/formula/CellEvaluationFrame;
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p5, v0, :cond_1

    .line 143
    invoke-virtual {v7, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->addUsedBlankCell(IIII)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/EvaluationCache;->getPlainValueEntry(IIIILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    move-result-object v6

    .line 147
    .local v6, "cce":Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    invoke-virtual {v7, v6}, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->addSensitiveInputCell(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    goto :goto_0
.end method

.method public endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V
    .locals 4
    .param p1, "cce"    # Lorg/apache/poi/ss/formula/CellCacheEntry;

    .prologue
    .line 108
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_evaluationFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 109
    .local v1, "nFrames":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 110
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Call to endEvaluate without matching call to startEvaluate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 114
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_evaluationFrames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;

    .line 115
    .local v0, "frame":Lorg/apache/poi/ss/formula/CellEvaluationFrame;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->getCCE()Lorg/apache/poi/ss/formula/CellCacheEntry;

    move-result-object v2

    if-eq p1, v2, :cond_1

    .line 116
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Wrong cell specified. "

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_evaluationFrames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_currentlyEvaluatingCells:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public startEvaluate(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)Z
    .locals 2
    .param p1, "cce"    # Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cellLoc must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_currentlyEvaluatingCells:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    .line 71
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_currentlyEvaluatingCells:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_evaluationFrames:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/ss/formula/CellEvaluationFrame;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/CellEvaluationFrame;-><init>(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateCacheResult(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 5
    .param p1, "result"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v4, 0x1

    .line 78
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_evaluationFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 79
    .local v1, "nFrames":I
    if-ge v1, v4, :cond_0

    .line 80
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Call to endEvaluate without matching call to startEvaluate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationTracker;->_evaluationFrames:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;

    .line 83
    .local v0, "frame":Lorg/apache/poi/ss/formula/CellEvaluationFrame;
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-ne p1, v2, :cond_1

    if-le v1, v4, :cond_1

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->updateFormulaResult(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    goto :goto_0
.end method
