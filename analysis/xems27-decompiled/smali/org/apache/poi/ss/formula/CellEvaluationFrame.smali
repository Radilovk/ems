.class final Lorg/apache/poi/ss/formula/CellEvaluationFrame;
.super Ljava/lang/Object;
.source "CellEvaluationFrame.java"


# instance fields
.field private final _cce:Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

.field private final _sensitiveInputCells:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/CellCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private _usedBlankCellGroup:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V
    .locals 1
    .param p1, "cce"    # Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->_cce:Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->_sensitiveInputCells:Ljava/util/Set;

    .line 37
    return-void
.end method

.method private getSensitiveInputCells()[Lorg/apache/poi/ss/formula/CellCacheEntry;
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->_sensitiveInputCells:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 60
    .local v0, "nItems":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 61
    sget-object v1, Lorg/apache/poi/ss/formula/CellCacheEntry;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/CellCacheEntry;

    return-object v1

    .line 63
    :cond_0
    new-array v1, v0, [Lorg/apache/poi/ss/formula/CellCacheEntry;

    .line 64
    .local v1, "result":[Lorg/apache/poi/ss/formula/CellCacheEntry;
    iget-object v2, p0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->_sensitiveInputCells:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 65
    return-object v1
.end method


# virtual methods
.method public addSensitiveInputCell(Lorg/apache/poi/ss/formula/CellCacheEntry;)V
    .locals 1
    .param p1, "inputCell"    # Lorg/apache/poi/ss/formula/CellCacheEntry;

    .line 52
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->_sensitiveInputCells:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public addUsedBlankCell(IIII)V
    .locals 1
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I

    .line 68
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->_usedBlankCellGroup:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->_usedBlankCellGroup:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->_usedBlankCellGroup:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;->addCell(IIII)V

    .line 72
    return-void
.end method

.method public getCCE()Lorg/apache/poi/ss/formula/CellCacheEntry;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->_cce:Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 44
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFormulaResult(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 3
    .param p1, "result"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 75
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->_cce:Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->getSensitiveInputCells()[Lorg/apache/poi/ss/formula/CellCacheEntry;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/CellEvaluationFrame;->_usedBlankCellGroup:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->updateFormulaResult(Lorg/apache/poi/ss/formula/eval/ValueEval;[Lorg/apache/poi/ss/formula/CellCacheEntry;Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;)V

    .line 76
    return-void
.end method
