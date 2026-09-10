.class public Lorg/apache/poi/ss/formula/functions/Rate;
.super Ljava/lang/Object;
.source "Rate.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateRate(DDDDDD)D
    .locals 27
    .param p1, "nper"    # D
    .param p3, "pmt"    # D
    .param p5, "pv"    # D
    .param p7, "fv"    # D
    .param p9, "type"    # D
    .param p11, "guess"    # D

    .line 73
    const/16 v0, 0x14

    .line 74
    .local v0, "FINANCIAL_MAX_ITERATIONS":I
    const-wide v1, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 76
    .local v1, "FINANCIAL_PRECISION":D
    const-wide/16 v3, 0x0

    .local v3, "x1":D
    const-wide/16 v5, 0x0

    .local v5, "f":D
    const-wide/16 v7, 0x0

    .line 77
    .local v7, "i":D
    move-wide/from16 v9, p11

    .line 78
    .local v9, "rate":D
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v11, v1

    if-gez v15, :cond_0

    .line 79
    mul-double v11, p1, v9

    add-double/2addr v11, v13

    mul-double v11, v11, p5

    mul-double v15, v9, p9

    add-double/2addr v15, v13

    mul-double v15, v15, p3

    mul-double v15, v15, p1

    add-double/2addr v11, v15

    add-double v11, v11, p7

    .local v11, "y":D
    goto :goto_0

    .line 81
    .end local v11    # "y":D
    :cond_0
    add-double v11, v9, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    mul-double v11, v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    .line 82
    mul-double v11, p5, v5

    div-double v15, v13, v9

    add-double v15, v15, p9

    mul-double v15, v15, p3

    sub-double v17, v5, v13

    mul-double v15, v15, v17

    add-double/2addr v11, v15

    add-double v11, v11, p7

    .line 84
    .restart local v11    # "y":D
    :goto_0
    mul-double v15, p3, p1

    add-double v15, p5, v15

    add-double v15, v15, p7

    .line 85
    .local v15, "y0":D
    mul-double v17, p5, v5

    div-double v19, v13, v9

    add-double v19, v19, p9

    mul-double v19, v19, p3

    sub-double v21, v5, v13

    mul-double v19, v19, v21

    add-double v17, v17, v19

    add-double v17, v17, p7

    .line 88
    .local v17, "y1":D
    const-wide/16 v19, 0x0

    move-wide/from16 v21, v19

    .local v21, "x0":D
    move-wide/from16 v7, v19

    .line 89
    move-wide v3, v9

    .line 90
    :goto_1
    sub-double v19, v15, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    cmpl-double v23, v19, v1

    if-lez v23, :cond_2

    int-to-double v13, v0

    cmpg-double v23, v7, v13

    if-gez v23, :cond_2

    .line 91
    mul-double v13, v17, v21

    mul-double v23, v15, v3

    sub-double v13, v13, v23

    sub-double v23, v17, v15

    div-double v9, v13, v23

    .line 92
    move-wide/from16 v21, v3

    .line 93
    move-wide v3, v9

    .line 95
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpg-double v23, v13, v1

    if-gez v23, :cond_1

    .line 96
    mul-double v13, p1, v9

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v13, v13, v19

    mul-double v13, v13, p5

    mul-double v23, v9, p9

    add-double v23, v23, v19

    mul-double v23, v23, p3

    mul-double v23, v23, p1

    add-double v13, v13, v23

    add-double v13, v13, p7

    move-wide v11, v13

    .end local v11    # "y":D
    .local v13, "y":D
    goto :goto_2

    .line 98
    .end local v13    # "y":D
    .restart local v11    # "y":D
    :cond_1
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v13, v9, v19

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    mul-double v13, v13, p1

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    .line 99
    mul-double v13, p5, v5

    div-double v23, v19, v9

    add-double v23, v23, p9

    mul-double v23, v23, p3

    sub-double v25, v5, v19

    mul-double v23, v23, v25

    add-double v13, v13, v23

    add-double v13, v13, p7

    move-wide v11, v13

    .line 102
    :goto_2
    move-wide/from16 v15, v17

    .line 103
    move-wide/from16 v17, v11

    .line 104
    add-double v7, v7, v19

    move-wide/from16 v13, v19

    goto :goto_1

    .line 106
    :cond_2
    return-wide v9
