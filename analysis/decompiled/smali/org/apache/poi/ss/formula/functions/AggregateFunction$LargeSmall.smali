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

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 34
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$LargeSmall;->_isLarge:Z

    .line 35
    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 14
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 41
    :try_start_0
    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v10

    .line 42
    .local v10, "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v10}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 48
    .local v2, "dn":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v2, v12

    if-gez v11, :cond_0

    .line 50
    sget-object v11, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 67
    .end local v2    # "dn":D
    .end local v10    # "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v11

    .line 43
    :catch_0
    move-exception v6

    .line 45
    .local v6, "e1":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v11, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 53
    .end local v6    # "e1":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v2    # "dn":D
    .restart local v10    # "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 57
    .local v7, "k":I
    const/4 v11, 0x1

    :try_start_1
    new-array v11, v11, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v12, 0x0

    aput-object p3, v11, v12

    invoke-static {v11}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v4

    .line 58
    .local v4, "ds":[D
    array-length v11, v4

    if-le v7, v11, :cond_1

    .line 59
    sget-object v11, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 61
    :cond_1
    iget-boolean v11, p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$LargeSmall;->_isLarge:Z

    if-eqz v11, :cond_2

    invoke-static {v4, v7}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthLargest([DI)D

    move-result-wide v8

    .line 62
    .local v8, "result":D
    :goto_1
    invoke-static {v8, v9}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    new-instance v11, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v11, v8, v9}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0

    .line 61
    .end local v8    # "result":D
    :cond_2
    :try_start_2
    invoke-static {v4, v7}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v8

    goto :goto_1

    .line 63
    .end local v4    # "ds":[D
    :catch_1
    move-exception v5

    .line 64
    .local v5, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v11

    goto :goto_0
.end method
