.class public final Lorg/apache/poi/ss/formula/WorkbookEvaluator;
.super Ljava/lang/Object;
.source "WorkbookEvaluator.java"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final EVAL_LOG:Lorg/apache/poi/util/POILogger;

.field private _cache:Lorg/apache/poi/ss/formula/EvaluationCache;

.field private _collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

.field private final _evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

.field private _ignoreMissingWorkbooks:Z

.field private final _sheetIndexesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _sheetIndexesBySheet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/poi/ss/formula/EvaluationSheet;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

.field private final _udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

.field private final _workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

.field private _workbookIx:I

.field private dbgEvaluationOutputForNextEval:Z

.field private dbgEvaluationOutputIndent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IEvaluationListener;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 3
    .param p1, "workbook"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .param p2, "evaluationListener"    # Lorg/apache/poi/ss/formula/IEvaluationListener;
    .param p3, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p4, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    .line 368
    iput-boolean v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    .line 371
    const-string v1, "POI.FormulaEval"

    invoke-static {v1}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/String;)Lorg/apache/poi/util/POILogger;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    .line 373
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 81
    iput-object p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 82
    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    .line 83
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v1, p2}, Lorg/apache/poi/ss/formula/EvaluationCache;-><init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    iput-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    .line 84
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    .line 85
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    .line 86
    sget-object v1, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    iput-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    .line 87
    iput v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    .line 88
    iput-object p3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    .line 90
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 92
    .local v0, "defaultToolkit":Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 93
    invoke-virtual {v0, p4}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 95
    :cond_0
    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    .line 96
    return-void

    .line 90
    .end local v0    # "defaultToolkit":Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .param p2, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p3, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IEvaluationListener;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 78
    return-void
.end method

