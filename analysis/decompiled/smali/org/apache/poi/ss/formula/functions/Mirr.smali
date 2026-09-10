.class public Lorg/apache/poi/ss/formula/functions/Mirr;
.super Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.source "Mirr.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;-><init>(ZZ)V

    .line 50
    return-void
.end method

.method private static mirr([DDD)D
    .locals 23
    .param p0, "in"    # [D
    .param p1, "financeRate"    # D
    .param p3, "reinvestRate"    # D

    .prologue
    .line 86
    const-wide/16 v14, 0x0

    .line 87
    .local v14, "value":D
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v11, v16, -0x1

    .line 88
    .local v11, "numOfYears":I
    const-wide/16 v12, 0x0

    .line 89
    .local v12, "pv":D
    const-wide/16 v6, 0x0

    .line 91
    .local v6, "fv":D
    const/4 v8, 0x0

    .line 92
    .local v8, "indexN":I
    move-object/from16 v4, p0

    .local v4, "arr$":[D
    array-length v10, v4

    .local v10, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v9, v8

    .end local v8    # "indexN":I
    .local v9, "indexN":I
    :goto_0
    if-ge v5, v10, :cond_0

    aget-wide v2, v4, v5

    .line 93
    .local v2, "anIn":D
    const-wide/16 v16, 0x0

    cmpg-double v16, v2, v16

    if-gez v16, :cond_4

    .line 94
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, p1

    add-double v16, v16, p3

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "indexN":I
    .restart local v8    # "indexN":I
    int-to-double v0, v9

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    div-double v16, v2, v16

    add-double v12, v12, v16

    .line 92
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "indexN":I
    .restart local v9    # "indexN":I
    goto :goto_0

    .line 98
    .end local v2    # "anIn":D
    :cond_0
    move-object/from16 v4, p0

    array-length v10, v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v10, :cond_1

    aget-wide v2, v4, v5

    .line 99
    .restart local v2    # "anIn":D
    const-wide/16 v16, 0x0

    cmpl-double v16, v2, v16

    if-lez v16, :cond_3

    .line 100
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, p1

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "indexN":I
    .restart local v8    # "indexN":I
    sub-int v18, v11, v9

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v16, v16, v2

    add-double v6, v6, v16

    .line 98
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "indexN":I
    .restart local v9    # "indexN":I
    goto :goto_2

    .line 104
    .end local v2    # "anIn":D
    :cond_1
    const-wide/16 v16, 0x0

    cmpl-double v16, v6, v16

    if-eqz v16, :cond_2

    const-wide/16 v16, 0x0

    cmpl-double v16, v12, v16

    if-eqz v16, :cond_2

    .line 105
    neg-double v0, v6

    move-wide/from16 v16, v0

    div-double v16, v16, v12

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v14, v16, v18

    .line 107
    :cond_2
    return-wide v14

    .restart local v2    # "anIn":D
    :cond_3
    move v8, v9

    .end local v9    # "indexN":I
    .restart local v8    # "indexN":I
    goto :goto_3

    .end local v8    # "indexN":I
    .restart local v9    # "indexN":I
    :cond_4
    move v8, v9

    .end local v9    # "indexN":I
    .restart local v8    # "indexN":I
    goto :goto_1
.end method


# virtual methods
.method protected evaluate([D)D
    .locals 17
    .param p1, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-wide v4, p1, v14

    .line 61
    .local v4, "financeRate":D
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x2

    aget-wide v12, p1, v14

    .line 63
    .local v12, "reinvestRate":D
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x2

    new-array v7, v14, [D

    .line 64
    .local v7, "mirrValues":[D
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v7

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v7, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    const/4 v10, 0x1

    .line 67
    .local v10, "mirrValuesAreAllNegatives":Z
    move-object v2, v7

    .local v2, "arr$":[D
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-wide v8, v2, v3

    .line 68
    .local v8, "mirrValue":D
    const-wide/16 v14, 0x0

    cmpg-double v14, v8, v14

    if-gez v14, :cond_0

    const/4 v14, 0x1

    :goto_1
    and-int/2addr v10, v14

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 70
    .end local v8    # "mirrValue":D
    :cond_1
    if-eqz v10, :cond_2

    .line 71
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 82
    :goto_2
    return-wide v14

    .line 74
    :cond_2
    const/4 v11, 0x1

    .line 75
    .local v11, "mirrValuesAreAllPositives":Z
    move-object v2, v7

    array-length v6, v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_4

    aget-wide v8, v2, v3

    .line 76
    .restart local v8    # "mirrValue":D
    const-wide/16 v14, 0x0

    cmpl-double v14, v8, v14

    if-lez v14, :cond_3

    const/4 v14, 0x1

    :goto_4
    and-int/2addr v11, v14

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 76
    :cond_3
    const/4 v14, 0x0

    goto :goto_4

    .line 78
    .end local v8    # "mirrValue":D
    :cond_4
    if-eqz v11, :cond_5

    .line 79
    new-instance v14, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v15, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v14, v15}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v14

    .line 82
    :cond_5
    invoke-static {v7, v4, v5, v12, v13}, Lorg/apache/poi/ss/formula/functions/Mirr;->mirr([DDD)D

    move-result-wide v14

    goto :goto_2
.end method

.method protected getMaxNumOperands()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x3

    return v0
.end method
