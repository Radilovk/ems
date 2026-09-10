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

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 310
    return-void
.end method

.method private countMatchingCellsInArea(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)D
    .locals 3
    .param p1, "rangeArg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "criteriaPredicate"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .prologue
    .line 446
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_0

    .line 447
    check-cast p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p1    # "rangeArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInRef(Lorg/apache/poi/ss/formula/eval/RefEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v0

    int-to-double v0, v0

    .line 449
    :goto_0
    return-wide v0

    .line 448
    .restart local p1    # "rangeArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ThreeDEval;

    if-eqz v0, :cond_1

    .line 449
    check-cast p1, Lorg/apache/poi/ss/formula/ThreeDEval;

    .end local p1    # "rangeArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInArea(Lorg/apache/poi/ss/formula/ThreeDEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 451
    .restart local p1    # "rangeArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad range arg type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .prologue
    .line 461
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/Countif;->evaluateCriteriaArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 463
    .local v0, "evaluatedCriteriaArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_0

    .line 464
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .end local v0    # "evaluatedCriteriaArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    sget-object v4, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_NONE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;-><init>(DLorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    .line 477
    :goto_0
    return-object v1

    .line 466
    .restart local v0    # "evaluatedCriteriaArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v1, :cond_1

    .line 467
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;

    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .end local v0    # "evaluatedCriteriaArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v2

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_NONE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;-><init>(ZLorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    goto :goto_0

    .line 470
    .restart local v0    # "evaluatedCriteriaArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v1, :cond_2

    .line 471
    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    .end local v0    # "evaluatedCriteriaArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Countif;->createGeneralMatchPredicate(Lorg/apache/poi/ss/formula/eval/StringEval;)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object v1

    goto :goto_0

    .line 473
    .restart local v0    # "evaluatedCriteriaArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_3

    .line 474
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local v0    # "evaluatedCriteriaArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v2

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_NONE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;-><init>(ILorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    goto :goto_0

    .line 476
    .restart local v0    # "evaluatedCriteriaArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v0, v1, :cond_4

    .line 477
    const/4 v1, 0x0

    goto :goto_0

    .line 479
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for criteria ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createGeneralMatchPredicate(Lorg/apache/poi/ss/formula/eval/StringEval;)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .locals 8
    .param p0, "stringEval"    # Lorg/apache/poi/ss/formula/eval/StringEval;

    .prologue
    .line 498
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->getOperator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    move-result-object v3

    .line 500
    .local v3, "operator":Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 502
    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/Countif;->parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 503
    .local v0, "booleanVal":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 504
    new-instance v5, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v5, v6, v3}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;-><init>(ZLorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    .line 517
    :goto_0
    return-object v5

    .line 507
    :cond_0
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 508
    .local v1, "doubleVal":Ljava/lang/Double;
    if-eqz v1, :cond_1

    .line 509
    new-instance v5, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7, v3}, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;-><init>(DLorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    goto :goto_0

    .line 511
    :cond_1
    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/Countif;->parseError(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    .line 512
    .local v2, "ee":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    if-eqz v2, :cond_2

    .line 513
    new-instance v5, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v6

    invoke-direct {v5, v6, v3}, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;-><init>(ILorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    goto :goto_0

    .line 517
    :cond_2
    new-instance v5, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;

    invoke-direct {v5, v4, v3}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    goto :goto_0
.end method

.method private static evaluateCriteriaArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I

    .prologue
    .line 489
    int-to-short v1, p2

    :try_start_0
    invoke-static {p0, p1, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 491
    :goto_0
    return-object v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    goto :goto_0
.end method

.method static parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "strRep"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-object v0

    .line 540
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 549
    :sswitch_0
    const-string v1, "FALSE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 543
    :sswitch_1
    const-string v1, "TRUE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x54 -> :sswitch_1
        0x66 -> :sswitch_0
        0x74 -> :sswitch_1
    .end sparse-switch
.end method

.method private static parseError(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ErrorEval;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 520
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-object v0

    .line 523
    :cond_1
    const-string v1, "#NULL!"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NULL_INTERSECTION:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 524
    :cond_2
    const-string v1, "#DIV/0!"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 525
    :cond_3
    const-string v1, "#VALUE!"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 526
    :cond_4
    const-string v1, "#REF!"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 527
    :cond_5
    const-string v1, "#NAME?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 528
    :cond_6
    const-string v1, "#NUM!"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 529
    :cond_7
    const-string v1, "#N/A"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 433
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/Countif;->createCriteriaPredicate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object v0

    .line 434
    .local v0, "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    if-nez v0, :cond_0

    .line 436
    sget-object v1, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 439
    :goto_0
    return-object v1

    .line 438
    :cond_0
    invoke-direct {p0, p3, v0}, Lorg/apache/poi/ss/formula/functions/Countif;->countMatchingCellsInArea(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)D

    move-result-wide v2

    .line 439
    .local v2, "result":D
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method
