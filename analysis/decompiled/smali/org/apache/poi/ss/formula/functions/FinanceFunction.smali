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

    .prologue
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

    .prologue
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
    .locals 14
    .param p1, "ds"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 79
    const-wide/16 v8, 0x0

    .line 80
    .local v8, "arg3":D
    const-wide/16 v12, 0x0

    .line 82
    .local v12, "arg4":D
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong number of arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :pswitch_0
    const/4 v0, 0x4

    aget-wide v12, p1, v0

    .line 86
    :pswitch_1
    const/4 v0, 0x3

    aget-wide v8, p1, v0

    .line 92
    :pswitch_2
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    const/4 v0, 0x2

    aget-wide v6, p1, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, v12, v0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(DDDDZ)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
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

    .prologue
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
    .locals 20
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p6, "arg3"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p7, "arg4"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 50
    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6

    .line 51
    .local v6, "d0":D
    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v8

    .line 52
    .local v8, "d1":D
    move-object/from16 v0, p5

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v10

    .line 53
    .local v10, "d2":D
    move-object/from16 v0, p6

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v12

    .line 54
    .local v12, "d3":D
    move-object/from16 v0, p7

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v16

    .line 55
    .local v16, "d4":D
    const-wide/16 v14, 0x0

    cmpl-double v5, v16, v14

    if-eqz v5, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(DDDDZ)D

    move-result-wide v18

    .line 56
    .local v18, "result":D
    invoke-static/range {v18 .. v19}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-wide/from16 v0, v18

    invoke-direct {v5, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v6    # "d0":D
    .end local v8    # "d1":D
    .end local v10    # "d2":D
    .end local v12    # "d3":D
    .end local v16    # "d4":D
    .end local v18    # "result":D
    :goto_1
    return-object v5

    .line 55
    .restart local v6    # "d0":D
    .restart local v8    # "d1":D
    .restart local v10    # "d2":D
    .restart local v12    # "d3":D
    .restart local v16    # "d4":D
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 57
    .end local v6    # "d0":D
    .end local v8    # "d1":D
    .end local v10    # "d2":D
    .end local v12    # "d3":D
    .end local v16    # "d4":D
    :catch_0
    move-exception v4

    .line 58
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    goto :goto_1
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 71
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    aget-object v3, p1, v1

    aget-object v4, p1, v2

    aget-object v5, p1, v5

    sget-object v6, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

    sget-object v7, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_1
    aget-object v3, p1, v1

    aget-object v4, p1, v2

    aget-object v5, p1, v5

    aget-object v6, p1, v6

    sget-object v7, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_2
    aget-object v3, p1, v1

    aget-object v4, p1, v2

    aget-object v5, p1, v5

    aget-object v6, p1, v6

    const/4 v0, 0x4

    aget-object v7, p1, v0

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
