.class final Lorg/apache/poi/ss/formula/functions/AggregateFunction$LargeSmall;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "AggregateFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LargeSmall"
.end annotation


# instance fields
.field private final _isLarge:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "isLarge"    # Z

    .line 33
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 34
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$LargeSmall;->_isLarge:Z

    .line 35
    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 41
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .line 42
    .local v2, "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    move-wide v2, v3

    .line 46
    .local v2, "dn":D
    nop

    .line 48
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    .line 50
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 53
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 57
    .local v4, "k":I
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-static {v5}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v5

    .line 58
    .local v5, "ds":[D
    array-length v6, v5

    if-le v4, v6, :cond_1

    .line 59
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 61
    :cond_1
    iget-boolean v6, p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$LargeSmall;->_isLarge:Z

    if-eqz v6, :cond_2

    invoke-static {v5, v4}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthLargest([DI)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {v5, v4}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .local v0, "result":D
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    .end local v5    # "ds":[D
    nop

    .line 67
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v5, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v5

    .line 63
    :catch_0
    move-exception v5

    goto :goto_1

    .end local v0    # "result":D
    :catch_1
    move-exception v5

    .line 64
    .restart local v0    # "result":D
    .local v5, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_1
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    return-object v6

    .line 43
    .end local v0    # "result":D
    .end local v2    # "dn":D
    .end local v4    # "k":I
    .end local v5    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :catch_2
    move-exception v2

    .line 45
    .local v0, "dn":D
    .local v2, "e1":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v3
.end method
