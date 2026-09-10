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

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 24
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 96
    :try_start_0
    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v13

    .line 97
    .local v13, "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v13}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 102
    .local v8, "dn":D
    const-wide/16 v18, 0x0

    cmpg-double v18, v8, v18

    if-ltz v18, :cond_0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v8, v18

    if-lez v18, :cond_1

    .line 103
    :cond_0
    sget-object v18, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 132
    .end local v8    # "dn":D
    .end local v13    # "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v18

    .line 98
    :catch_0
    move-exception v11

    .line 100
    .local v11, "e1":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v18, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 108
    .end local v11    # "e1":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v8    # "dn":D
    .restart local v13    # "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    const/16 v18, 0x1

    :try_start_1
    move/from16 v0, v18

    new-array v0, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p3, v18, v19

    invoke-static/range {v18 .. v18}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v5

    .line 109
    .local v5, "ds":[D
    array-length v4, v5

    .line 111
    .local v4, "N":I
    if-eqz v4, :cond_2

    const/16 v18, 0x1fff

    move/from16 v0, v18

    if-le v4, v0, :cond_3

    .line 112
    :cond_2
    sget-object v18, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 115
    :cond_3
    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v14, v18, v20

    .line 116
    .local v14, "n":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v14, v18

    if-nez v18, :cond_4

    .line 117
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v5, v0}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide v16

    .line 127
    .local v16, "result":D
    :goto_1
    invoke-static/range {v16 .. v17}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    new-instance v18, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0

    .line 118
    .end local v16    # "result":D
    :cond_4
    int-to-double v0, v4

    move-wide/from16 v18, v0

    cmpl-double v18, v14, v18

    if-nez v18, :cond_5

    .line 119
    const/16 v18, 0x1

    :try_start_2
    move/from16 v0, v18

    invoke-static {v5, v0}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthLargest([DI)D

    move-result-wide v16

    .restart local v16    # "result":D
    goto :goto_1

    .line 121
    .end local v16    # "result":D
    :cond_5
    double-to-int v12, v14

    .line 122
    .local v12, "k":I
    int-to-double v0, v12

    move-wide/from16 v18, v0

    sub-double v6, v14, v18

    .line 123
    .local v6, "d":D
    invoke-static {v5, v12}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide v18

    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    invoke-static {v5, v0}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide v20

    invoke-static {v5, v12}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v22

    sub-double v20, v20, v22

    mul-double v20, v20, v6

    add-double v16, v18, v20

    .restart local v16    # "result":D
    goto :goto_1

    .line 128
    .end local v4    # "N":I
    .end local v5    # "ds":[D
    .end local v6    # "d":D
    .end local v12    # "k":I
    .end local v14    # "n":D
    .end local v16    # "result":D
    :catch_1
    move-exception v10

    .line 129
    .local v10, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v18

    goto :goto_0
.end method
