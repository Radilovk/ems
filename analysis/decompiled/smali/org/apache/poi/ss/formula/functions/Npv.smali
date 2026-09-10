.class public final Lorg/apache/poi/ss/formula/functions/Npv;
.super Ljava/lang/Object;
.source "Npv.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 11
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    .line 38
    array-length v1, p1

    .line 39
    .local v1, "nArgs":I
    const/4 v8, 0x2

    if-ge v1, v8, :cond_0

    .line 40
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 54
    :goto_0
    return-object v8

    .line 44
    :cond_0
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p1, v8

    invoke-static {v8, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 46
    .local v2, "rate":D
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    new-array v7, v8, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 47
    .local v7, "vargs":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v8, 0x1

    const/4 v9, 0x0

    array-length v10, v7

    invoke-static {p1, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    invoke-static {v7}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v6

    .line 50
    .local v6, "values":[D
    invoke-static {v2, v3, v6}, Lorg/apache/poi/ss/formula/functions/FinanceLib;->npv(D[D)D

    move-result-wide v4

    .line 51
    .local v4, "result":D
    invoke-static {v4, v5}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    .line 52
    new-instance v8, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v8, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v2    # "rate":D
    .end local v4    # "result":D
    .end local v6    # "values":[D
    .end local v7    # "vargs":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v8

    goto :goto_0
.end method
