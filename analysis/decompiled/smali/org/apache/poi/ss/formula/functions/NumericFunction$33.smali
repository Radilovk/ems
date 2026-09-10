.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$33;
.super Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;
.source "NumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/NumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 325
    sget-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->TRUNC_ARG2_DEFAULT:Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$33;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 14
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 331
    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 332
    .local v2, "d0":D
    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v4

    .line 333
    .local v4, "d1":D
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 334
    .local v8, "multi":D
    const-wide/16 v12, 0x0

    cmpg-double v7, v2, v12

    if-gez v7, :cond_0

    neg-double v12, v2

    mul-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    neg-double v12, v12

    div-double v10, v12, v8

    .line 336
    .local v10, "result":D
    :goto_0
    invoke-static {v10, v11}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    new-instance v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v7, v10, v11}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v2    # "d0":D
    .end local v4    # "d1":D
    .end local v8    # "multi":D
    .end local v10    # "result":D
    :goto_1
    return-object v7

    .line 335
    .restart local v2    # "d0":D
    .restart local v4    # "d1":D
    .restart local v8    # "multi":D
    :cond_0
    mul-double v12, v2, v8

    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    div-double v10, v12, v8

    .restart local v10    # "result":D
    goto :goto_0

    .line 337
    .end local v2    # "d0":D
    .end local v4    # "d1":D
    .end local v8    # "multi":D
    .end local v10    # "result":D
    :catch_0
    move-exception v6

    .line 338
    .local v6, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v7

    goto :goto_1
.end method
