.class public Lorg/apache/poi/ss/formula/functions/Subtotal;
.super Ljava/lang/Object;
.source "Subtotal.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
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

    .prologue
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

    .line 66
    :pswitch_0
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVERAGE:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 67
    :pswitch_1
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/Count;->subtotalInstance()Lorg/apache/poi/ss/formula/functions/Count;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/Counta;->subtotalInstance()Lorg/apache/poi/ss/formula/functions/Counta;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_3
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MAX:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_4
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MIN:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_5
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PRODUCT:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_6
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_7
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v1, "STDEVP"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_8
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUM:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_9
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v1, "VAR"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_a
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v1, "VARP"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 85
    array-length v6, p1

    add-int/lit8 v4, v6, -0x1

    .line 86
    .local v4, "nInnerArgs":I
    if-ge v4, v8, :cond_0

    .line 87
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 102
    :goto_0
    return-object v6

    .line 92
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p1, v6

    invoke-static {v6, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    .line 93
    .local v5, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v1

    .line 94
    .local v1, "functionCode":I
    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Subtotal;->findFunction(I)Lorg/apache/poi/ss/formula/functions/Function;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 99
    .local v3, "innerFunc":Lorg/apache/poi/ss/formula/functions/Function;
    new-array v2, v4, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 100
    .local v2, "innerArgs":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p1, v8, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    invoke-interface {v3, v2, p2, p3}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    goto :goto_0

    .line 95
    .end local v1    # "functionCode":I
    .end local v2    # "innerArgs":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v3    # "innerFunc":Lorg/apache/poi/ss/formula/functions/Function;
    .end local v5    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    goto :goto_0
.end method
