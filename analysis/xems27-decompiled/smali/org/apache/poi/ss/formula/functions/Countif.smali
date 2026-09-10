.class public final Lorg/apache/poi/ss/formula/functions/Countif;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "Countif.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;,
        Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;,
        Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;,
        Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;,
        Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;,
        Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 310
    return-void
.end method

.method private countMatchingCellsInArea(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)D
    .locals 3
    .param p1, "rangeArg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "criteriaPredicate"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 446
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_0

    .line 447
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-static {v0, p2}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInRef(Lorg/apache/poi/ss/formula/eval/RefEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 448
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ThreeDEval;

    if-eqz v0, :cond_1

    .line 449
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ThreeDEval;

    invoke-static {v0, p2}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInArea(Lorg/apache/poi/ss/formula/ThreeDEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 451
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad range arg type ("

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

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createCriteriaPredicate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .locals 5
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I

    .line 461
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/Countif;->evaluateCriteriaArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 463
    .local v0, "evaluatedCriteriaArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_0

    .line 464
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    sget-object v4, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_NONE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;-><init>(DLorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    return-object v1

    .line 466
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v1, :cond_1

    .line 467
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v2

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_NONE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;-><init>(ZLorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    return-object v1

    .line 470
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v1, :cond_2

    .line 471
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Countif;->createGeneralMatchPredicate(Lorg/apache/poi/ss/formula/eval/StringEval;)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object v1

    return-object v1

    .line 473
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_3

    .line 474
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v2

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_NONE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;-><init>(ILorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    return-object v1

    .line 476
    :cond_3
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v0, v1, :cond_4

    .line 477
    const/4 v1, 0x0

    return-object v1

    .line 479
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for criteria ("

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

.method private static createGeneralMatchPredicate(Lorg/apache/poi/ss/formula/eval/StringEval;)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .locals 7
    .param p0, "stringEval"    # Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 498
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->getOperator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    move-result-object v1

    .line 500
    .local v1, "operator":Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->getLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Countif;->parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 503
    .local v2, "booleanVal":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    .line 504
    new-instance v3, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v3, v4, v1}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;-><init>(ZLorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    return-object v3

    .line 507
    :cond_0
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 508
    .local v3, "doubleVal":Ljava/lang/Double;
    if-eqz v3, :cond_1

    .line 509
    new-instance v4, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v4, v5, v6, v1}, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;-><init>(DLorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    return-object v4

    .line 511
    :cond_1
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Countif;->parseError(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    .line 512
    .local v4, "ee":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    if-eqz v4, :cond_2

    .line 513
    new-instance v5, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v6

    invoke-direct {v5, v6, v1}, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;-><init>(ILorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    return-object v5

    .line 517
    :cond_2
    new-instance v5, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;

    invoke-direct {v5, v0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    return-object v5
.end method

.method private static evaluateCriteriaArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I

    .line 489
    int-to-short v0, p2

    :try_start_0
    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method

.method static parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "strRep"    # Ljava/lang/String;

    .line 537
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 538
    return-object v1

    .line 540
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_2

    const/16 v2, 0x54

    if-eq v0, v2, :cond_1

    const/16 v2, 0x66

    if-eq v0, v2, :cond_2

    const/16 v2, 0x74

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 543
    :cond_1
    const-string v0, "TRUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 549
    :cond_2
    const-string v0, "FALSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 554
    :cond_3
    :goto_0
    return-object v1
.end method

.method private static parseError(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ErrorEval;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 520
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    const-string v0, "#NULL!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NULL_INTERSECTION:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 524
    :cond_1
    const-string v0, "#DIV/0!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 525
    :cond_2
    const-string v0, "#VALUE!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 526
    :cond_3
    const-string v0, "#REF!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 527
    :cond_4
    const-string v0, "#NAME?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 528
    :cond_5
    const-string v0, "#NUM!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 529
    :cond_6
    const-string v0, "#N/A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 531
    :cond_7
    return-object v1

    .line 521
    :cond_8
    :goto_0
    return-object v1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 433
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/Countif;->createCriteriaPredicate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object v0

    .line 434
    .local v0, "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    if-nez v0, :cond_0

    .line 436
    sget-object v1, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    return-object v1

    .line 438
    :cond_0
    invoke-direct {p0, p3, v0}, Lorg/apache/poi/ss/formula/functions/Countif;->countMatchingCellsInArea(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)D

    move-result-wide v1

    .line 439
    .local v1, "result":D
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v3
.end method
