.class final Lorg/apache/poi/ss/formula/SheetRefEvaluator;
.super Ljava/lang/Object;
.source "SheetRefEvaluator.java"


# instance fields
.field private final _bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field private _sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

.field private final _sheetIndex:I

.field private final _tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V
    .locals 3
    .param p1, "bookEvaluator"    # Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .param p2, "tracker"    # Lorg/apache/poi/ss/formula/EvaluationTracker;
    .param p3, "sheetIndex"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-ltz p3, :cond_0

    .line 38
    iput-object p1, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 39
    iput-object p2, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    .line 40
    iput p3, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheetIndex:I

    .line 41
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sheetIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheetIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-object v0
.end method


# virtual methods
.method public getEvalForCell(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 48
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheetIndex:I

    iget-object v5, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateReference(Lorg/apache/poi/ss/formula/EvaluationSheet;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheetIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSubTotal(II)Z
    .locals 10
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "subtotal":Z
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v1

    .line 65
    .local v1, "cell":Lorg/apache/poi/ss/formula/EvaluationCell;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 66
    iget-object v2, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v2

    .line 67
    .local v2, "wb":Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    invoke-interface {v2, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .local v3, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 68
    .local v6, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v7, v6, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    if-eqz v7, :cond_0

    .line 69
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    .line 70
    .local v7, "f":Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SUBTOTAL"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 72
    goto :goto_1

    .line 67
    .end local v6    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v7    # "f":Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "wb":Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .end local v3    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    :goto_1
    return v0
.end method
