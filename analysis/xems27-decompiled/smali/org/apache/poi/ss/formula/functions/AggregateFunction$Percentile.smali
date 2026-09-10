.class final Lorg/apache/poi/ss/formula/functions/AggregateFunction$Percentile;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "AggregateFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Percentile"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    .line 96
    :try_start_0
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    nop

    .line 102
    const-wide/16 v0, 0x0

    cmpg-double p4, p1, v0

    if-ltz p4, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p4, p1, v0

    if-lez p4, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    const/4 p4, 0x1

    :try_start_1
    new-array v2, p4, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p3

    .line 109
    array-length v2, p3

    .line 111
    if-eqz v2, :cond_4

    const/16 v3, 0x1fff

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    add-int/lit8 v3, v2, -0x1

    int-to-double v3, v3

    mul-double v3, v3, p1

    add-double/2addr v3, v0

    .line 116
    cmpl-double p1, v3, v0

    if-nez p1, :cond_2

    .line 117
    invoke-static {p3, p4}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide p1

    goto :goto_0

    .line 118
    :cond_2
    int-to-double p1, v2

    cmpl-double v0, v3, p1

    if-nez v0, :cond_3

    .line 119
    invoke-static {p3, p4}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthLargest([DI)D

    move-result-wide p1

    goto :goto_0

    .line 121
    :cond_3
    double-to-int p1, v3

    .line 122
    int-to-double v0, p1

    sub-double/2addr v3, v0

    .line 123
    invoke-static {p3, p1}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide v0

    add-int/lit8 p2, p1, 0x1

    invoke-static {p3, p2}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide v5

    invoke-static {p3, p1}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide p1

    sub-double/2addr v5, p1

    mul-double v3, v3, v5

    add-double p1, v0, v3

    .line 127
    :goto_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    nop

    .line 132
    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p3

    .line 112
    :cond_4
    :goto_1
    :try_start_2
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    .line 128
    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1

    .line 103
    :cond_5
    :goto_2
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    .line 98
    :catch_1
    move-exception p1

    .line 100
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method
