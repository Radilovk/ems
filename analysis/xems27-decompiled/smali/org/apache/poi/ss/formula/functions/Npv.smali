.class public final Lorg/apache/poi/ss/formula/functions/Npv;
.super Ljava/lang/Object;
.source "Npv.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 38
    array-length v0, p1

    .line 39
    .local v0, "nArgs":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 40
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 44
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v2, p1, v1

    invoke-static {v2, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 46
    .local v2, "rate":D
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    new-array v4, v4, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 47
    .local v4, "vargs":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    array-length v6, v4

    invoke-static {p1, v5, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v1

    .line 50
    .local v1, "values":[D
    invoke-static {v2, v3, v1}, Lorg/apache/poi/ss/formula/functions/FinanceLib;->npv(D[D)D

    move-result-wide v5

    .line 51
    .local v5, "result":D
    invoke-static {v5, v6}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    .line 52
    new-instance v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v7, v5, v6}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 53
    .end local v1    # "values":[D
    .end local v2    # "rate":D
    .end local v4    # "vargs":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v5    # "result":D
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method
