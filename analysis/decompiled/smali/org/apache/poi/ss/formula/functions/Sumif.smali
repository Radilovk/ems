.class public final Lorg/apache/poi/ss/formula/functions/Sumif;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Sumif.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
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

    .prologue
    const-wide/16 v2, 0x0

    .line 92
    invoke-interface {p0, p3, p4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-wide v2

    .line 95
    :cond_1
    invoke-interface {p2, p3, p4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 96
    .local v0, "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_0

    .line 97
    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .end local v0    # "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method private static convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 119
    check-cast p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 122
    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object p0

    .line 121
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 122
    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p0

    goto :goto_0

    .line 124
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static createSumRange(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 3
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 108
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 109
    check-cast p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v2, v0, v2, v1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 111
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 112
    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v2, v0, v2, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    goto :goto_0

    .line 114
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
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

    .prologue
    .line 71
    invoke-static {p2, p0, p1}, Lorg/apache/poi/ss/formula/functions/Countif;->createCriteriaPredicate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object v0

    .line 72
    .local v0, "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    invoke-static {p3, v0, p4}, Lorg/apache/poi/ss/formula/functions/Sumif;->sumMatchingCells(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;Lorg/apache/poi/ss/formula/eval/AreaEval;)D

    move-result-wide v2

    .line 73
    .local v2, "result":D
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v1
.end method

.method private static sumMatchingCells(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;Lorg/apache/poi/ss/formula/eval/AreaEval;)D
    .locals 8
    .param p0, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "mp"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .param p2, "aeSum"    # Lorg/apache/poi/ss/formula/eval/AreaEval;

    .prologue
    .line 77
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v1

    .line 78
    .local v1, "height":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v3

    .line 80
    .local v3, "width":I
    const-wide/16 v4, 0x0

    .line 81
    .local v4, "result":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 82
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 83
    invoke-static {p0, p1, p2, v2, v0}, Lorg/apache/poi/ss/formula/functions/Sumif;->accumulate(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;Lorg/apache/poi/ss/formula/eval/AreaEval;II)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "c":I
    :cond_1
    return-wide v4
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 47
    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Sumif;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    .local v0, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {p1, p2, p4, v0, v0}, Lorg/apache/poi/ss/formula/functions/Sumif;->eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .end local v0    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :goto_0
    return-object v2

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    goto :goto_0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 60
    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Sumif;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    .line 61
    .local v0, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {p5, v0}, Lorg/apache/poi/ss/formula/functions/Sumif;->createSumRange(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    .local v1, "aeSum":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {p1, p2, p4, v0, v1}, Lorg/apache/poi/ss/formula/functions/Sumif;->eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .end local v0    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v1    # "aeSum":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :goto_0
    return-object v3

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    goto :goto_0
.end method
