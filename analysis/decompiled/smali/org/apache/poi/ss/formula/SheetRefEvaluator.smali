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

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-gez p3, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sheetIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 39
    iput-object p2, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    .line 40
    iput p3, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheetIndex:I

    .line 41
    return-void
.end method

.method private getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 2

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 63
    const/4 v6, 0x0

    .line 64
    .local v6, "subtotal":Z
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v8

    invoke-interface {v8, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v1

    .line 65
    .local v1, "cell":Lorg/apache/poi/ss/formula/EvaluationCell;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 66
    iget-object v8, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v7

    .line 67
    .local v7, "wb":Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    invoke-interface {v7, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 68
    .local v5, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v8, v5, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    if-eqz v8, :cond_1

    move-object v2, v5

    .line 69
    check-cast v2, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    .line 70
    .local v2, "f":Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    const-string v8, "SUBTOTAL"

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 71
    const/4 v6, 0x1

    .line 77
    .end local v0    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v2    # "f":Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v7    # "wb":Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    :cond_0
    return v6

    .line 67
    .restart local v0    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .restart local v7    # "wb":Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
