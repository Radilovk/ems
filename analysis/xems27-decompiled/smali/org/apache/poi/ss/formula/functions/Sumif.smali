.class public final Lorg/apache/poi/ss/formula/functions/Sumif;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Sumif.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static accumulate(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;Lorg/apache/poi/ss/formula/eval/AreaEval;II)D
    .locals 4
    .param p0, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "mp"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .param p2, "aeSum"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p3, "relRowIndex"    # I
    .param p4, "relColIndex"    # I

    .line 92
    invoke-interface {p0, p3, p4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    return-wide v1

    .line 95
    :cond_0
    invoke-interface {p2, p3, p4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 96
    .local v0, "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v3, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v3, :cond_1

    .line 97
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    return-wide v1

    .line 100
    :cond_1
    return-wide v1
.end method

.method private static convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 118
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    return-object v0

    .line 121
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 122
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static createSumRange(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 4
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 108
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v1, v2, v1, v3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 112
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v1, v2, v1, v3}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    return-object v0

    .line 114
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p0, "srcRowIndex"    # I
    .param p1, "srcColumnIndex"    # I
    .param p2, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p3, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p4, "aeSum"    # Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 71
    invoke-static {p2, p0, p1}, Lorg/apache/poi/ss/formula/functions/Countif;->createCriteriaPredicate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object v0

    .line 72
    .local v0, "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    invoke-static {p3, v0, p4}, Lorg/apache/poi/ss/formula/functions/Sumif;->sumMatchingCells(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;Lorg/apache/poi/ss/formula/eval/AreaEval;)D

    move-result-wide v1

    .line 73
    .local v1, "result":D
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v3
.end method

.method private static sumMatchingCells(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;Lorg/apache/poi/ss/formula/eval/AreaEval;)D
    .locals 8
    .param p0, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "mp"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .param p2, "aeSum"    # Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 77
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v0

    .line 78
    .local v0, "height":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v1

    .line 80
    .local v1, "width":I
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "result":D
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 82
    const/4 v5, 0x0

    .local v5, "c":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 83
    invoke-static {p0, p1, p2, v4, v5}, Lorg/apache/poi/ss/formula/functions/Sumif;->accumulate(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;Lorg/apache/poi/ss/formula/eval/AreaEval;II)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 82
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 81
    .end local v5    # "c":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    .end local v4    # "r":I
    :cond_1
    return-wide v2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 47
    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Sumif;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v0, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    nop

    .line 51
    invoke-static {p1, p2, p4, v0, v0}, Lorg/apache/poi/ss/formula/functions/Sumif;->eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 48
    .end local v0    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 49
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 60
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Sumif;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .local v1, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :try_start_1
    invoke-static {p5, v1}, Lorg/apache/poi/ss/formula/functions/Sumif;->createSumRange(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .local v0, "aeSum":Lorg/apache/poi/ss/formula/eval/AreaEval;
    nop

    .line 65
    invoke-static {p1, p2, p4, v1, v0}, Lorg/apache/poi/ss/formula/functions/Sumif;->eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    return-object v2

    .line 62
    .end local v0    # "aeSum":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v1    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :catch_1
    move-exception v2

    move-object v1, v0

    .line 63
    .restart local v0    # "aeSum":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .restart local v1    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