.method private addExceptionInfo(Lorg/apache/poi/ss/formula/eval/NotImplementedException;III)Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .locals 8
    .param p1, "inner"    # Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I

    .prologue
    .line 329
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v2, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "sheetName":Ljava/lang/String;
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 331
    .local v0, "cr":Lorg/apache/poi/ss/util/CellReference;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error evaluating cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    invoke-direct {v2, v7, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/eval/NotImplementedException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 336
    .end local v0    # "cr":Lorg/apache/poi/ss/util/CellReference;
    .end local v1    # "sheetName":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    .end local p1    # "inner":Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    :goto_0
    return-object p1

    .line 333
    .restart local p1    # "inner":Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    :catch_0
    move-exception v6

    .line 335
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I
    .locals 4
    .param p0, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p1, "startIndex"    # I
    .param p2, "distInBytes"    # I

    .prologue
    .line 543
    move v1, p2

    .line 544
    .local v1, "remBytes":I
    move v0, p1

    .line 545
    .local v0, "index":I
    :cond_0
    if-eqz v1, :cond_2

    .line 546
    add-int/lit8 v0, v0, 0x1

    .line 547
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v2

    sub-int/2addr v1, v2

    .line 548
    if-gez v1, :cond_1

    .line 549
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bad skip distance (wrong token size calculation)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 551
    :cond_1
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 552
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Skip distance too far (ran out of formula tokens)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 555
    :cond_2
    sub-int v2, v0, p1

    return v2
.end method

.method public static dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p0, "evaluationResult"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcRowNum"    # I
    .param p2, "srcColNum"    # I

    .prologue
    .line 570
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 574
    .local v1, "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v1, v2, :cond_0

    .line 576
    sget-object v1, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 580
    .end local v1    # "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    :goto_0
    return-object v1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    goto :goto_0
.end method

.method private evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 27
    .param p1, "srcCell"    # Lorg/apache/poi/ss/formula/EvaluationCell;
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I
    .param p5, "tracker"    # Lorg/apache/poi/ss/formula/EvaluationTracker;

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    if-nez v6, :cond_2

    const/16 v26, 0x1

    .line 239
    .local v26, "shouldCellDependencyBeRecorded":Z
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 240
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    .line 241
    .local v11, "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    if-eqz v26, :cond_1

    .line 242
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    move-object/from16 v6, p5

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Lorg/apache/poi/ss/formula/EvaluationTracker;->acceptPlainValueDependency(IIIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 318
    .end local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    :goto_1
    return-object v11

    .line 237
    .end local v26    # "shouldCellDependencyBeRecorded":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-interface {v6, v0, v1, v2}, Lorg/apache/poi/ss/formula/IStabilityClassifier;->isCellFinal(III)Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v26, 0x1

    goto :goto_0

    :cond_3
    const/16 v26, 0x0

    goto :goto_0

    .line 247
    .restart local v26    # "shouldCellDependencyBeRecorded":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lorg/apache/poi/ss/formula/EvaluationCache;->getOrCreateFormulaCellEntry(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v19

    .line 248
    .local v19, "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-nez v26, :cond_5

    invoke-virtual/range {v19 .. v19}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->isInputSensitive()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 249
    :cond_5
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationTracker;->acceptFormulaDependency(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 251
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    move-object/from16 v22, v0

    .line 253
    .local v22, "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    if-nez v6, :cond_a

    .line 254
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationTracker;->startEvaluate(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 255
    sget-object v11, Lorg/apache/poi/ss/formula/eval/ErrorEval;->CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_1

    .line 257
    :cond_7
    new-instance v12, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-object/from16 v13, p0

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v12 .. v18}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    .line 261
    .local v12, "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-object/from16 v0, p1

    invoke-interface {v6, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v23

    .line 262
    .local v23, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-nez v22, :cond_8

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    .line 270
    .restart local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lorg/apache/poi/ss/formula/EvaluationTracker;->updateCacheResult(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/NotImplementedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationTracker;->endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 309
    .end local v23    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_3
    invoke-static {}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->isDebugLogEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object v25

    .line 311
    .local v25, "sheetName":Ljava/lang/String;
    new-instance v20, Lorg/apache/poi/ss/util/CellReference;

    move-object/from16 v0, v20

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 312
    .local v20, "cr":Lorg/apache/poi/ss/util/CellReference;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Evaluated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 265
    .end local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v20    # "cr":Lorg/apache/poi/ss/util/CellReference;
    .end local v25    # "sheetName":Ljava/lang/String;
    .restart local v23    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_8
    :try_start_1
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onStartEvaluate(Lorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    .line 267
    .restart local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v11}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onEndEvaluate(Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/NotImplementedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 272
    .end local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v23    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :catch_0
    move-exception v21

    .line 273
    .local v21, "e":Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->addExceptionInfo(Lorg/apache/poi/ss/formula/eval/NotImplementedException;III)Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    .end local v21    # "e":Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    :catchall_0
    move-exception v6

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationTracker;->endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    throw v6

    .line 274
    :catch_1
    move-exception v24

    .line 275
    .local v24, "re":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    if-eqz v6, :cond_9

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - Continuing with cached value!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->logInfo(Ljava/lang/String;)V

    .line 277
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCachedFormulaResultType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 295
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected cell type \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' found!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 279
    :pswitch_1
    new-instance v11, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide v6

    invoke-direct {v11, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    .restart local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_4
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationTracker;->endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    goto/16 :goto_3

    .line 282
    .end local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :pswitch_2
    :try_start_4
    new-instance v11, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    .line 283
    .restart local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_4

    .line 285
    .end local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :pswitch_3
    sget-object v11, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    .line 286
    .restart local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_4

    .line 288
    .end local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v11

    .line 289
    .restart local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_4

    .line 291
    .end local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v11

    .line 292
    .restart local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_4

    .line 298
    .end local v11    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_9
    throw v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 304
    .end local v12    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v24    # "re":Ljava/lang/RuntimeException;
    :cond_a
    if-eqz v22, :cond_b

    .line 305
    invoke-virtual/range {v19 .. v19}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    move-object/from16 v0, v22

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v0, v1, v2, v3, v6}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onCacheHit(IIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 307
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    goto/16 :goto_1

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "nameRecord"    # Lorg/apache/poi/ss/formula/EvaluationName;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 675
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->isFunctionName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    new-instance v0, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    .line 679
    :goto_0
    return-object v0

    .line 678
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->hasFormula()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 682
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t now how to evalate name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 593
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 595
    check-cast v1, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    .line 596
    .local v1, "namePtg":Lorg/apache/poi/ss/formula/ptg/NamePtg;
    iget-object v4, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v4, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v2

    .line 597
    .local v2, "nameRecord":Lorg/apache/poi/ss/formula/EvaluationName;
    invoke-direct {p0, v2, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 648
    .end local v1    # "namePtg":Lorg/apache/poi/ss/formula/ptg/NamePtg;
    .end local v2    # "nameRecord":Lorg/apache/poi/ss/formula/EvaluationName;
    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_0
    return-object v4

    .line 599
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    if-eqz v4, :cond_1

    .line 601
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    goto :goto_0

    .line 603
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    if-eqz v4, :cond_2

    .line 605
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    goto :goto_0

    .line 608
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_2
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v4, :cond_3

    .line 609
    new-instance v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v5

    int-to-double v6, v5

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0

    .line 611
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_3
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v4, :cond_4

    .line 612
    new-instance v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0

    .line 614
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_4
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    if-eqz v4, :cond_5

    .line 615
    new-instance v4, Lorg/apache/poi/ss/formula/eval/StringEval;

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/StringPtg;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_5
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    if-eqz v4, :cond_6

    .line 618
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->getValue()Z

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v4

    goto :goto_0

    .line 620
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_6
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    if-eqz v4, :cond_7

    .line 621
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_0

    .line 623
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_7
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;

    if-eqz v4, :cond_8

    .line 624
    sget-object v4, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    goto :goto_0

    .line 626
    :cond_8
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-nez v4, :cond_9

    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    if-nez v4, :cond_9

    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    if-nez v4, :cond_9

    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    if-eqz v4, :cond_a

    .line 628
    :cond_9
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto/16 :goto_0

    .line 630
    :cond_a
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v4, :cond_b

    .line 631
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    goto/16 :goto_0

    .line 633
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_b
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v4, :cond_c

    .line 634
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    goto/16 :goto_0

    .line 636
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_c
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v4, :cond_d

    .line 637
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    goto/16 :goto_0

    .line 639
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_d
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v4, :cond_e

    .line 640
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    goto/16 :goto_0

    .line 642
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_e
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v4, :cond_f

    move-object v3, p1

    .line 643
    check-cast v3, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    .line 644
    .local v3, "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/RefPtg;->getRow()I

    move-result v4

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/RefPtg;->getColumn()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEval(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    goto/16 :goto_0

    .line 646
    .end local v3    # "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    :cond_f
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v4, :cond_10

    move-object v0, p1

    .line 647
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    .line 648
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstRow()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstColumn()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastRow()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastColumn()I

    move-result v7

    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getAreaEval(IIII)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    goto/16 :goto_0

    .line 651
    .end local v0    # "aptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    :cond_10
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/UnknownPtg;

    if-eqz v4, :cond_11

    .line 655
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "UnknownPtg not allowed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 657
    :cond_11
    instance-of v4, p1, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    if-eqz v4, :cond_12

    .line 660
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ExpPtg currently not supported"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 663
    :cond_12
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected ptg class ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getNotSupportedFunctionNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 747
    .local v0, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->getNotSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 748
    invoke-static {}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->getNotSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 749
    return-object v0
.end method

.method private getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 4
    .param p1, "sheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;

    .prologue
    .line 191
    iget-object v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 192
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 193
    iget-object v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v2, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v1

    .line 194
    .local v1, "sheetIndex":I
    if-gez v1, :cond_0

    .line 195
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Specified sheet from a different book"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 198
    iget-object v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v1    # "sheetIndex":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public static getSupportedFunctionNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 735
    .local v0, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->getSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 736
    invoke-static {}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->getSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 737
    return-object v0
.end method

.method static getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p0, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .prologue
    .line 345
    if-nez p0, :cond_0

    .line 346
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    .line 359
    :goto_0
    return-object v1

    .line 348
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v0

    .line 349
    .local v0, "cellType":I
    packed-switch v0, :pswitch_data_0

    .line 361
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cell type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :pswitch_1
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0

    .line 353
    :pswitch_2
    new-instance v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :pswitch_3
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v1

    goto :goto_0

    .line 357
    :pswitch_4
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    goto :goto_0

    .line 359
    :pswitch_5
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static isDebugLogEnabled()Z
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    return v0
.end method

.method private static isInfoLogEnabled()Z
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    return v0
.end method

.method private static logDebug(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method private static logInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->isInfoLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method

.method private processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 667
    instance-of v1, p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    if-eqz v1, :cond_0

    .line 668
    check-cast p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    .end local p1    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->getName()Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    .line 669
    .local v0, "name":Lorg/apache/poi/ss/formula/EvaluationName;
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    .line 671
    .end local v0    # "name":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_0
    return-object p1
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "func"    # Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .prologue
    .line 761
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 762
    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Function;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "func"    # Lorg/apache/poi/ss/formula/functions/Function;

    .prologue
    .line 773
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 774
    return-void
.end method


# virtual methods
.method attachToEnvironment(Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;Lorg/apache/poi/ss/formula/EvaluationCache;I)V
    .locals 0
    .param p1, "collaboratingWorkbooksEnvironment"    # Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;
    .param p2, "cache"    # Lorg/apache/poi/ss/formula/EvaluationCache;
    .param p3, "workbookIx"    # I

    .prologue
    .line 135
    iput-object p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    .line 136
    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    .line 137
    iput p3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    .line 138
    return-void
.end method

.method public clearAllCachedResultValues()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationCache;->clear()V

    .line 170
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 171
    return-void
.end method

.method detachFromEnvironment()V
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    .line 149
    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationCache;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationCache;-><init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    .line 151
    return-void
.end method

.method public evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcCell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .prologue
    .line 204
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v2

    .line 205
    .local v2, "sheetIndex":I
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v4

    new-instance v5, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v5, v0}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 31
    .param p1, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .param p2, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .prologue
    .line 378
    const-string v5, ""

    .line 379
    .local v5, "dbgIndentStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 381
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 382
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    .line 384
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    move/from16 v25, v0

    if-lez v25, :cond_1

    .line 387
    const-string v5, "                                                                                                    "

    .line 388
    const/16 v25, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x2

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "- evaluateFormula(\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetNameRange()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    new-instance v28, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v29

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v30

    invoke-direct/range {v28 .. v30}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual/range {v28 .. v28}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "): "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "\\Qorg.apache.poi.ss.formula.ptg.\\E"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 393
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 396
    :cond_1
    new-instance v22, Ljava/util/Stack;

    invoke-direct/range {v22 .. v22}, Ljava/util/Stack;-><init>()V

    .line 397
    .local v22, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/apache/poi/ss/formula/eval/ValueEval;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    move-object/from16 v0, p2

    array-length v10, v0

    .local v10, "iSize":I
    :goto_0
    if-ge v9, v10, :cond_d

    .line 400
    aget-object v20, p2, v9

    .line 401
    .local v20, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    move/from16 v25, v0

    if-lez v25, :cond_2

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "  * ptg "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 404
    :cond_2
    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v4, v20

    .line 405
    check-cast v4, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 406
    .local v4, "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 409
    sget-object v20, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 411
    :cond_3
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedChoose()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 412
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 413
    .local v3, "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getJumpTable()[I

    move-result-object v12

    .line 415
    .local v12, "jumpTable":[I
    array-length v13, v12

    .line 417
    .local v13, "nChoices":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v3, v0, v1}, Lorg/apache/poi/ss/formula/functions/Choose;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v23

    .line 418
    .local v23, "switchIndex":I
    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_4

    move/from16 v0, v23

    if-le v0, v13, :cond_6

    .line 419
    :cond_4
    sget-object v25, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getChooseFuncOffset()I
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    add-int/lit8 v6, v25, 0x4

    .line 430
    .end local v23    # "switchIndex":I
    .local v6, "dist":I
    :goto_1
    mul-int/lit8 v25, v13, 0x2

    add-int/lit8 v25, v25, 0x2

    sub-int v6, v6, v25

    .line 431
    move-object/from16 v0, p2

    invoke-static {v0, v9, v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v25

    add-int v9, v9, v25

    .line 397
    .end local v3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .end local v6    # "dist":I
    .end local v12    # "jumpTable":[I
    .end local v13    # "nChoices":I
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 422
    .restart local v3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v4    # "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .restart local v12    # "jumpTable":[I
    .restart local v13    # "nChoices":I
    .restart local v23    # "switchIndex":I
    :cond_6
    add-int/lit8 v25, v23, -0x1

    :try_start_1
    aget v6, v12, v25
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6    # "dist":I
    goto :goto_1

    .line 424
    .end local v6    # "dist":I
    .end local v23    # "switchIndex":I
    :catch_0
    move-exception v7

    .line 425
    .local v7, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getChooseFuncOffset()I

    move-result v25

    add-int/lit8 v6, v25, 0x4

    .restart local v6    # "dist":I
    goto :goto_1

    .line 434
    .end local v3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v6    # "dist":I
    .end local v7    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .end local v12    # "jumpTable":[I
    .end local v13    # "nChoices":I
    :cond_7
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedIf()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 435
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 438
    .restart local v3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v3, v0, v1}, Lorg/apache/poi/ss/formula/functions/IfFunc;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    .line 448
    .local v8, "evaluatedPredicate":Z
    if-nez v8, :cond_5

    .line 451
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v6

    .line 452
    .restart local v6    # "dist":I
    move-object/from16 v0, p2

    invoke-static {v0, v9, v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v25

    add-int v9, v9, v25

    .line 453
    add-int/lit8 v25, v9, 0x1

    aget-object v14, p2, v25

    .line 454
    .local v14, "nextPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    aget-object v25, p2, v9

    move-object/from16 v0, v25

    instance-of v0, v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    instance-of v0, v14, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    check-cast v14, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    .end local v14    # "nextPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v14}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->getFunctionIndex()S

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 459
    add-int/lit8 v9, v9, 0x1

    .line 460
    sget-object v25, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 439
    .end local v6    # "dist":I
    .end local v8    # "evaluatedPredicate":Z
    :catch_1
    move-exception v7

    .line 440
    .restart local v7    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v6

    .line 442
    .restart local v6    # "dist":I
    move-object/from16 v0, p2

    invoke-static {v0, v9, v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v25

    add-int v9, v9, v25

    .line 443
    aget-object v4, p2, v9

    .end local v4    # "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    check-cast v4, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 444
    .restart local v4    # "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v25

    add-int/lit8 v6, v25, 0x1

    .line 445
    move-object/from16 v0, p2

    invoke-static {v0, v9, v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v25

    add-int v9, v9, v25

    .line 446
    goto/16 :goto_2

    .line 465
    .end local v3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v6    # "dist":I
    .end local v7    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_8
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSkip()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 466
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v25

    add-int/lit8 v6, v25, 0x1

    .line 467
    .restart local v6    # "dist":I
    move-object/from16 v0, p2

    invoke-static {v0, v9, v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v25

    add-int v9, v9, v25

    .line 468
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v25

    sget-object v26, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 469
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 470
    sget-object v25, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 475
    .end local v4    # "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .end local v6    # "dist":I
    :cond_9
    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    move/from16 v25, v0

    if-nez v25, :cond_5

    .line 479
    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    move/from16 v25, v0

    if-nez v25, :cond_5

    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    move/from16 v25, v0

    if-nez v25, :cond_5

    .line 483
    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    move/from16 v25, v0

    if-nez v25, :cond_5

    .line 488
    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    move/from16 v25, v0

    if-eqz v25, :cond_b

    move-object/from16 v18, v20

    .line 489
    check-cast v18, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 491
    .local v18, "optg":Lorg/apache/poi/ss/formula/ptg/OperationPtg;
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    move/from16 v25, v0

    if-nez v25, :cond_5

    .line 494
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->getNumberOfOperands()I

    move-result v15

    .line 495
    .local v15, "numops":I
    new-array v0, v15, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object/from16 v17, v0

    .line 498
    .local v17, "ops":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    add-int/lit8 v11, v15, -0x1

    .local v11, "j":I
    :goto_3
    if-ltz v11, :cond_a

    .line 499
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 500
    .local v19, "p":Lorg/apache/poi/ss/formula/eval/ValueEval;
    aput-object v19, v17, v11

    .line 498
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 503
    .end local v19    # "p":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_a
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->evaluate(Lorg/apache/poi/ss/formula/ptg/OperationPtg;[Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v16

    .line 507
    .end local v11    # "j":I
    .end local v15    # "numops":I
    .end local v17    # "ops":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v18    # "optg":Lorg/apache/poi/ss/formula/ptg/OperationPtg;
    .local v16, "opResult":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_4
    if-nez v16, :cond_c

    .line 508
    new-instance v25, Ljava/lang/RuntimeException;

    const-string v26, "Evaluation result must not be null"

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 505
    .end local v16    # "opResult":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v16

    .restart local v16    # "opResult":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_4

    .line 511
    :cond_c
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    move/from16 v25, v0

    if-lez v25, :cond_5

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 517
    .end local v16    # "opResult":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v20    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_d
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 518
    .local v24, "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_e

    .line 519
    new-instance v25, Ljava/lang/IllegalStateException;

    const-string v26, "evaluation stack not empty"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 521
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v26

    invoke-static/range {v24 .. v26}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v21

    .line 522
    .local v21, "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    move/from16 v25, v0

    if-lez v25, :cond_f

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "finshed eval of "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    new-instance v28, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v29

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v30

    invoke-direct/range {v28 .. v30}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual/range {v28 .. v28}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 526
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 527
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 529
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 532
    :cond_f
    return-object v21
.end method

.method evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 689
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 690
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 692
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0
.end method

.method evaluateReference(Lorg/apache/poi/ss/formula/EvaluationSheet;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "sheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I
    .param p5, "tracker"    # Lorg/apache/poi/ss/formula/EvaluationTracker;

    .prologue
    .line 701
    invoke-interface {p1, p3, p4}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v1

    .local v1, "cell":Lorg/apache/poi/ss/formula/EvaluationCell;
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 702
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 705
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v0

    return-object v0
.end method

.method getEnvironment()Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    return-object v0
.end method

.method getEvaluationListener()Lorg/apache/poi/ss/formula/IEvaluationListener;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    return-object v0
.end method

.method getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheetIndex"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    .line 115
    .local v0, "evalName":Lorg/apache/poi/ss/formula/EvaluationName;
    return-object v0
.end method

.method getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 1
    .param p1, "workbookName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->getWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v0

    return-object v0
.end method

.method getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1
    .param p1, "sheetIndex"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    return-object v0
.end method

.method getSheetIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "sheetName"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 214
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 215
    iget-object v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v2, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, "sheetIndex":I
    if-gez v1, :cond_0

    .line 217
    const/4 v2, -0x1

    .line 222
    .end local v1    # "sheetIndex":I
    :goto_0
    return v2

    .line 219
    .restart local v1    # "sheetIndex":I
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .end local v1    # "sheetIndex":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method getSheetIndexByExternIndex(I)I
    .locals 1
    .param p1, "externSheetIndex"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->convertFromExternSheetIndex(I)I

    move-result v0

    return v0
.end method

.method getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    return-object v0
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .prologue
    .line 186
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    .line 187
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    iget v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    invoke-virtual {v1, v2, v0, p1}, Lorg/apache/poi/ss/formula/EvaluationCache;->notifyDeleteCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 188
    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .prologue
    .line 178
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    .line 179
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    iget v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    invoke-virtual {v1, v2, v0, p1}, Lorg/apache/poi/ss/formula/EvaluationCache;->notifyUpdateCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 180
    return-void
.end method

.method public setDebugEvaluationOutputForNextEval(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 777
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    .line 778
    return-void
.end method

.method public setIgnoreMissingWorkbooks(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 725
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    .line 726
    return-void
.end method
