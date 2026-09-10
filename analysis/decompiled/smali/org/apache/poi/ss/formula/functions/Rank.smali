.class public Lorg/apache/poi/ss/formula/functions/Rank;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Rank.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
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

    .line 120
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 121
    check-cast p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 124
    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object p0

    .line 123
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 124
    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p0

    goto :goto_0

    .line 126
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static eval(IIDLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p0, "srcRowIndex"    # I
    .param p1, "srcColumnIndex"    # I
    .param p2, "arg0"    # D
    .param p4, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p5, "descending_order"    # Z

    .prologue
    .line 93
    const/4 v3, 0x1

    .line 94
    .local v3, "rank":I
    invoke-interface {p4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v1

    .line 95
    .local v1, "height":I
    invoke-interface {p4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v5

    .line 96
    .local v5, "width":I
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 97
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    if-ge v0, v5, :cond_4

    .line 99
    invoke-static {p4, v2, v0}, Lorg/apache/poi/ss/formula/functions/Rank;->getValue(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Ljava/lang/Double;

    move-result-object v4

    .line 100
    .local v4, "value":Ljava/lang/Double;
    if-nez v4, :cond_1

    .line 97
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v6, v6, p2

    if-gtz v6, :cond_3

    :cond_2
    if-nez p5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v6, v6, p2

    if-gez v6, :cond_0

    .line 102
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 96
    .end local v4    # "value":Ljava/lang/Double;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "c":I
    :cond_5
    new-instance v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double v8, v3

    invoke-direct {v6, v8, v9}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v6
.end method

.method private static getValue(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Ljava/lang/Double;
    .locals 4
    .param p0, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "relRowIndex"    # I
    .param p2, "relColIndex"    # I

    .prologue
    .line 111
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 112
    .local v0, "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .end local v0    # "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 116
    :goto_0
    return-object v1

    .restart local v0    # "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 52
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    .line 53
    .local v7, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v7}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v2

    .line 54
    .local v2, "result":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v2    # "result":D
    .end local v7    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v6

    .line 59
    .local v6, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    .line 61
    .end local v6    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_0
    return-object v0

    .line 57
    .restart local v2    # "result":D
    .restart local v7    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    :try_start_1
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/Rank;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 61
    .local v4, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    const/4 v5, 0x1

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(IIDLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 68
    const/4 v5, 0x0

    .line 70
    .local v5, "order":Z
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 71
    .local v8, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v8}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v2

    .line 72
    .local v2, "result":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v2    # "result":D
    .end local v8    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v6

    .line 86
    .local v6, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    .line 88
    .end local v6    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_0
    return-object v0

    .line 75
    .restart local v2    # "result":D
    .restart local v8    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    :try_start_1
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/Rank;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v4

    .line 77
    .local v4, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 78
    invoke-static {v8}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 79
    .local v7, "order_value":I
    if-nez v7, :cond_2

    .line 80
    const/4 v5, 0x1

    :goto_1
    move v0, p1

    move v1, p2

    .line 88
    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(IIDLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x1

    if-ne v7, v0, :cond_3

    .line 82
    const/4 v5, 0x0

    goto :goto_1

    .line 83
    :cond_3
    :try_start_2
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0
.end method
