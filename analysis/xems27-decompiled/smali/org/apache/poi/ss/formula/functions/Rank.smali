.class public Lorg/apache/poi/ss/formula/functions/Rank;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Rank.java"


# direct methods
.method public constructor <init>()V
    .locals 0

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

    .line 120
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 121
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    return-object v0

    .line 123
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 124
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static eval(IIDLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p0, "srcRowIndex"    # I
    .param p1, "srcColumnIndex"    # I
    .param p2, "arg0"    # D
    .param p4, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p5, "descending_order"    # Z

    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, "rank":I
    invoke-interface {p4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v1

    .line 95
    .local v1, "height":I
    invoke-interface {p4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v2

    .line 96
    .local v2, "width":I
    const/4 v3, 0x0

    .local v3, "r":I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 97
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 99
    invoke-static {p4, v3, v4}, Lorg/apache/poi/ss/formula/functions/Rank;->getValue(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Ljava/lang/Double;

    move-result-object v5

    .line 100
    .local v5, "value":Ljava/lang/Double;
    if-nez v5, :cond_0

    goto :goto_2

    .line 101
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v8, v6, p2

    if-gtz v8, :cond_2

    :cond_1
    if-nez p5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v8, v6, p2

    if-gez v8, :cond_3

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 97
    .end local v5    # "value":Ljava/lang/Double;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    .end local v4    # "c":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "r":I
    :cond_5
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double v4, v0

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v3
.end method

.method private static getValue(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Ljava/lang/Double;
    .locals 3
    .param p0, "aeRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "relRowIndex"    # I
    .param p2, "relColIndex"    # I

    .line 111
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 112
    .local v0, "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_0

    .line 113
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 116
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 52
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 53
    .local v3, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v6
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .local v6, "result":D
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/Rank;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v8
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v8, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    nop

    .line 61
    const/4 v9, 0x1

    move v4, p1

    move v5, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(IIDLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 55
    .end local v8    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .restart local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    :try_start_2
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .end local v6    # "result":D
    .end local p1    # "srcRowIndex":I
    .end local p2    # "srcColumnIndex":I
    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    throw v0
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v6    # "result":D
    .restart local p1    # "srcRowIndex":I
    .restart local p2    # "srcColumnIndex":I
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    move-object v1, v2

    .local v1, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    goto :goto_0

    .end local v1    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v6    # "result":D
    :catch_1
    move-exception v3

    .local v0, "result":D
    move-wide v6, v0

    move-object v1, v2

    move-object v0, v3

    .line 59
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v1    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .restart local v6    # "result":D
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 12
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 68
    move v7, p1

    move v8, p2

    const/4 v1, 0x0

    .line 70
    .local v1, "order":Z
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v9, p3

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 71
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 72
    .local v3, "result":D
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_2

    .line 75
    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/functions/Rank;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v5
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 77
    .local v5, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    move-object/from16 v10, p5

    :try_start_2
    invoke-static {v10, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    move-object v0, v2

    .line 78
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v2
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    .local v2, "order_value":I
    if-nez v2, :cond_0

    .line 80
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 81
    :cond_0
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 82
    const/4 v1, 0x0

    move v0, v1

    .line 87
    .end local v1    # "order":Z
    .end local v2    # "order_value":I
    .local v0, "order":Z
    :goto_0
    nop

    .line 88
    move v1, p1

    move v2, p2

    move v6, v0

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(IIDLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 83
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v1    # "order":Z
    .restart local v2    # "order_value":I
    :cond_1
    :try_start_3
    new-instance v6, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v11, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v6, v11}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .end local v1    # "order":Z
    .end local v3    # "result":D
    .end local v5    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local p1    # "srcRowIndex":I
    .end local p2    # "srcColumnIndex":I
    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    throw v6
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 85
    .end local v0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v2    # "order_value":I
    .restart local v1    # "order":Z
    .restart local v3    # "result":D
    .restart local v5    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .restart local p1    # "srcRowIndex":I
    .restart local p2    # "srcColumnIndex":I
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    move-object v2, v5

    goto :goto_2

    .line 72
    .end local v5    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .restart local v0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    move-object/from16 v10, p5

    .line 73
    :try_start_4
    new-instance v5, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .end local v1    # "order":Z
    .end local v3    # "result":D
    .end local p1    # "srcRowIndex":I
    .end local p2    # "srcColumnIndex":I
    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    throw v5
    :try_end_4
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 85
    .end local v0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v1    # "order":Z
    .restart local v3    # "result":D
    .restart local p1    # "srcRowIndex":I
    .restart local p2    # "srcColumnIndex":I
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v10, p5

    .local v2, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :goto_1
    goto :goto_2

    .end local v2    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v3    # "result":D
    :catch_3
    move-exception v0

    move-object/from16 v10, p5

    .line 86
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v2    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .restart local v3    # "result":D
    :goto_2
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    return-object v5
.end method
