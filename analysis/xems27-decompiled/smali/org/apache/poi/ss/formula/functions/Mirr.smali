.class public Lorg/apache/poi/ss/formula/functions/Mirr;
.super Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.source "Mirr.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;-><init>(ZZ)V

    .line 50
    return-void
.end method

.method private static mirr([DDD)D
    .locals 21
    .param p0, "in"    # [D
    .param p1, "financeRate"    # D
    .param p3, "reinvestRate"    # D

    .line 86
    const-wide/16 v0, 0x0

    .line 87
    .local v0, "value":D
    move-object/from16 v2, p0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 88
    .local v3, "numOfYears":I
    const-wide/16 v4, 0x0

    .line 89
    .local v4, "pv":D
    const-wide/16 v6, 0x0

    .line 91
    .local v6, "fv":D
    const/4 v8, 0x0

    .line 92
    .local v8, "indexN":I
    move-object/from16 v9, p0

    .local v9, "arr$":[D
    array-length v10, v9

    .local v10, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/16 v14, 0x0

    if-ge v11, v10, :cond_1

    aget-wide v16, v9, v11

    .line 93
    .local v16, "anIn":D
    cmpg-double v18, v16, v14

    if-gez v18, :cond_0

    .line 94
    add-double v12, p1, v12

    add-double v12, v12, p3

    add-int/lit8 v14, v8, 0x1

    move-wide/from16 v18, v0

    .end local v0    # "value":D
    .end local v8    # "indexN":I
    .local v14, "indexN":I
    .local v18, "value":D
    int-to-double v0, v8

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double v0, v16, v0

    add-double/2addr v4, v0

    move v8, v14

    goto :goto_1

    .line 93
    .end local v14    # "indexN":I
    .end local v18    # "value":D
    .restart local v0    # "value":D
    .restart local v8    # "indexN":I
    :cond_0
    move-wide/from16 v18, v0

    .line 92
    .end local v0    # "value":D
    .end local v16    # "anIn":D
    .restart local v18    # "value":D
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v0, v18

    goto :goto_0

    .end local v18    # "value":D
    .restart local v0    # "value":D
    :cond_1
    move-wide/from16 v18, v0

    .line 98
    .end local v0    # "value":D
    .end local v9    # "arr$":[D
    .end local v10    # "len$":I
    .end local v11    # "i$":I
    .restart local v18    # "value":D
    move-object/from16 v0, p0

    .local v0, "arr$":[D
    array-length v1, v0

    .local v1, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v1, :cond_3

    aget-wide v10, v0, v9

    .line 99
    .local v10, "anIn":D
    cmpl-double v16, v10, v14

    if-lez v16, :cond_2

    .line 100
    add-double v14, p1, v12

    add-int/lit8 v20, v8, 0x1

    .end local v8    # "indexN":I
    .local v20, "indexN":I
    sub-int v8, v3, v8

    int-to-double v12, v8

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v12, v12, v10

    add-double/2addr v6, v12

    move/from16 v8, v20

    .line 98
    .end local v10    # "anIn":D
    .end local v20    # "indexN":I
    .restart local v8    # "indexN":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/16 v14, 0x0

    goto :goto_2

    .line 104
    .end local v0    # "arr$":[D
    .end local v1    # "len$":I
    .end local v9    # "i$":I
    :cond_3
    const-wide/16 v0, 0x0

    cmpl-double v9, v6, v0

    if-eqz v9, :cond_4

    cmpl-double v9, v4, v0

    if-eqz v9, :cond_4

    .line 105
    neg-double v0, v6

    div-double/2addr v0, v4

    int-to-double v9, v3

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v9, v11, v9

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, v11

    .end local v18    # "value":D
    .local v0, "value":D
    goto :goto_3

    .line 107
    .end local v0    # "value":D
    .restart local v18    # "value":D
    :cond_4
    move-wide/from16 v0, v18

    .end local v18    # "value":D
    .restart local v0    # "value":D
    :goto_3
    return-wide v0
.end method


# virtual methods
.method protected evaluate([D)D
    .locals 18
    .param p1, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 60
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-wide v3, v0, v1

    .line 61
    .local v3, "financeRate":D
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-wide v5, v0, v1

    .line 63
    .local v5, "reinvestRate":D
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [D

    .line 64
    .local v1, "mirrValues":[D
    array-length v7, v1

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    const/4 v7, 0x1

    .line 67
    .local v7, "mirrValuesAreAllNegatives":Z
    move-object v9, v1

    .local v9, "arr$":[D
    array-length v10, v9

    .local v10, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    const-wide/16 v12, 0x0

    if-ge v11, v10, :cond_1

    aget-wide v14, v9, v11

    .line 68
    .local v14, "mirrValue":D
    cmpg-double v16, v14, v12

    if-gez v16, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    and-int/2addr v7, v12

    .line 67
    .end local v14    # "mirrValue":D
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 70
    .end local v9    # "arr$":[D
    .end local v10    # "len$":I
    .end local v11    # "i$":I
    :cond_1
    if-eqz v7, :cond_2

    .line 71
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    return-wide v8

    .line 74
    :cond_2
    const/4 v9, 0x1

    .line 75
    .local v9, "mirrValuesAreAllPositives":Z
    move-object v10, v1

    .local v10, "arr$":[D
    array-length v11, v10

    .local v11, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    if-ge v14, v11, :cond_4

    aget-wide v15, v10, v14

    .line 76
    .local v15, "mirrValue":D
    cmpl-double v17, v15, v12

    if-lez v17, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    and-int v9, v9, v17

    .line 75
    .end local v15    # "mirrValue":D
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 78
    .end local v10    # "arr$":[D
    .end local v11    # "len$":I
    .end local v14    # "i$":I
    :cond_4
    if-nez v9, :cond_5

    .line 82
    invoke-static {v1, v3, v4, v5, v6}, Lorg/apache/poi/ss/formula/functions/Mirr;->mirr([DDD)D

    move-result-wide v10

    return-wide v10

    .line 79
    :cond_5
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v8}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2
.end method

.method protected getMaxNumOperands()I
    .locals 1

    .line 54
    const/4 v0, 0x3

    return v0
.end method
