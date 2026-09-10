.class public final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;
.super Ljava/lang/Object;
.source "ForkedEvaluator.java"


# instance fields
.field private _evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field private _sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2
    .param p1, "masterWorkbook"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .param p2, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p3, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    .line 53
    new-instance v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 54
    return-void
.end method

.method public static create(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;
    .locals 1
    .param p0, "wb"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p1, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;

    .line 69
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->create(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;
    .locals 2
    .param p0, "wb"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p1, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p2, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 75
    new-instance v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->createEvaluationWorkbook(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-object v0
.end method

.method private static createEvaluationWorkbook(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 3
    .param p0, "wb"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 56
    instance-of v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected workbook type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setupEnvironment([Ljava/lang/String;[Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;)V
    .locals 3
    .param p0, "workbookNames"    # [Ljava/lang/String;
    .param p1, "evaluators"    # [Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;

    .line 139
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 140
    .local v0, "wbEvals":[Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 141
    aget-object v2, p1, v1

    iget-object v2, v2, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    aput-object v2, v0, v1

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setup([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 144
    return-void
.end method


# virtual methods
.method public copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 97
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Workbook;)V

    .line 98
    return-void
.end method

.method public evaluate(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rowIndex"    # I
    .param p3, "columnIndex"    # I

    .line 113
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getEvaluationCell(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v0

    .line 115
    .local v0, "cell":Lorg/apache/poi/ss/formula/EvaluationCell;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 119
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad cell type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v1

    return-object v1

    .line 127
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 121
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 125
    :cond_4
    new-instance v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 123
    :cond_5
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v1
.end method

.method public updateCell(Ljava/lang/String;IILorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rowIndex"    # I
    .param p3, "columnIndex"    # I
    .param p4, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 86
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getOrCreateUpdatableCell(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    move-result-object v0

    .line 87
    .local v0, "cell":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    invoke-virtual {v0, p4}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->setValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 88
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 89
    return-void
.end method
