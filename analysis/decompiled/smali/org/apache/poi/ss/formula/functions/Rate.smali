.class public Lorg/apache/poi/ss/formula/functions/Rate;
.super Ljava/lang/Object;
.source "Rate.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateRate(DDDDDD)D
    .locals 29
    .param p1, "nper"    # D
    .param p3, "pmt"    # D
    .param p5, "pv"    # D
    .param p7, "fv"    # D
    .param p9, "type"    # D
    .param p11, "guess"    # D

    .prologue
    .line 73
    const/16 v2, 0x14

    .line 74
    .local v2, "FINANCIAL_MAX_ITERATIONS":I
    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 76
    .local v4, "FINANCIAL_PRECISION":D
    const-wide/16 v14, 0x0

    .local v14, "x1":D
    const-wide/16 v6, 0x0

    .local v6, "f":D
    const-wide/16 v8, 0x0

    .line 77
    .local v8, "i":D
    move-wide/from16 v10, p11

    .line 78
    .local v10, "rate":D
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    cmpg-double v3, v22, v4

    if-gez v3, :cond_0

    .line 79
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v24, p1, v10

    add-double v22, v22, v24

    mul-double v22, v22, p5

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v26, v10, p9

    add-double v24, v24, v26

    mul-double v24, v24, p3

    mul-double v24, v24, p1

    add-double v22, v22, v24

    add-double v16, v22, p7

    .line 84
    .local v16, "y":D
    :goto_0
    mul-double v22, p3, p1

    add-double v22, v22, p5

    add-double v18, v22, p7

    .line 85
    .local v18, "y0":D
    mul-double v22, p5, v6

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v24, v24, v10

    add-double v24, v24, p9

    mul-double v24, v24, p3

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v26, v6, v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    add-double v20, v22, p7

    .line 88
    .local v20, "y1":D
    const-wide/16 v12, 0x0

    .local v12, "x0":D
    move-wide v8, v12

    .line 89
    move-wide v14, v10

    .line 90
    :goto_1
    sub-double v22, v18, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    cmpl-double v3, v22, v4

    if-lez v3, :cond_2

    int-to-double v0, v2

    move-wide/from16 v22, v0

    cmpg-double v3, v8, v22

    if-gez v3, :cond_2

    .line 91
    mul-double v22, v20, v12

    mul-double v24, v18, v14

    sub-double v22, v22, v24

    sub-double v24, v20, v18

    div-double v10, v22, v24

    .line 92
    move-wide v12, v14

    .line 93
    move-wide v14, v10

    .line 95
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    cmpg-double v3, v22, v4

    if-gez v3, :cond_1

    .line 96
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v24, p1, v10

    add-double v22, v22, v24

    mul-double v22, v22, p5

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v26, v10, p9

    add-double v24, v24, v26

    mul-double v24, v24, p3

    mul-double v24, v24, p1

    add-double v22, v22, v24

    add-double v16, v22, p7

    .line 102
    :goto_2
    move-wide/from16 v18, v20

    .line 103
    move-wide/from16 v20, v16

    .line 104
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v22

    goto :goto_1

    .line 81
    .end local v12    # "x0":D
    .end local v16    # "y":D
    .end local v18    # "y0":D
    .end local v20    # "y1":D
    :cond_0
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v22, v22, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->log(D)D

    move-result-wide v22

    mul-double v22, v22, p1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    .line 82
    mul-double v22, p5, v6

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v24, v24, v10

    add-double v24, v24, p9

    mul-double v24, v24, p3

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v26, v6, v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    add-double v16, v22, p7

    .restart local v16    # "y":D
    goto/16 :goto_0

    .line 98
    .restart local v12    # "x0":D
    .restart local v18    # "y0":D
    .restart local v20    # "y1":D
    :cond_1
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v22, v22, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->log(D)D

    move-result-wide v22

    mul-double v22, v22, p1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    .line 99
    mul-double v22, p5, v6

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v24, v24, v10

    add-double v24, v24, p9

    mul-double v24, v24, p3

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v26, v6, v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    add-double v16, v22, p7

    goto :goto_2

    .line 106
    :cond_2
    return-wide v10
.end method

.method static final checkValue(D)V
    .locals 2
    .param p0, "result"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 118
    :cond_1
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 25
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    .line 31
    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ge v3, v0, :cond_0

    .line 32
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 68
    :goto_0
    return-object v3

    .line 35
    :cond_0
    const-wide/16 v10, 0x0

    .local v10, "future_val":D
    const-wide/16 v12, 0x0

    .local v12, "type":D
    const-wide v14, 0x3fb999999999999aL    # 0.1

    .line 38
    .local v14, "estimate":D
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v18

    .line 39
    .local v18, "v1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v3, 0x1

    aget-object v3, p1, v3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v19

    .line 40
    .local v19, "v2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v3, 0x2

    aget-object v3, p1, v3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v20

    .line 41
    .local v20, "v3":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/16 v21, 0x0

    .line 42
    .local v21, "v4":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v24, 0x4

    move/from16 v0, v24

    if-lt v3, v0, :cond_1

    .line 43
    const/4 v3, 0x3

    aget-object v3, p1, v3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v21

    .line 44
    :cond_1
    const/16 v22, 0x0

    .line 45
    .local v22, "v5":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v24, 0x5

    move/from16 v0, v24

    if-lt v3, v0, :cond_2

    .line 46
    const/4 v3, 0x4

    aget-object v3, p1, v3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v22

    .line 47
    :cond_2
    const/16 v23, 0x0

    .line 48
    .local v23, "v6":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v24, 0x6

    move/from16 v0, v24

    if-lt v3, v0, :cond_3

    .line 49
    const/4 v3, 0x5

    aget-object v3, p1, v3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v23

    .line 51
    :cond_3
    invoke-static/range {v18 .. v18}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4

    .line 52
    .local v4, "periods":D
    invoke-static/range {v19 .. v19}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v6

    .line 53
    .local v6, "payment":D
    invoke-static/range {v20 .. v20}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v8

    .line 54
    .local v8, "present_val":D
    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v24, 0x4

    move/from16 v0, v24

    if-lt v3, v0, :cond_4

    .line 55
    invoke-static/range {v21 .. v21}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v10

    .line 56
    :cond_4
    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v24, 0x5

    move/from16 v0, v24

    if-lt v3, v0, :cond_5

    .line 57
    invoke-static/range {v22 .. v22}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v12

    .line 58
    :cond_5
    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v24, 0x6

    move/from16 v0, v24

    if-lt v3, v0, :cond_6

    .line 59
    invoke-static/range {v23 .. v23}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v14

    :cond_6
    move-object/from16 v3, p0

    .line 60
    invoke-direct/range {v3 .. v15}, Lorg/apache/poi/ss/formula/functions/Rate;->calculateRate(DDDDDD)D

    move-result-wide v16

    .line 62
    .local v16, "rate":D
    invoke-static/range {v16 .. v17}, Lorg/apache/poi/ss/formula/functions/Rate;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-wide/from16 v0, v16

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto/16 :goto_0

    .line 63
    .end local v4    # "periods":D
    .end local v6    # "payment":D
    .end local v8    # "present_val":D
    .end local v16    # "rate":D
    .end local v18    # "v1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v19    # "v2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v20    # "v3":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v21    # "v4":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v22    # "v5":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v23    # "v6":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->printStackTrace()V

    .line 65
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    goto/16 :goto_0
.end method
