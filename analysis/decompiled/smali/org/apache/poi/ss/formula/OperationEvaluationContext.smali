.class public final Lorg/apache/poi/ss/formula/OperationEvaluationContext;
.super Ljava/lang/Object;
.source "OperationEvaluationContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/OperationEvaluationContext$1;
    }
.end annotation


# static fields
.field public static final UDF:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# instance fields
.field private final _bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field private final _columnIndex:I

.field private final _rowIndex:I

.field private final _sheetIndex:I

.field private final _tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

.field private final _workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    sput-object v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->UDF:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V
    .locals 0
    .param p1, "bookEvaluator"    # Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .param p2, "workbook"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .param p3, "sheetIndex"    # I
    .param p4, "srcRowNum"    # I
    .param p5, "srcColNum"    # I
    .param p6, "tracker"    # Lorg/apache/poi/ss/formula/EvaluationTracker;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 60
    iput-object p2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 61
    iput p3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    .line 62
    iput p4, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_rowIndex:I

    .line 63
    iput p5, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_columnIndex:I

    .line 64
    iput-object p6, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    .line 65
    return-void
.end method

.method private static classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .prologue
    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 290
    .local v0, "len":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 291
    sget-object v1, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    .line 293
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellReference;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v1

    goto :goto_0
.end method

