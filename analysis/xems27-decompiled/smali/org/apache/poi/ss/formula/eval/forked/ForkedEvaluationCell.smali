.class final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
.super Ljava/lang/Object;
.source "ForkedEvaluationCell.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationCell;


# instance fields
.field private _booleanValue:Z

.field private _cellType:I

.field private _errorValue:I

.field private final _masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

.field private _numberValue:D

.field private final _sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

.field private _stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
    .param p2, "masterCell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 49
    iput-object p2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 51
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->setValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 52
    return-void
.end method

.method private checkCellType(I)V
    .locals 3
    .param p1, "expectedCellType"    # I

    .line 99
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:I

    if-ne v0, p1, :cond_0

    .line 102
    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong data type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copyValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3
    .param p1, "destCell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 88
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 93
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellErrorValue(B)V

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected data type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Z)V

    return-void

    .line 89
    :cond_2
    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(I)V

    return-void

    .line 92
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_4
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    return-void
.end method

.method public getBooleanCellValue()Z
    .locals 1

    .line 107
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(I)V

    .line 108
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    return v0
.end method

.method public getCachedFormulaResultType()I
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCachedFormulaResultType()I

    move-result v0

    return v0
.end method

.method public getCellType()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:I

    return v0
.end method

.method public getColumnIndex()I
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v0

    return v0
.end method

.method public getErrorCellValue()I
    .locals 1

    .line 111
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(I)V

    .line 112
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    return v0
.end method

.method public getIdentityKey()Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getIdentityKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 2

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(I)V

    .line 116
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    return-wide v0
.end method

.method public getRowIndex()I
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v0

    return v0
.end method

.method public getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 1

    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(I)V

    .line 120
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 4
    .param p1, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/ss/formula/eval/ValueEval;>;"
    const-class v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:I

    .line 63
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    .line 64
    return-void

    .line 66
    :cond_0
    const-class v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-ne v0, v1, :cond_1

    .line 67
    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:I

    .line 68
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    .line 69
    return-void

    .line 71
    :cond_1
    const-class v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-ne v0, v1, :cond_2

    .line 72
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:I

    .line 73
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    .line 74
    return-void

    .line 76
    :cond_2
    const-class v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-ne v0, v1, :cond_3

    .line 77
    const/4 v1, 0x5

    iput v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:I

    .line 78
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    .line 79
    return-void

    .line 81
    :cond_3
    const-class v1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v0, v1, :cond_4

    .line 82
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:I

    .line 83
    return-void

    .line 85
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected value class ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
