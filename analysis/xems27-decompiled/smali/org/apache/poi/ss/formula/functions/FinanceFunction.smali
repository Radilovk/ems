.class public abstract Lorg/apache/poi/ss/formula/functions/FinanceFunction;
.super Ljava/lang/Object;
.source "FinanceFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function3Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function4Arg;


# static fields
.field private static final DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

.field private static final DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

.field public static final FV:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final NPER:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final PMT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final PV:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-object v0, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 31
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 98
    new-instance v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/FinanceFunction$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->FV:Lorg/apache/poi/ss/formula/functions/Function;

    .line 103
    new-instance v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/FinanceFunction$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->NPER:Lorg/apache/poi/ss/formula/functions/Function;

    .line 108
    new-instance v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/FinanceFunction$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->PMT:Lorg/apache/poi/ss/formula/functions/Function;

    .line 113
    new-instance v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction$4;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/FinanceFunction$4;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->PV:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract evaluate(DDDDZ)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation
.end method

.method protected evaluate([D)D
    .locals 16
    .param p1, "ds"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 79
    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    .line 80
    .local v1, "arg3":D
    const-wide/16 v3, 0x0

    .line 82
    .local v3, "arg4":D
    array-length v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v7, 0x4

    if-eq v5, v7, :cond_1

    const/4 v8, 0x5

    if-ne v5, v8, :cond_0

    .line 84
    aget-wide v3, v0, v7

    goto :goto_0

    .line 90
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Wrong number of arguments"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_1
    :goto_0
    aget-wide v1, v0, v6

    .line 88
    :cond_2
    nop

    .line 92
    const/4 v5, 0x0

    aget-wide v6, v0, v5

    const/4 v8, 0x1

    aget-wide v9, v0, v8

    const/4 v11, 0x2

    aget-wide v11, v0, v11

    const-wide/16 v13, 0x0

    cmpl-double v15, v3, v13

    if-eqz v15, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v5, p0

    move-wide v8, v9

    move-wide v10, v11

    move-wide v12, v1

    invoke-virtual/range {v5 .. v14}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(DDDDZ)D

    move-result-wide v5

    return-wide v5
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 40
    sget-object v6, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p6, "arg3"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 44
    sget-object v7, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 22
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p6, "arg3"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p7, "arg4"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    move/from16 v1, p1

    move/from16 v2, p2

    .line 50
    move-object/from16 v5, p3

    :try_start_0
    invoke-static {v5, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v7

    .line 51
    .local v7, "d0":D
    move-object/from16 v15, p4

    invoke-static {v15, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v9

    .line 52
    .local v9, "d1":D
    move-object/from16 v6, p5

    invoke-static {v6, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v11

    .line 53
    .local v11, "d2":D
    move-object/from16 v13, p6

    invoke-static {v13, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v16
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    move-wide/from16 v13, v16

    .line 54
    .local v13, "d3":D
    move-object/from16 v3, p7

    :try_start_1
    invoke-static {v3, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v18

    .line 55
    .local v18, "d4":D
    const-wide/16 v16, 0x0

    cmpl-double v0, v18, v16

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v6, p0

    move v15, v0

    invoke-virtual/range {v6 .. v15}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(DDDDZ)D

    move-result-wide v15
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v20, v15

    .line 56
    .local v20, "result":D
    :try_start_2
    invoke-static/range {v20 .. v21}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    .end local v7    # "d0":D
    .end local v9    # "d1":D
    .end local v11    # "d2":D
    .end local v13    # "d3":D
    .end local v18    # "d4":D
    nop

    .line 60
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-wide/from16 v6, v20

    .end local v20    # "result":D
    .local v6, "result":D
    invoke-direct {v0, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 57
    .end local v6    # "result":D
    .restart local v20    # "result":D
    :catch_0
    move-exception v0

    move-wide/from16 v6, v20

    .end local v20    # "result":D
    .restart local v6    # "result":D
    goto :goto_2

    .end local v6    # "result":D
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v3, p7

    :goto_1
    const-wide/16 v6, 0x0

    move-wide/from16 v20, v6

    .line 58
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v20    # "result":D
    :goto_2
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    return-object v4
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 63
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    const/4 v6, 0x5

    if-eq v0, v6, :cond_0

    .line 71
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 69
    :cond_0
    aget-object v0, p1, v3

    aget-object v6, p1, v2

    aget-object v7, p1, v1

    aget-object v8, p1, v4

    aget-object v9, p1, v5

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    invoke-virtual/range {v1 .. v8}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 67
    :cond_1
    aget-object v0, p1, v3

    aget-object v5, p1, v2

    aget-object v6, p1, v1

    aget-object v7, p1, v4

    sget-object v8, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual/range {v1 .. v8}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 65
    :cond_2
    aget-object v4, p1, v3

    aget-object v5, p1, v2

    aget-object v6, p1, v1

    sget-object v7, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

    sget-object v8, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v8}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method
