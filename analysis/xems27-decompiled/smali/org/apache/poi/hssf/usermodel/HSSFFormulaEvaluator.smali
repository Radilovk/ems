.class public Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;
.super Ljava/lang/Object;
.source "HSSFFormulaEvaluator.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
.implements Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;


# instance fields
.field private _book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

.field private _bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p2, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 60
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;)V

    .line 64
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 73
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p3, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 80
    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;
    .locals 1
    .param p0, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p1, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p2, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 89
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-object v0
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p0, "wb"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 321
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    invoke-static {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V

    .line 322
    return-void
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 1
    .param p0, "wb"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 336
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    move-result-object v0

    .line 337
    .local v0, "evaluator":Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    invoke-static {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V

    .line 338
    return-void
.end method

.method private static evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V
    .locals 8
    .param p0, "wb"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p1, "evaluator"    # Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumberOfSheets()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 341
    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    .line 343
    .local v1, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Row;

    .line 344
    .local v3, "r":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/usermodel/Cell;

    .line 345
    .local v5, "c":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 346
    invoke-interface {p1, v5}, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;->evaluateFormulaCell(Lorg/apache/poi/ss/usermodel/Cell;)I

    .line 348
    .end local v5    # "c":Lorg/apache/poi/ss/usermodel/Cell;
    :cond_0
    goto :goto_2

    .line 349
    .end local v3    # "r":Lorg/apache/poi/ss/usermodel/Row;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_1

    .line 340
    .end local v1    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 5
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 374
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 375
    .local v0, "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v1, :cond_0

    .line 376
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 377
    .local v1, "be":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/usermodel/CellValue;->valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v2

    return-object v2

    .line 379
    .end local v1    # "be":Lorg/apache/poi/ss/formula/eval/BoolEval;
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v1, :cond_1

    .line 380
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .line 381
    .local v1, "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    new-instance v2, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(D)V

    return-object v2

    .line 383
    .end local v1    # "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz v1, :cond_2

    .line 384
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    .line 385
    .local v1, "ne":Lorg/apache/poi/ss/formula/eval/StringValueEval;
    new-instance v2, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 387
    .end local v1    # "ne":Lorg/apache/poi/ss/formula/eval/StringValueEval;
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_3

    .line 388
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/CellValue;->getError(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v1

    return-object v1

    .line 390
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected eval class ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static setCellType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V
    .locals 4
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "cv"    # Lorg/apache/poi/ss/usermodel/CellValue;

    .line 269
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellType()I

    move-result v0

    .line 270
    .local v0, "cellType":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cell value type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_1
    :goto_0
    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(I)V

    .line 276
    return-void
.end method

.method private static setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V
    .locals 4
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "cv"    # Lorg/apache/poi/ss/usermodel/CellValue;

    .line 286
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellType()I

    move-result v0

    .line 287
    .local v0, "cellType":I
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 292
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getErrorValue()B

    move-result v1

    invoke-interface {p0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellErrorValue(B)V

    .line 293
    goto :goto_0

    .line 305
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cell value type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getBooleanValue()Z

    move-result v1

    invoke-interface {p0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Z)V

    .line 290
    goto :goto_0

    .line 298
    :cond_2
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 299
    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getNumberValue()D

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    .line 296
    nop

    .line 307
    :goto_0
    return-void
.end method

.method public static setupEnvironment([Ljava/lang/String;[Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;)V
    .locals 3
    .param p0, "workbookNames"    # [Ljava/lang/String;
    .param p1, "evaluators"    # [Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;

    .line 101
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 102
    .local v0, "wbEvals":[Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 103
    aget-object v2, p1, v1

    iget-object v2, v2, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    aput-object v2, v0, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setup([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 106
    return-void
.end method


# virtual methods
.method public _getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-object v0
.end method

.method public clearAllCachedResultValues()V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->clearAllCachedResultValues()V

    .line 141
    return-void
.end method

.method public evaluate(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 192
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 193
    return-object v0

    .line 196
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1

    .line 200
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/CellValue;->getError(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    return-object v0

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad cell type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/CellValue;->valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    return-object v0

    .line 208
    :cond_3
    return-object v0

    .line 202
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    return-object v0

    .line 206
    :cond_5
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 204
    :cond_6
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(D)V

    return-object v0
.end method

.method public evaluateAll()V
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V

    .line 367
    return-void
.end method

.method public evaluateFormulaCell(Lorg/apache/poi/ss/usermodel/Cell;)I
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 231
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    .line 236
    .local v0, "cv":Lorg/apache/poi/ss/usermodel/CellValue;
    invoke-static {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V

    .line 237
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellType()I

    move-result v1

    return v1

    .line 232
    .end local v0    # "cv":Lorg/apache/poi/ss/usermodel/CellValue;
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 257
    if-nez p1, :cond_0

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 261
    .local v0, "result":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 262
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v1

    .line 263
    .local v1, "cv":Lorg/apache/poi/ss/usermodel/CellValue;
    invoke-static {p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V

    .line 264
    invoke-static {p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->setCellType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V

    .line 266
    .end local v1    # "cv":Lorg/apache/poi/ss/usermodel/CellValue;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public notifyDeleteCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 162
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 163
    return-void
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 166
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 167
    return-void
.end method

.method public notifySetFormula(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 177
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 178
    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 149
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 150
    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 153
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 154
    return-void
.end method

.method public setCurrentRow(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V
    .locals 0
    .param p1, "row"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    return-void
.end method

.method public setDebugEvaluationOutputForNextEval(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 402
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->setDebugEvaluationOutputForNextEval(Z)V

    .line 403
    return-void
.end method

.method public setIgnoreMissingWorkbooks(Z)V
    .locals 1
    .param p1, "ignore"    # Z

    .line 396
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->setIgnoreMissingWorkbooks(Z)V

    .line 397
    return-void
.end method

.method public setupReferencedWorkbooks(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaEvaluator;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "evaluators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;>;"
    invoke-static {p1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setupFormulaEvaluator(Ljava/util/Map;)V

    .line 111
    return-void
.end method
