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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _sheetIndexesBySheet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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

    .line 57
    const-class v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IEvaluationListener;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2
    .param p1, "workbook"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .param p2, "evaluationListener"    # Lorg/apache/poi/ss/formula/IEvaluationListener;
    .param p3, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p4, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    .line 368
    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

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
    iput v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    .line 88
    iput-object p3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    .line 90
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    .line 92
    .local v0, "defaultToolkit":Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 93
    invoke-virtual {v0, p4}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 95
    :cond_1
    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .param p2, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p3, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IEvaluationListener;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 78
    return-void
.end method

.method private addExceptionInfo(Lorg/apache/poi/ss/formula/eval/NotImplementedException;III)Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .locals 7
    .param p1, "inner"    # Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I

    .line 329
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "sheetName":Ljava/lang/String;
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v3, p3

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 331
    .local v0, "cr":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error evaluating cell "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    invoke-direct {v3, v1, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/eval/NotImplementedException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 333
    .end local v0    # "cr":Lorg/apache/poi/ss/util/CellReference;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "sheetName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    return-object p1
.end method

.method private static countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I
    .locals 4
    .param p0, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p1, "startIndex"    # I
    .param p2, "distInBytes"    # I

    .line 543
    move v0, p2

    .line 544
    .local v0, "remBytes":I
    move v1, p1

    .line 545
    .local v1, "index":I
    :goto_0
    if-eqz v0, :cond_2

    .line 546
    add-int/lit8 v1, v1, 0x1

    .line 547
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v2

    sub-int/2addr v0, v2

    .line 548
    if-ltz v0, :cond_1

    .line 551
    array-length v2, p0

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Skip distance too far (ran out of formula tokens)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 549
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bad skip distance (wrong token size calculation)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 555
    :cond_2
    sub-int v2, v1, p1

    return v2
.end method

