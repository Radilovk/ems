.class public Lorg/apache/poi/ss/formula/functions/Subtotal;
.super Ljava/lang/Object;
.source "Subtotal.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findFunction(I)Lorg/apache/poi/ss/formula/functions/Function;
    .locals 2
    .param p0, "functionCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 65
    packed-switch p0, :pswitch_data_0

    .line 78
    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    const/16 v0, 0x70

    if-ge p0, v0, :cond_0

    .line 79
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v1, "SUBTOTAL - with \'exclude hidden values\' option"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v1, "VARP"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v1, "VAR"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_2
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUM:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_3
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v1, "STDEVP"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_4
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_5
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PRODUCT:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 70
    :pswitch_6
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MIN:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 69
    :pswitch_7
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MAX:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_8
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/Counta;->subtotalInstance()Lorg/apache/poi/ss/formula/functions/Counta;

    move-result-object v0

    return-object v0

    .line 67
    :pswitch_9
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/Count;->subtotalInstance()Lorg/apache/poi/ss/formula/functions/Count;

    move-result-object v0

    return-object v0

    .line 66
    :pswitch_a
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVERAGE:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 85
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 86
    .local v0, "nInnerArgs":I
    if-ge v0, v1, :cond_0

    .line 87
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 92
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    aget-object v4, p1, v2

    invoke-static {v4, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 93
    .local v4, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v5

    .line 94
    .local v5, "functionCode":I
    invoke-static {v5}, Lorg/apache/poi/ss/formula/functions/Subtotal;->findFunction(I)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v4    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v5    # "functionCode":I
    .local v3, "innerFunc":Lorg/apache/poi/ss/formula/functions/Function;
    nop

    .line 99
    new-array v4, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 100
    .local v4, "innerArgs":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p1, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    invoke-interface {v3, v4, p2, p3}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 95
    .end local v3    # "innerFunc":Lorg/apache/poi/ss/formula/functions/Function;
    .end local v4    # "innerArgs":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 96
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v2, "innerFunc":Lorg/apache/poi/ss/formula/functions/Function;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
