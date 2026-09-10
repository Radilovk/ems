.class public final Lorg/apache/poi/ss/formula/functions/Irr;
.super Ljava/lang/Object;
.source "Irr.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static irr([D)D
    .locals 2
    .param p0, "income"    # [D

    .line 65
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/functions/Irr;->irr([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static irr([DD)D
    .locals 19
    .param p0, "values"    # [D
    .param p1, "guess"    # D

    .line 92
    move-object/from16 v0, p0

    const/16 v1, 0x14

    .line 93
    .local v1, "maxIterationCount":I
    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 95
    .local v2, "absoluteAccuracy":D
    move-wide/from16 v4, p1

    .line 98
    .local v4, "x0":D
    const/4 v6, 0x0

    .line 99
    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_2

    .line 102
    const-wide/16 v7, 0x0

    .line 103
    .local v7, "fValue":D
    const-wide/16 v9, 0x0

    .line 104
    .local v9, "fDerivative":D
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_1
    array-length v12, v0

    if-ge v11, v12, :cond_0

    .line 105
    aget-wide v12, v0, v11

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move/from16 v16, v1

    move-wide/from16 v17, v2

    .end local v1    # "maxIterationCount":I
    .end local v2    # "absoluteAccuracy":D
    .local v16, "maxIterationCount":I
    .local v17, "absoluteAccuracy":D
    add-double v1, v4, v14

    int-to-double v14, v11

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    div-double/2addr v12, v1

    add-double/2addr v7, v12

    .line 106
    neg-int v1, v11

    int-to-double v1, v1

    aget-wide v12, v0, v11

    mul-double v1, v1, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v14, v4, v12

    add-int/lit8 v3, v11, 0x1

    int-to-double v12, v3

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v1, v12

    add-double/2addr v9, v1

    .line 104
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    move-wide/from16 v2, v17

    goto :goto_1

    .end local v16    # "maxIterationCount":I
    .end local v17    # "absoluteAccuracy":D
    .restart local v1    # "maxIterationCount":I
    .restart local v2    # "absoluteAccuracy":D
    :cond_0
    move/from16 v16, v1

    move-wide/from16 v17, v2

    .line 110
    .end local v1    # "maxIterationCount":I
    .end local v2    # "absoluteAccuracy":D
    .end local v11    # "k":I
    .restart local v16    # "maxIterationCount":I
    .restart local v17    # "absoluteAccuracy":D
    div-double v1, v7, v9

    sub-double v1, v4, v1

    .line 112
    .local v1, "x1":D
    sub-double v11, v1, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v3, v11, v17

    if-gtz v3, :cond_1

    .line 113
    return-wide v1

    .line 116
    :cond_1
    move-wide v4, v1

    .line 117
    nop

    .end local v7    # "fValue":D
    .end local v9    # "fDerivative":D
    add-int/lit8 v6, v6, 0x1

    .line 118
    move/from16 v1, v16

    move-wide/from16 v2, v17

    goto :goto_0

    .line 120
    .end local v16    # "maxIterationCount":I
    .end local v17    # "absoluteAccuracy":D
    .local v1, "maxIterationCount":I
    .restart local v2    # "absoluteAccuracy":D
    :cond_2
    move/from16 v16, v1

    .end local v1    # "maxIterationCount":I
    .restart local v16    # "maxIterationCount":I
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 37
    array-length v0, p1

    if-eqz v0, :cond_2

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    aput-object v4, v2, v3

    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v2

    .line 45
    .local v2, "values":[D
    array-length v3, p1

    if-ne v3, v1, :cond_1

    .line 46
    aget-object v0, p1, v0

    invoke-static {v0, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    .local v0, "guess":D
    goto :goto_0

    .line 48
    .end local v0    # "guess":D
    :cond_1
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 50
    .restart local v0    # "guess":D
    :goto_0
    invoke-static {v2, v0, v1}, Lorg/apache/poi/ss/formula/functions/Irr;->irr([DD)D

    move-result-wide v3

    .line 51
    .local v3, "result":D
    invoke-static {v3, v4}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    .line 52
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v5, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 53
    .end local v0    # "guess":D
    .end local v2    # "values":[D
    .end local v3    # "result":D
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1

    .line 39
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
