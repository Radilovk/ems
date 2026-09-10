.class abstract Lorg/apache/poi/ss/formula/CellCacheEntry;
.super Ljava/lang/Object;
.source "CellCacheEntry.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/CellCacheEntry;


# instance fields
.field private final _consumingCells:Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

.field private _value:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/CellCacheEntry;

    sput-object v0, Lorg/apache/poi/ss/formula/CellCacheEntry;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/CellCacheEntry;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_consumingCells:Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

    .line 40
    return-void
.end method

.method private static areValuesEqual(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 8
    .param p0, "a"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "b"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 58
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 59
    return v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 62
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/ss/formula/eval/ValueEval;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 64
    return v0

    .line 66
    :cond_1
    sget-object v2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 v3, 0x1

    if-ne p0, v2, :cond_3

    .line 67
    if-ne p1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 69
    :cond_3
    const-class v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-ne v1, v2, :cond_5

    .line 70
    move-object v2, p0

    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v4

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    cmpl-double v2, v4, v6

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    .line 72
    :cond_5
    const-class v2, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-ne v1, v2, :cond_6

    .line 73
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 75
    :cond_6
    const-class v2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-ne v1, v2, :cond_8

    .line 76
    move-object v2, p0

    check-cast v2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v2

    move-object v4, p1

    check-cast v4, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v4

    if-ne v2, v4, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    .line 78
    :cond_8
    const-class v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-ne v1, v2, :cond_a

    .line 79
    move-object v2, p0

    check-cast v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v2

    move-object v4, p1

    check-cast v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v4

    if-ne v2, v4, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0

    .line 81
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


# virtual methods
.method public final addConsumingCell(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V
    .locals 1
    .param p1, "cellLoc"    # Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 85
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_consumingCells:Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->add(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 87
    return-void
.end method

.method public final clearConsumingCell(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V
    .locals 2
    .param p1, "cce"    # Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 93
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_consumingCells:Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->remove(Lorg/apache/poi/ss/formula/CellCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Specified formula cell is not consumed by this cell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final clearValue()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 43
    return-void
.end method

.method public final getConsumingCells()[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_consumingCells:Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->toArray()[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-object v0
.end method

.method protected final recurseClearCachedFormulaResults()V
    .locals 3

    .line 113
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/CellCacheEntry;->getConsumingCells()[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    .line 115
    .local v0, "formulaCells":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 116
    aget-object v2, v0, v1

    .line 117
    .local v2, "fc":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->clearFormulaEntry()V

    .line 118
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->recurseClearCachedFormulaResults()V

    .line 115
    .end local v2    # "fc":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/poi/ss/formula/IEvaluationListener;

    .line 98
    if-nez p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/CellCacheEntry;->recurseClearCachedFormulaResults()V

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onClearCachedValue(Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/formula/CellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;I)V

    .line 104
    :goto_0
    return-void
.end method

.method protected final recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;I)V
    .locals 4
    .param p1, "listener"    # Lorg/apache/poi/ss/formula/IEvaluationListener;
    .param p2, "depth"    # I

    .line 126
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/CellCacheEntry;->getConsumingCells()[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    .line 128
    .local v0, "formulaCells":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/IEvaluationListener;->sortDependentCachedValues([Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 130
    aget-object v2, v0, v1

    .line 131
    .local v2, "fc":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    invoke-interface {p1, v2, p2}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onClearDependentCachedValue(Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;I)V

    .line 132
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->clearFormulaEntry()V

    .line 133
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;I)V

    .line 129
    .end local v2    # "fc":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final updateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 2
    .param p1, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 46
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->areValuesEqual(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 50
    .local v0, "result":Z
    iput-object p1, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 51
    return v0

    .line 47
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Did not expect to update to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
