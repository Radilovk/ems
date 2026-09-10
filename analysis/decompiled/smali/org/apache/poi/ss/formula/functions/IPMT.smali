.class public Lorg/apache/poi/ss/formula/functions/IPMT;
.super Lorg/apache/poi/ss/formula/functions/NumericFunction;
.source "IPMT.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public eval([Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 16
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 32
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-eq v14, v15, :cond_0

    .line 33
    new-instance v14, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v15, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v14, v15}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v14

    .line 37
    :cond_0
    const/4 v14, 0x0

    aget-object v14, p1, v14

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v14, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v10

    .line 38
    .local v10, "v1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v14, 0x1

    aget-object v14, p1, v14

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v14, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    .line 39
    .local v11, "v2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v14, 0x2

    aget-object v14, p1, v14

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v14, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v12

    .line 40
    .local v12, "v3":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v14, 0x3

    aget-object v14, p1, v14

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v14, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v13

    .line 42
    .local v13, "v4":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v10}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v2

    .line 43
    .local v2, "interestRate":D
    invoke-static {v11}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v4

    .line 44
    .local v4, "period":I
    invoke-static {v12}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v5

    .line 45
    .local v5, "numberPayments":I
    invoke-static {v13}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v6

    .line 47
    .local v6, "PV":D
    invoke-static/range {v2 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIID)D

    move-result-wide v8

    .line 49
    .local v8, "result":D
    invoke-static {v8, v9}, Lorg/apache/poi/ss/formula/functions/IPMT;->checkValue(D)V

    .line 51
    return-wide v8
.end method
