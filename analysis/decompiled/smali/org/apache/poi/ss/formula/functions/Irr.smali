.class public final Lorg/apache/poi/ss/formula/functions/Irr;
.super Ljava/lang/Object;
.source "Irr.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static irr([D)D
    .locals 2
    .param p0, "income"    # [D

    .prologue
    .line 65
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/functions/Irr;->irr([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static irr([DD)D
    .locals 23
    .param p0, "values"    # [D
    .param p1, "guess"    # D

    .prologue
    .line 92
    const/16 v10, 0x14

    .line 93
    .local v10, "maxIterationCount":I
    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 95
    .local v2, "absoluteAccuracy":D
    move-wide/from16 v12, p1

    .line 98
    .local v12, "x0":D
    const/4 v8, 0x0

    .line 99
    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_2

    .line 102
    const-wide/16 v6, 0x0

    .line 103
    .local v6, "fValue":D
    const-wide/16 v4, 0x0

    .line 104
    .local v4, "fDerivative":D
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    move-object/from16 v0, p0

    array-length v11, v0

    if-ge v9, v11, :cond_0

    .line 105
    aget-wide v16, p0, v9

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v12

    int-to-double v0, v9

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    div-double v16, v16, v18

    add-double v6, v6, v16

    .line 106
    neg-int v11, v9

    int-to-double v0, v11

    move-wide/from16 v16, v0

    aget-wide v18, p0, v9

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v12

    add-int/lit8 v11, v9, 0x1

    int-to-double v0, v11

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    div-double v16, v16, v18

    add-double v4, v4, v16

    .line 104
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 110
    :cond_0
    div-double v16, v6, v4

    sub-double v14, v12, v16

    .line 112
    .local v14, "x1":D
    sub-double v16, v14, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v11, v16, v2

    if-gtz v11, :cond_1

    .line 120
    .end local v4    # "fDerivative":D
    .end local v6    # "fValue":D
    .end local v9    # "k":I
    .end local v14    # "x1":D
    :goto_2
    return-wide v14

    .line 116
    .restart local v4    # "fDerivative":D
    .restart local v6    # "fValue":D
    .restart local v9    # "k":I
    .restart local v14    # "x1":D
    :cond_1
    move-wide v12, v14

    .line 117
    add-int/lit8 v8, v8, 0x1

    .line 118
    goto :goto_0

    .line 120
    .end local v4    # "fDerivative":D
    .end local v6    # "fValue":D
    .end local v9    # "k":I
    .end local v14    # "x1":D
    :cond_2
    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    goto :goto_2
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    const/4 v9, 0x2

    .line 37
    array-length v6, p1

    if-eqz v6, :cond_0

    array-length v6, p1

    if-le v6, v9, :cond_1

    .line 39
    :cond_0
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 54
    :goto_0
    return-object v6

    .line 43
    :cond_1
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, p1, v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v1

    .line 45
    .local v1, "values":[D
    array-length v6, p1

    if-ne v6, v9, :cond_2

    .line 46
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-static {v6, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 50
    .local v2, "guess":D
    :goto_1
    invoke-static {v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Irr;->irr([DD)D

    move-result-wide v4

    .line 51
    .local v4, "result":D
    invoke-static {v4, v5}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    .line 52
    new-instance v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v6, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v1    # "values":[D
    .end local v2    # "guess":D
    .end local v4    # "result":D
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    goto :goto_0

    .line 48
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v1    # "values":[D
    :cond_2
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .restart local v2    # "guess":D
    goto :goto_1
.end method