.method public static dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p0, "evaluationResult"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcRowNum"    # I
    .param p2, "srcColNum"    # I

    .line 570
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .local v0, "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 574
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v0, v1, :cond_0

    .line 576
    sget-object v1, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    return-object v1

    .line 580
    :cond_0
    return-object v0

    .line 571
    .end local v0    # "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 572
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method private evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 17
    .param p1, "srcCell"    # Lorg/apache/poi/ss/formula/EvaluationCell;
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I
    .param p5, "tracker"    # Lorg/apache/poi/ss/formula/EvaluationTracker;

    .line 237
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    iget-object v0, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v0, v10, v11, v12}, Lorg/apache/poi/ss/formula/IStabilityClassifier;->isCellFinal(III)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v15, v0

    .line 239
    .local v15, "shouldCellDependencyBeRecorded":Z
    if-eqz v9, :cond_10

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    move/from16 v16, v15

    goto/16 :goto_8

    .line 247
    :cond_2
    iget-object v0, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-virtual {v0, v9}, Lorg/apache/poi/ss/formula/EvaluationCache;->getOrCreateFormulaCellEntry(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v7

    .line 248
    .local v7, "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-nez v15, :cond_3

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->isInputSensitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    :cond_3
    invoke-virtual {v13, v7}, Lorg/apache/poi/ss/formula/EvaluationTracker;->acceptFormulaDependency(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 251
    :cond_4
    iget-object v6, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    .line 253
    .local v6, "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    if-nez v0, :cond_e

    .line 254
    invoke-virtual {v13, v7}, Lorg/apache/poi/ss/formula/EvaluationTracker;->startEvaluate(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 255
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 257
    :cond_5
    new-instance v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    iget-object v3, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v14, v6

    .end local v6    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .local v14, "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    move/from16 v6, p4

    move/from16 v16, v15

    move-object v15, v7

    .end local v7    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .local v15, "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .local v16, "shouldCellDependencyBeRecorded":Z
    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    .line 261
    .local v1, "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, v9}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 262
    .local v0, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-nez v14, :cond_6

    .line 263
    invoke-virtual {v8, v1, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .local v2, "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_2

    .line 265
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_6
    invoke-interface {v14, v9, v15}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onStartEvaluate(Lorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    .line 266
    invoke-virtual {v8, v1, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/NotImplementedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_1
    invoke-interface {v14, v15, v2}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onEndEvaluate(Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 270
    :goto_2
    invoke-virtual {v13, v2}, Lorg/apache/poi/ss/formula/EvaluationTracker;->updateCacheResult(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/NotImplementedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    .end local v0    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_3
    invoke-virtual {v13, v15}, Lorg/apache/poi/ss/formula/EvaluationTracker;->endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 302
    goto/16 :goto_5

    .line 274
    :catch_0
    move-exception v0

    goto :goto_4

    .line 272
    :catch_1
    move-exception v0

    goto/16 :goto_6

    .line 301
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catchall_0
    move-exception v0

    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto/16 :goto_7

    .line 274
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_2
    move-exception v0

    .line 275
    .local v0, "re":Ljava/lang/RuntimeException;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;

    if-eqz v3, :cond_d

    iget-boolean v3, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    if-eqz v3, :cond_d

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - Continuing with cached value!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->logInfo(Ljava/lang/String;)V

    .line 277
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCachedFormulaResultType()I

    move-result v3

    if-eqz v3, :cond_b

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 291
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    move-object v2, v3

    .line 292
    goto :goto_3

    .line 295
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected cell type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\' found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .end local v16    # "shouldCellDependencyBeRecorded":Z
    .end local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .end local p2    # "sheetIndex":I
    .end local p3    # "rowIndex":I
    .end local p4    # "columnIndex":I
    .end local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    throw v3

    .line 288
    .restart local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .restart local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .restart local v16    # "shouldCellDependencyBeRecorded":Z
    .restart local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .restart local p2    # "sheetIndex":I
    .restart local p3    # "rowIndex":I
    .restart local p4    # "columnIndex":I
    .restart local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v3

    move-object v2, v3

    .line 289
    goto :goto_3

    .line 285
    :cond_9
    sget-object v3, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    move-object v2, v3

    .line 286
    goto :goto_3

    .line 282
    :cond_a
    new-instance v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 283
    goto/16 :goto_3

    .line 279
    :cond_b
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .line 280
    goto/16 :goto_3

    .line 303
    .end local v0    # "re":Ljava/lang/RuntimeException;
    .end local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    :goto_5
    nop

    .line 309
    invoke-static {}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 310
    invoke-virtual {v8, v10}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "sheetName":Ljava/lang/String;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v11, v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 312
    .local v1, "cr":Lorg/apache/poi/ss/util/CellReference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Evaluated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->logDebug(Ljava/lang/String;)V

    .line 318
    .end local v0    # "sheetName":Ljava/lang/String;
    .end local v1    # "cr":Lorg/apache/poi/ss/util/CellReference;
    :cond_c
    return-object v2

    .line 298
    .local v0, "re":Ljava/lang/RuntimeException;
    .local v1, "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    :cond_d
    nop

    .end local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .end local v16    # "shouldCellDependencyBeRecorded":Z
    .end local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .end local p2    # "sheetIndex":I
    .end local p3    # "rowIndex":I
    .end local p4    # "columnIndex":I
    .end local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    :try_start_3
    throw v0

    .line 272
    .end local v0    # "re":Ljava/lang/RuntimeException;
    .restart local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .restart local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .restart local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .restart local v16    # "shouldCellDependencyBeRecorded":Z
    .restart local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .restart local p2    # "sheetIndex":I
    .restart local p3    # "rowIndex":I
    .restart local p4    # "columnIndex":I
    .restart local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    :catch_3
    move-exception v0

    .line 273
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_6
    invoke-direct {v8, v0, v10, v11, v12}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->addExceptionInfo(Lorg/apache/poi/ss/formula/eval/NotImplementedException;III)Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    move-result-object v3

    .end local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .end local v16    # "shouldCellDependencyBeRecorded":Z
    .end local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .end local p2    # "sheetIndex":I
    .end local p3    # "rowIndex":I
    .end local p4    # "columnIndex":I
    .end local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 301
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .restart local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .restart local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .restart local v16    # "shouldCellDependencyBeRecorded":Z
    .restart local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .restart local p2    # "sheetIndex":I
    .restart local p3    # "rowIndex":I
    .restart local p4    # "columnIndex":I
    .restart local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    :catchall_1
    move-exception v0

    :goto_7
    invoke-virtual {v13, v15}, Lorg/apache/poi/ss/formula/EvaluationTracker;->endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    throw v0

    .line 304
    .end local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v16    # "shouldCellDependencyBeRecorded":Z
    .restart local v6    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .restart local v7    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .local v15, "shouldCellDependencyBeRecorded":Z
    :cond_e
    move-object v14, v6

    move/from16 v16, v15

    move-object v15, v7

    .end local v6    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v7    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .restart local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .local v15, "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .restart local v16    # "shouldCellDependencyBeRecorded":Z
    if-eqz v14, :cond_f

    .line 305
    invoke-virtual {v15}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-interface {v14, v10, v11, v12, v0}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onCacheHit(IIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 307
    :cond_f
    invoke-virtual {v15}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 239
    .end local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v16    # "shouldCellDependencyBeRecorded":Z
    .local v15, "shouldCellDependencyBeRecorded":Z
    :cond_10
    move/from16 v16, v15

    .line 240
    .end local v15    # "shouldCellDependencyBeRecorded":Z
    .restart local v16    # "shouldCellDependencyBeRecorded":Z
    :goto_8
    invoke-static/range {p1 .. p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 241
    .local v0, "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    if-eqz v16, :cond_11

    .line 242
    iget v2, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    move-object/from16 v1, p5

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/EvaluationTracker;->acceptPlainValueDependency(IIIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 244
    :cond_11
    return-object v0
.end method

.method private getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "nameRecord"    # Lorg/apache/poi/ss/formula/EvaluationName;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 675
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->isFunctionName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    new-instance v0, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

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

    return-object v0

    .line 682
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t now how to evalate name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 593
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    if-eqz v0, :cond_0

    .line 595
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    .line 596
    .local v0, "namePtg":Lorg/apache/poi/ss/formula/ptg/NamePtg;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v1

    .line 597
    .local v1, "nameRecord":Lorg/apache/poi/ss/formula/EvaluationName;
    invoke-direct {p0, v1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    return-object v2

    .line 599
    .end local v0    # "namePtg":Lorg/apache/poi/ss/formula/ptg/NamePtg;
    .end local v1    # "nameRecord":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    if-eqz v0, :cond_1

    .line 601
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 603
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    if-eqz v0, :cond_2

    .line 605
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 608
    :cond_2
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v0, :cond_3

    .line 609
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v1

    int-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 611
    :cond_3
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v0, :cond_4

    .line 612
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 614
    :cond_4
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    if-eqz v0, :cond_5

    .line 615
    new-instance v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/StringPtg;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 617
    :cond_5
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    if-eqz v0, :cond_6

    .line 618
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->getValue()Z

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v0

    return-object v0

    .line 620
    :cond_6
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    if-eqz v0, :cond_7

    .line 621
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    return-object v0

    .line 623
    :cond_7
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;

    if-eqz v0, :cond_8

    .line 624
    sget-object v0, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    return-object v0

    .line 626
    :cond_8
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-nez v0, :cond_12

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    if-nez v0, :cond_12

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    if-nez v0, :cond_12

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    if-eqz v0, :cond_9

    goto/16 :goto_0

    .line 630
    :cond_9
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_a

    .line 631
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 633
    :cond_a
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_b

    .line 634
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 636
    :cond_b
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_c

    .line 637
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 639
    :cond_c
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_d

    .line 640
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 642
    :cond_d
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v0, :cond_e

    .line 643
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    .line 644
    .local v0, "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/RefPtg;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/RefPtg;->getColumn()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEval(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 646
    .end local v0    # "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    :cond_e
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v0, :cond_f

    .line 647
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    .line 648
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstColumn()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastRow()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastColumn()I

    move-result v4

    invoke-virtual {p2, v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getAreaEval(IIII)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 651
    .end local v0    # "aptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    :cond_f
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/UnknownPtg;

    if-nez v0, :cond_11

    .line 657
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    if-eqz v0, :cond_10

    .line 660
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ExpPtg currently not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ptg class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UnknownPtg not allowed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_12
    :goto_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method

.method public static getNotSupportedFunctionNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

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

    .line 191
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 192
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 193
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v1

    .line 194
    .local v1, "sheetIndex":I
    if-ltz v1, :cond_0

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 198
    iget-object v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Specified sheet from a different book"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    .end local v1    # "sheetIndex":I
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getSupportedFunctionNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

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

    .line 345
    if-nez p0, :cond_0

    .line 346
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object v0

    .line 348
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()I

    move-result v0

    .line 349
    .local v0, "cellType":I
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 359
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1

    .line 361
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cell type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v1

    return-object v1

    .line 357
    :cond_3
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object v1

    .line 353
    :cond_4
    new-instance v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 351
    :cond_5
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v1
.end method

.method private static isDebugLogEnabled()Z
    .locals 2

    .line 119
    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    return v0
.end method

.method private static isInfoLogEnabled()Z
    .locals 2

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

    .line 667
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    if-eqz v0, :cond_0

    .line 668
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->getName()Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    .line 669
    .local v0, "name":Lorg/apache/poi/ss/formula/EvaluationName;
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 671
    .end local v0    # "name":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_0
    return-object p1
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "func"    # Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 761
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 762
    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Function;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "func"    # Lorg/apache/poi/ss/formula/functions/Function;

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
    .locals 7
    .param p1, "srcCell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 204
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    .line 205
    .local v0, "sheetIndex":I
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v5

    new-instance v6, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v6, v1}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1
.end method

.method evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 11

    .line 378
    nop

    .line 379
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 381
    iput v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 382
    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    .line 384
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    const-string v3, ""

    if-lez v0, :cond_1

    .line 387
    const-string v0, "                                                                                                    "

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-object v4, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "- evaluateFormula(\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetNameRange()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v8

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\Qorg.apache.poi.ss.formula.ptg.\\E"

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 393
    iget v3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    move-object v3, v0

    .line 396
    :cond_1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 397
    array-length v4, p2

    :goto_0
    const-string v5, ": "

    const/4 v6, 0x3

    if-ge v1, v4, :cond_13

    .line 400
    aget-object v7, p2, v1

    .line 401
    iget v8, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    if-lez v8, :cond_2

    .line 402
    iget-object v8, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  * ptg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v6, v5}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 404
    :cond_2
    instance-of v5, v7, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v5, :cond_a

    .line 405
    move-object v5, v7

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 406
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 409
    sget-object v7, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 411
    :cond_3
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedChoose()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 412
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 413
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getJumpTable()[I

    move-result-object v7

    .line 415
    array-length v8, v7

    .line 417
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v9

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v10

    invoke-static {v6, v9, v10}, Lorg/apache/poi/ss/formula/functions/Choose;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v6

    .line 418
    if-lt v6, v2, :cond_5

    if-le v6, v8, :cond_4

    goto :goto_1

    .line 422
    :cond_4
    add-int/lit8 v6, v6, -0x1

    aget v5, v7, v6

    goto :goto_2

    .line 419
    :cond_5
    :goto_1
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getChooseFuncOffset()I

    move-result v5
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x4

    .line 427
    :goto_2
    goto :goto_3

    .line 424
    :catch_0
    move-exception v6

    .line 425
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getChooseFuncOffset()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    .line 430
    :goto_3
    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x2

    sub-int/2addr v5, v8

    .line 431
    invoke-static {p2, v1, v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v5

    add-int/2addr v1, v5

    .line 432
    goto/16 :goto_6

    .line 434
    :cond_6
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedIf()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 435
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 438
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v7

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v8

    invoke-static {v6, v7, v8}, Lorg/apache/poi/ss/formula/functions/IfFunc;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z

    move-result v6
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    nop

    .line 448
    if-eqz v6, :cond_7

    goto/16 :goto_6

    .line 451
    :cond_7
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v5

    .line 452
    invoke-static {p2, v1, v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v5

    add-int/2addr v1, v5

    .line 453
    add-int/lit8 v5, v1, 0x1

    aget-object v6, p2, v5

    .line 454
    aget-object v7, p2, v1

    instance-of v7, v7, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v7, :cond_8

    instance-of v7, v6, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    if-eqz v7, :cond_8

    check-cast v6, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->getFunctionIndex()S

    move-result v6

    if-ne v6, v2, :cond_8

    .line 459
    nop

    .line 460
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    .line 463
    :cond_8
    goto/16 :goto_6

    .line 439
    :catch_1
    move-exception v6

    .line 440
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v5

    .line 442
    invoke-static {p2, v1, v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v5

    add-int/2addr v1, v5

    .line 443
    aget-object v5, p2, v1

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 444
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v5

    add-int/2addr v5, v2

    .line 445
    invoke-static {p2, v1, v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v5

    add-int/2addr v1, v5

    .line 446
    goto/16 :goto_6

    .line 465
    :cond_9
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSkip()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 466
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v5

    add-int/2addr v5, v2

    .line 467
    invoke-static {p2, v1, v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v5

    add-int/2addr v1, v5

    .line 468
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v5, v6, :cond_12

    .line 469
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 470
    sget-object v5, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 475
    :cond_a
    instance-of v5, v7, Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    if-eqz v5, :cond_b

    .line 477
    goto :goto_6

    .line 479
    :cond_b
    instance-of v5, v7, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v5, :cond_12

    instance-of v5, v7, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-eqz v5, :cond_c

    .line 481
    goto :goto_6

    .line 483
    :cond_c
    instance-of v5, v7, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    if-eqz v5, :cond_d

    .line 484
    goto :goto_6

    .line 488
    :cond_d
    instance-of v5, v7, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-eqz v5, :cond_10

    .line 489
    check-cast v7, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 491
    instance-of v5, v7, Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    if-eqz v5, :cond_e

    goto :goto_6

    .line 494
    :cond_e
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->getNumberOfOperands()I

    move-result v5

    .line 495
    new-array v8, v5, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 498
    sub-int/2addr v5, v2

    :goto_4
    if-ltz v5, :cond_f

    .line 499
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 500
    aput-object v9, v8, v5

    .line 498
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 503
    :cond_f
    invoke-static {v7, v8, p1}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->evaluate(Lorg/apache/poi/ss/formula/ptg/OperationPtg;[Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    .line 504
    goto :goto_5

    .line 505
    :cond_10
    invoke-direct {p0, v7, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    .line 507
    :goto_5
    if-eqz v5, :cond_11

    .line 511
    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget v7, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    if-lez v7, :cond_12

    .line 513
    iget-object v7, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto :goto_6

    .line 508
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Evaluation result must not be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_12
    :goto_6
    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 517
    :cond_13
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 518
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 521
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p2

    .line 522
    iget v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    if-lez v0, :cond_14

    .line 523
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "finshed eval of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p1

    invoke-direct {v3, v4, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 526
    iget p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 527
    if-ne p1, v2, :cond_14

    .line 529
    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 532
    :cond_14
    return-object p2

    .line 519
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "evaluation stack not empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 689
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 690
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 692
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method evaluateReference(Lorg/apache/poi/ss/formula/EvaluationSheet;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "sheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I
    .param p5, "tracker"    # Lorg/apache/poi/ss/formula/EvaluationTracker;

    .line 701
    invoke-interface {p1, p3, p4}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v6

    .line 702
    .local v6, "cell":Lorg/apache/poi/ss/formula/EvaluationCell;
    move-object v0, p0

    move-object v1, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v0

    return-object v0
.end method

.method getEnvironment()Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    return-object v0
.end method

.method getEvaluationListener()Lorg/apache/poi/ss/formula/IEvaluationListener;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    return-object v0
.end method

.method getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheetIndex"    # I

    .line 114
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

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

    .line 156
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->getWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v0

    return-object v0
.end method

.method getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 106
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    return-object v0
.end method

.method getSheetIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 214
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 215
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, "sheetIndex":I
    if-gez v1, :cond_0

    .line 217
    const/4 v2, -0x1

    return v2

    .line 219
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

    move-result v1

    return v1
.end method

.method getSheetIndexByExternIndex(I)I
    .locals 1
    .param p1, "externSheetIndex"    # I

    .line 226
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->convertFromExternSheetIndex(I)I

    move-result v0

    return v0
.end method

.method getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 102
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    return-object v0
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 186
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

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

    .line 178
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

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

    .line 777
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    .line 778
    return-void
.end method

.method public setIgnoreMissingWorkbooks(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .line 725
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    .line 726
    return-void
.end method