.method private createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    .locals 5
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 142
    if-nez p1, :cond_0

    .line 143
    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 154
    .local v2, "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :goto_0
    if-nez p2, :cond_2

    iget v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    .line 155
    .local v1, "otherSheetIndex":I
    :goto_1
    if-gez v1, :cond_3

    .line 158
    .end local v1    # "otherSheetIndex":I
    .end local v2    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :goto_2
    return-object v3

    .line 145
    :cond_0
    if-nez p2, :cond_1

    .line 146
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "sheetName must not be null if workbookName is provided"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v4, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    goto :goto_0

    .line 150
    .end local v2    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    goto :goto_2

    .line 154
    .end local v0    # "e":Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    .restart local v2    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :cond_2
    invoke-virtual {v2, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 158
    .restart local v1    # "otherSheetIndex":I
    :cond_3
    new-instance v3, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object v4, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    invoke-direct {v3, v2, v4, v1}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    goto :goto_2
.end method

.method private getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 13
    .param p1, "externName"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .param p2, "workbookName"    # Ljava/lang/String;

    .prologue
    .line 410
    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v3, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v2

    .line 411
    .local v2, "refWorkbookEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->getIx()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v9

    .line 412
    .local v9, "evaluationName":Lorg/apache/poi/ss/formula/EvaluationName;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Lorg/apache/poi/ss/formula/EvaluationName;->hasFormula()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    invoke-interface {v9}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 414
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Complex name formulas not supported yet"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v2    # "refWorkbookEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .end local v9    # "evaluationName":Lorg/apache/poi/ss/formula/EvaluationName;
    :catch_0
    move-exception v12

    .line 438
    .local v12, "wnfe":Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local v12    # "wnfe":Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    :goto_0
    return-object v3

    .line 418
    .restart local v2    # "refWorkbookEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .restart local v9    # "evaluationName":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_0
    :try_start_1
    new-instance v1, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget-object v7, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    .line 421
    .local v1, "refWorkbookContext":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    invoke-interface {v9}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v10, v3, v4

    .line 422
    .local v10, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v3, v10, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v3, :cond_1

    .line 423
    move-object v0, v10

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    move-object v11, v0

    .line 424
    .local v11, "ref3D":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    invoke-virtual {v1, v11}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    goto :goto_0

    .line 425
    .end local v11    # "ref3D":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_1
    instance-of v3, v10, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v3, :cond_2

    .line 426
    move-object v0, v10

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    move-object v11, v0

    .line 427
    .local v11, "ref3D":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    invoke-virtual {v1, v11}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    goto :goto_0

    .line 428
    .end local v11    # "ref3D":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    :cond_2
    instance-of v3, v10, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v3, :cond_3

    .line 429
    move-object v0, v10

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    move-object v8, v0

    .line 430
    .local v8, "area3D":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    invoke-virtual {v1, v8}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    goto :goto_0

    .line 431
    .end local v8    # "area3D":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_3
    instance-of v3, v10, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v3, :cond_4

    .line 432
    move-object v0, v10

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    move-object v8, v0

    .line 433
    .local v8, "area3D":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    invoke-virtual {v1, v8}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    goto :goto_0

    .line 436
    .end local v1    # "refWorkbookContext":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v8    # "area3D":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    .end local v10    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_4
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "nameXPtg"    # Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    .prologue
    const/4 v6, -0x1

    .line 383
    iget-object v5, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v5, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "name":Ljava/lang/String;
    const/16 v5, 0x21

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 387
    .local v4, "sheetNameAt":I
    const/4 v0, 0x0

    .line 388
    .local v0, "evalName":Lorg/apache/poi/ss/formula/EvaluationName;
    if-le v4, v6, :cond_0

    .line 390
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "sheetName":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "nameName":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    iget-object v6, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v6, v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v2, v6}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    .line 398
    .end local v2    # "nameName":Ljava/lang/String;
    .end local v3    # "sheetName":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 400
    new-instance v5, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-direct {v5, v0}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;-><init>(Lorg/apache/poi/ss/formula/EvaluationName;)V

    .line 403
    :goto_1
    return-object v5

    .line 395
    :cond_0
    iget-object v5, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v5, v1, v6}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_1
    new-instance v5, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-direct {v5, v1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "nameXPxg"    # Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    .prologue
    .line 366
    const/4 v2, -0x1

    .line 367
    .local v2, "sIdx":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 368
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v2

    .line 372
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getNameName()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v3, v1, v2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    .line 374
    .local v0, "evalName":Lorg/apache/poi/ss/formula/EvaluationName;
    if-eqz v0, :cond_1

    .line 376
    new-instance v3, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-direct {v3, v0}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;-><init>(Lorg/apache/poi/ss/formula/EvaluationName;)V

    .line 379
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-direct {v3, v1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseColRef(Ljava/lang/String;)I
    .locals 1
    .param p0, "refStrPart"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static parseRowRef(Ljava/lang/String;)I
    .locals 1
    .param p0, "refStrPart"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {p0}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 2
    .param p1, "externSheetIndex"    # I

    .prologue
    .line 87
    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    .line 88
    .local v0, "externalSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v1

    return-object v1
.end method

.method createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 2
    .param p1, "firstSheetName"    # Ljava/lang/String;
    .param p2, "lastSheetName"    # Ljava/lang/String;
    .param p3, "externalWorkbookNumber"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    .line 84
    .local v0, "externalSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v1

    return-object v1
.end method

.method createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 12
    .param p1, "externalSheet"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    .prologue
    .line 93
    const/4 v5, -0x1

    .line 94
    .local v5, "otherLastSheetIndex":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    .line 96
    :cond_0
    iget-object v7, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 97
    .local v7, "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    iget-object v9, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v4

    .line 99
    .local v4, "otherFirstSheetIndex":I
    instance-of v9, p1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz v9, :cond_1

    .line 100
    check-cast p1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    .end local p1    # "externalSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "lastSheetName":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v9, v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v5

    .line 124
    .end local v3    # "lastSheetName":Ljava/lang/String;
    :cond_1
    const/4 v9, -0x1

    if-ne v5, v9, :cond_2

    .line 126
    move v5, v4

    .line 129
    :cond_2
    sub-int v9, v5, v4

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    .line 130
    .local v1, "evals":[Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v1

    if-ge v2, v9, :cond_5

    .line 131
    add-int v6, v2, v4

    .line 132
    .local v6, "otherSheetIndex":I
    new-instance v9, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object v10, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    invoke-direct {v9, v7, v10, v6}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    aput-object v9, v1, v2

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "evals":[Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    .end local v2    # "i":I
    .end local v4    # "otherFirstSheetIndex":I
    .end local v6    # "otherSheetIndex":I
    .end local v7    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .restart local p1    # "externalSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "workbookName":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v9, v8}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 112
    .restart local v7    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result v4

    .line 113
    .restart local v4    # "otherFirstSheetIndex":I
    instance-of v9, p1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz v9, :cond_4

    move-object v9, p1

    .line 114
    check-cast v9, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object v3

    .line 115
    .restart local v3    # "lastSheetName":Ljava/lang/String;
    invoke-virtual {v7, v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result v5

    .line 118
    .end local v3    # "lastSheetName":Ljava/lang/String;
    :cond_4
    if-gez v4, :cond_1

    .line 119
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid sheet name \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' in bool \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 108
    .end local v4    # "otherFirstSheetIndex":I
    .end local v7    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 134
    .end local v0    # "e":Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    .end local v8    # "workbookName":Ljava/lang/String;
    .end local p1    # "externalSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .restart local v1    # "evals":[Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    .restart local v2    # "i":I
    .restart local v4    # "otherFirstSheetIndex":I
    .restart local v7    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :cond_5
    new-instance v9, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-direct {v9, v4, v5, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(II[Lorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    return-object v9
.end method

.method createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 1
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;

    .prologue
    .line 80
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;->getExternSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    return-object v0
.end method

.method public findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v0

    return-object v0
.end method

.method public getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "aptg"    # Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .prologue
    .line 320
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v5

    .line 321
    .local v5, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v0, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstColumn()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastColumn()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v0
.end method

.method public getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "aptg"    # Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    .prologue
    .line 325
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v5

    .line 327
    .local v5, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v0, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getFirstColumn()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastColumn()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v0
.end method

.method public getAreaEval(IIII)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "firstRowIndex"    # I
    .param p2, "firstColumnIndex"    # I
    .param p3, "lastRowIndex"    # I
    .param p4, "lastColumnIndex"    # I

    .prologue
    .line 316
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v5

    .line 317
    .local v5, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v0, Lorg/apache/poi/ss/formula/LazyAreaEval;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_columnIndex:I

    return v0
.end method

.method public getDynamicReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 15
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "refStrPart1"    # Ljava/lang/String;
    .param p4, "refStrPart2"    # Ljava/lang/String;
    .param p5, "isA1Style"    # Z

    .prologue
    .line 187
    if-nez p5, :cond_0

    .line 188
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v13, "R1C1 style not supported yet"

    invoke-direct {v1, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    invoke-direct/range {p0 .. p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v11

    .line 191
    .local v11, "se":Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    if-nez v11, :cond_1

    .line 192
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 277
    :goto_0
    return-object v1

    .line 194
    :cond_1
    new-instance v6, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    iget v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-direct {v6, v1, v11}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(ILorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    .line 197
    .local v6, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    check-cast v1, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v12

    .line 199
    .local v12, "ssVersion":Lorg/apache/poi/ss/SpreadsheetVersion;
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v9

    .line 200
    .local v9, "part1refType":Lorg/apache/poi/ss/util/CellReference$NameType;
    sget-object v1, Lorg/apache/poi/ss/formula/OperationEvaluationContext$1;->$SwitchMap$org$apache$poi$ss$util$CellReference$NameType:[I

    invoke-virtual {v9}, Lorg/apache/poi/ss/util/CellReference$NameType;->ordinal()I

    move-result v13

    aget v1, v1, v13

    packed-switch v1, :pswitch_data_0

    .line 210
    if-nez p4, :cond_3

    .line 212
    sget-object v1, Lorg/apache/poi/ss/formula/OperationEvaluationContext$1;->$SwitchMap$org$apache$poi$ss$util$CellReference$NameType:[I

    invoke-virtual {v9}, Lorg/apache/poi/ss/util/CellReference$NameType;->ordinal()I

    move-result v13

    aget v1, v1, v13

    packed-switch v1, :pswitch_data_1

    .line 220
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected reference classification of \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :pswitch_0
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    check-cast v1, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    iget v13, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    move-object/from16 v0, p3

    invoke-interface {v1, v0, v13}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v8

    .line 205
    .local v8, "nm":Lorg/apache/poi/ss/formula/EvaluationName;
    invoke-interface {v8}, Lorg/apache/poi/ss/formula/EvaluationName;->isRange()Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Specified name \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' is not a range as expected."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-interface {v8}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v13

    invoke-virtual {v1, v13, p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    goto/16 :goto_0

    .line 215
    .end local v8    # "nm":Lorg/apache/poi/ss/formula/EvaluationName;
    :pswitch_2
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto/16 :goto_0

    .line 217
    :pswitch_3
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 218
    .local v7, "cr":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v13

    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v14

    invoke-direct {v1, v13, v14, v6}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    goto/16 :goto_0

    .line 222
    .end local v7    # "cr":Lorg/apache/poi/ss/util/CellReference;
    :cond_3
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v10

    .line 223
    .local v10, "part2refType":Lorg/apache/poi/ss/util/CellReference$NameType;
    sget-object v1, Lorg/apache/poi/ss/formula/OperationEvaluationContext$1;->$SwitchMap$org$apache$poi$ss$util$CellReference$NameType:[I

    invoke-virtual {v10}, Lorg/apache/poi/ss/util/CellReference$NameType;->ordinal()I

    move-result v13

    aget v1, v1, v13

    packed-switch v1, :pswitch_data_2

    .line 231
    if-eq v10, v9, :cond_4

    .line 233
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto/16 :goto_0

    .line 225
    :pswitch_4
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto/16 :goto_0

    .line 227
    :pswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot evaluate \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'. Indirect evaluation of defined names not supported yet"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_4
    sget-object v1, Lorg/apache/poi/ss/formula/OperationEvaluationContext$1;->$SwitchMap$org$apache$poi$ss$util$CellReference$NameType:[I

    invoke-virtual {v9}, Lorg/apache/poi/ss/util/CellReference$NameType;->ordinal()I

    move-result v13

    aget v1, v1, v13

    packed-switch v1, :pswitch_data_3

    .line 275
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected reference classification of \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :pswitch_6
    const/4 v2, 0x0

    .line 239
    .local v2, "firstRow":I
    sget-object v1, Lorg/apache/poi/ss/util/CellReference$NameType;->COLUMN:Lorg/apache/poi/ss/util/CellReference$NameType;

    invoke-virtual {v10, v1}, Lorg/apache/poi/ss/util/CellReference$NameType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    invoke-virtual {v12}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v4

    .line 242
    .local v4, "lastRow":I
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    move-result v3

    .line 243
    .local v3, "firstCol":I
    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    move-result v5

    .line 277
    .local v5, "lastCol":I
    :goto_1
    new-instance v1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    goto/16 :goto_0

    .line 246
    .end local v3    # "firstCol":I
    .end local v4    # "lastRow":I
    .end local v5    # "lastCol":I
    :cond_5
    invoke-virtual {v12}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v4

    .line 247
    .restart local v4    # "lastRow":I
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    move-result v3

    .line 248
    .restart local v3    # "firstCol":I
    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    move-result v5

    .line 250
    .restart local v5    # "lastCol":I
    goto :goto_1

    .line 253
    .end local v2    # "firstRow":I
    .end local v3    # "firstCol":I
    .end local v4    # "lastRow":I
    .end local v5    # "lastCol":I
    :pswitch_7
    const/4 v3, 0x0

    .line 254
    .restart local v3    # "firstCol":I
    sget-object v1, Lorg/apache/poi/ss/util/CellReference$NameType;->ROW:Lorg/apache/poi/ss/util/CellReference$NameType;

    invoke-virtual {v10, v1}, Lorg/apache/poi/ss/util/CellReference$NameType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 256
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    move-result v2

    .line 257
    .restart local v2    # "firstRow":I
    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    move-result v4

    .line 258
    .restart local v4    # "lastRow":I
    invoke-virtual {v12}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v5

    .restart local v5    # "lastCol":I
    goto :goto_1

    .line 260
    .end local v2    # "firstRow":I
    .end local v4    # "lastRow":I
    .end local v5    # "lastCol":I
    :cond_6
    invoke-virtual {v12}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v5

    .line 261
    .restart local v5    # "lastCol":I
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    move-result v2

    .line 262
    .restart local v2    # "firstRow":I
    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    move-result v4

    .line 264
    .restart local v4    # "lastRow":I
    goto :goto_1

    .line 267
    .end local v2    # "firstRow":I
    .end local v3    # "firstCol":I
    .end local v4    # "lastRow":I
    .end local v5    # "lastCol":I
    :pswitch_8
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 268
    .restart local v7    # "cr":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    .line 269
    .restart local v2    # "firstRow":I
    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    .line 270
    .restart local v3    # "firstCol":I
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    .end local v7    # "cr":Lorg/apache/poi/ss/util/CellReference;
    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v7    # "cr":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    .line 272
    .restart local v4    # "lastRow":I
    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    .line 273
    .restart local v5    # "lastCol":I
    goto :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 212
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 223
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 236
    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "nameXPtg"    # Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    .prologue
    .line 333
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getSheetRefIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v1

    .line 334
    .local v1, "externSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 336
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 345
    :goto_0
    return-object v3

    .line 340
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "workbookName":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getSheetRefIndex()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getNameIndex()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object v0

    .line 345
    .local v0, "externName":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    goto :goto_0
.end method

.method public getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "nameXPxg"    # Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    .prologue
    .line 348
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getExternalWorkbookNumber()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v1

    .line 349
    .local v1, "externSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 351
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 361
    :goto_0
    return-object v3

    .line 355
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "workbookName":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getNameName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getExternalWorkbookNumber()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object v0

    .line 361
    .local v0, "externName":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    goto :goto_0
.end method

.method public getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "rptg"    # Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .prologue
    .line 305
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    .line 306
    .local v0, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getColumn()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "rptg"    # Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    .prologue
    .line 309
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    .line 311
    .local v0, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getColumn()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public getRefEval(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    .line 302
    .local v0, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    .line 163
    .local v0, "sre":Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    new-instance v1, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    iget v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(ILorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    return-object v1
.end method

.method public getRowIndex()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_rowIndex:I

    return v0
.end method

.method public getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    return-object v0
.end method
