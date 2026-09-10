.class final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
.super Ljava/lang/Object;
.source "ForkedEvaluationSheet.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationSheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    }
.end annotation


# instance fields
.field private final _masterSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

.field private final _sharedCellsByRowCol:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;",
            "Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationSheet;)V
    .locals 1
    .param p1, "masterSheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_masterSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    .line 51
    return-void
.end method


# virtual methods
.method public copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 7
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .prologue
    .line 81
    iget-object v6, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v3, v6, [Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    .line 82
    .local v3, "keys":[Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    iget-object v6, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_2

    .line 85
    aget-object v2, v3, v1

    .line 86
    .local v2, "key":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->getRowIndex()I

    move-result v6

    invoke-interface {p1, v6}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 87
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-nez v4, :cond_0

    .line 88
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->getRowIndex()I

    move-result v6

    invoke-interface {p1, v6}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 90
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->getColumnIndex()I

    move-result v6

    invoke-interface {v4, v6}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 91
    .local v0, "destCell":Lorg/apache/poi/ss/usermodel/Cell;
    if-nez v0, :cond_1

    .line 92
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->getColumnIndex()I

    move-result v6

    invoke-interface {v4, v6}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 95
    :cond_1
    iget-object v6, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    .line 96
    .local v5, "srcCell":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    invoke-virtual {v5, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->copyValue(Lorg/apache/poi/ss/usermodel/Cell;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "destCell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v2    # "key":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    .end local v4    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v5    # "srcCell":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    :cond_2
    return-void
.end method

.method public getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 3
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .prologue
    .line 54
    new-instance v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;-><init>(II)V

    .line 56
    .local v0, "key":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    iget-object v2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    .line 57
    .local v1, "result":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    if-nez v1, :cond_0

    .line 58
    iget-object v2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_masterSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    invoke-interface {v2, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v1

    .line 60
    .end local v1    # "result":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    :cond_0
    return-object v1
.end method

.method public getOrCreateUpdatableCell(II)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    .locals 7
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .prologue
    .line 64
    new-instance v1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    invoke-direct {v1, p1, p2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;-><init>(II)V

    .line 66
    .local v1, "key":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    iget-object v4, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    .line 67
    .local v3, "result":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    if-nez v3, :cond_1

    .line 68
    iget-object v4, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_masterSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    invoke-interface {v4, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v2

    .line 69
    .local v2, "mcell":Lorg/apache/poi/ss/formula/EvaluationCell;
    if-nez v2, :cond_0

    .line 70
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 71
    .local v0, "cr":Lorg/apache/poi/ss/util/CellReference;
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Underlying cell \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is missing in master sheet."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    .end local v0    # "cr":Lorg/apache/poi/ss/util/CellReference;
    :cond_0
    new-instance v3, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    .end local v3    # "result":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    invoke-direct {v3, p0, v2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;-><init>(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;Lorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 75
    .restart local v3    # "result":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    iget-object v4, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_sharedCellsByRowCol:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v2    # "mcell":Lorg/apache/poi/ss/formula/EvaluationCell;
    :cond_1
    return-object v3
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationWorkbook;)I
    .locals 1
    .param p1, "mewb"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->_masterSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    return v0
.end method