.end method

.method static final checkValue(D)V
    .locals 2
    .param p0, "result"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 115
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 116
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 35
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 31
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    array-length v0, v1

    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 32
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 35
    :cond_0
    const-wide/16 v5, 0x0

    .local v5, "future_val":D
    const-wide/16 v7, 0x0

    .local v7, "type":D
    const-wide v9, 0x3fb999999999999aL    # 0.1

    .line 38
    .local v9, "estimate":D
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v1, v0

    invoke-static {v0, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 39
    .local v0, "v1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v13, 0x1

    aget-object v13, v1, v13

    invoke-static {v13, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v13

    .line 40
    .local v13, "v2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v14, 0x2

    aget-object v14, v1, v14

    invoke-static {v14, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v14

    .line 41
    .local v14, "v3":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v15, 0x0

    .line 42
    .local v15, "v4":Lorg/apache/poi/ss/formula/eval/ValueEval;
    array-length v11, v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v12, 0x4

    if-lt v11, v12, :cond_1

    .line 43
    :try_start_1
    aget-object v4, v1, v4

    invoke-static {v4, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v4

    goto :goto_0

    .line 63
    .end local v0    # "v1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v13    # "v2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v14    # "v3":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v15    # "v4":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    const-wide/16 v11, 0x0

    move-wide v13, v11

    .local v13, "payment":D
    move-wide v15, v11

    .local v15, "periods":D
    move-wide/from16 v17, v11

    .local v11, "rate":D
    .local v17, "present_val":D
    goto/16 :goto_1

    .line 44
    .end local v11    # "rate":D
    .end local v17    # "present_val":D
    .restart local v0    # "v1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v13, "v2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v14    # "v3":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v15, "v4":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 45
    .local v4, "v5":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_2
    array-length v11, v1
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_6

    const/4 v12, 0x5

    if-lt v11, v12, :cond_2

    .line 46
    const/4 v11, 0x4

    :try_start_3
    aget-object v12, v1, v11

    invoke-static {v12, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v11

    .line 47
    :cond_2
    const/4 v11, 0x0

    .line 48
    .local v11, "v6":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_4
    array-length v12, v1
    :try_end_4
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_4 .. :try_end_4} :catch_6

    move-wide/from16 v20, v5

    .end local v5    # "future_val":D
    .local v20, "future_val":D
    const/4 v5, 0x6

    if-lt v12, v5, :cond_3

    .line 49
    const/4 v6, 0x5

    :try_start_5
    aget-object v12, v1, v6

    invoke-static {v12, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    move-object v11, v6

    .line 51
    :cond_3
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v23
    :try_end_5
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 52
    .local v23, "periods":D
    :try_start_6
    invoke-static {v13}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v25
    :try_end_6
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_6 .. :try_end_6} :catch_4

    .line 53
    .local v25, "payment":D
    :try_start_7
    invoke-static {v14}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v27
    :try_end_7
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_7 .. :try_end_7} :catch_3

    .line 54
    .local v27, "present_val":D
    :try_start_8
    array-length v6, v1

    const/4 v12, 0x4

    if-lt v6, v12, :cond_4

    .line 55
    invoke-static {v15}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v29

    move-wide/from16 v20, v29

    .line 56
    :cond_4
    array-length v6, v1

    const/4 v12, 0x5

    if-lt v6, v12, :cond_5

    .line 57
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v18

    move-wide/from16 v7, v18

    .line 58
    :cond_5
    array-length v6, v1

    if-lt v6, v5, :cond_6

    .line 59
    invoke-static {v11}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v5

    move-wide v9, v5

    .line 60
    :cond_6
    move-object/from16 v22, p0

    move-wide/from16 v29, v20

    move-wide/from16 v31, v7

    move-wide/from16 v33, v9

    invoke-direct/range {v22 .. v34}, Lorg/apache/poi/ss/formula/functions/Rate;->calculateRate(DDDDDD)D

    move-result-wide v5
    :try_end_8
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_8 .. :try_end_8} :catch_2

    .line 62
    .local v5, "rate":D
    :try_start_9
    invoke-static {v5, v6}, Lorg/apache/poi/ss/formula/functions/Rate;->checkValue(D)V
    :try_end_9
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_9 .. :try_end_9} :catch_1

    .line 66
    .end local v0    # "v1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "v5":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v11    # "v6":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v13    # "v2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v14    # "v3":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v15    # "v4":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 68
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v5, v6}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 63
    :catch_1
    move-exception v0

    move-wide v11, v5

    move-wide/from16 v5, v20

    move-wide/from16 v15, v23

    move-wide/from16 v13, v25

    move-wide/from16 v17, v27

    goto :goto_1

    .end local v5    # "rate":D
    :catch_2
    move-exception v0

    const-wide/16 v4, 0x0

    move-wide v11, v4

    move-wide/from16 v5, v20

    move-wide/from16 v15, v23

    move-wide/from16 v13, v25

    move-wide/from16 v17, v27

    .local v11, "rate":D
    goto :goto_1

    .end local v11    # "rate":D
    .end local v27    # "present_val":D
    :catch_3
    move-exception v0

    const-wide/16 v4, 0x0

    move-wide/from16 v17, v4

    .restart local v17    # "present_val":D
    move-wide v11, v4

    move-wide/from16 v5, v20

    move-wide/from16 v15, v23

    move-wide/from16 v13, v25

    .restart local v11    # "rate":D
    goto :goto_1

    .end local v11    # "rate":D
    .end local v17    # "present_val":D
    .end local v25    # "payment":D
    :catch_4
    move-exception v0

    const-wide/16 v4, 0x0

    move-wide v13, v4

    .local v13, "payment":D
    move-wide/from16 v17, v4

    .restart local v17    # "present_val":D
    move-wide v11, v4

    move-wide/from16 v5, v20

    move-wide/from16 v15, v23

    .restart local v11    # "rate":D
    goto :goto_1

    .end local v11    # "rate":D
    .end local v13    # "payment":D
    .end local v17    # "present_val":D
    .end local v23    # "periods":D
    :catch_5
    move-exception v0

    const-wide/16 v4, 0x0

    move-wide v13, v4

    .restart local v13    # "payment":D
    move-wide v15, v4

    .local v15, "periods":D
    move-wide/from16 v17, v4

    .restart local v17    # "present_val":D
    move-wide v11, v4

    move-wide/from16 v5, v20

    .restart local v11    # "rate":D
    goto :goto_1

    .end local v11    # "rate":D
    .end local v13    # "payment":D
    .end local v15    # "periods":D
    .end local v17    # "present_val":D
    .end local v20    # "future_val":D
    .local v5, "future_val":D
    :catch_6
    move-exception v0

    move-wide/from16 v20, v5

    const-wide/16 v4, 0x0

    .end local v5    # "future_val":D
    .restart local v20    # "future_val":D
    move-wide v13, v4

    .restart local v13    # "payment":D
    move-wide v15, v4

    .restart local v15    # "periods":D
    move-wide/from16 v17, v4

    .restart local v17    # "present_val":D
    move-wide v11, v4

    move-wide/from16 v5, v20

    .line 64
    .end local v20    # "future_val":D
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v5    # "future_val":D
    .restart local v11    # "rate":D
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->printStackTrace()V

    .line 65
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    return-object v4
.end method
