.class public Lorg/apache/poi/ss/formula/functions/PPMT;
.super Lorg/apache/poi/ss/formula/functions/NumericFunction;
.source "PPMT.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public eval([Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 19
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 34
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    array-length v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 39
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 40
    .local v3, "v1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 41
    .local v4, "v2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    .line 42
    .local v5, "v3":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    .line 44
    .local v6, "v4":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v13

    .line 45
    .local v13, "interestRate":D
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v15

    .line 46
    .local v15, "period":I
    invoke-static {v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v16

    .line 47
    .local v16, "numberPayments":I
    invoke-static {v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v17

    .line 49
    .local v17, "PV":D
    move-wide v7, v13

    move v9, v15

    move/from16 v10, v16

    move-wide/from16 v11, v17

    invoke-static/range {v7 .. v12}, Lorg/apache/poi/ss/formula/functions/Finance;->ppmt(DIID)D

    move-result-wide v7

    .line 51
    .local v7, "result":D
    invoke-static {v7, v8}, Lorg/apache/poi/ss/formula/functions/PPMT;->checkValue(D)V

    .line 53
    return-wide v7

    .line 35
    .end local v3    # "v1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "v2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v5    # "v3":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v6    # "v4":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v7    # "result":D
    .end local v13    # "interestRate":D
    .end local v15    # "period":I
    .end local v16    # "numberPayments":I
    .end local v17    # "PV":D
    :cond_0
    new-instance v3, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v3
.end method
