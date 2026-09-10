.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$Log;
.super Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;
.source "NumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/NumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Log"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;-><init>()V

    .line 349
    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 353
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    .line 354
    .local v0, "d0":D
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    sget-wide v8, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LOG_10_TO_BASE_e:D

    div-double v4, v6, v8

    .line 355
    .local v4, "result":D
    invoke-static {v4, v5}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v0    # "d0":D
    .end local v4    # "result":D
    :goto_0
    return-object v3

    .line 356
    :catch_0
    move-exception v2

    .line 357
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    goto :goto_0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 18
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 365
    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6

    .line 366
    .local v6, "d0":D
    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v8

    .line 367
    .local v8, "d1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    .line 368
    .local v12, "logE":D
    move-wide v4, v8

    .line 369
    .local v4, "base":D
    const-wide v16, 0x4005bf0a8b145769L    # Math.E

    cmpl-double v11, v4, v16

    if-nez v11, :cond_0

    .line 370
    move-wide v14, v12

    .line 374
    .local v14, "result":D
    :goto_0
    invoke-static {v14, v15}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    new-instance v11, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v11, v14, v15}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v4    # "base":D
    .end local v6    # "d0":D
    .end local v8    # "d1":D
    .end local v12    # "logE":D
    .end local v14    # "result":D
    :goto_1
    return-object v11

    .line 372
    .restart local v4    # "base":D
    .restart local v6    # "d0":D
    .restart local v8    # "d1":D
    .restart local v12    # "logE":D
    :cond_0
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v16

    div-double v14, v12, v16

    .restart local v14    # "result":D
    goto :goto_0

    .line 375
    .end local v4    # "base":D
    .end local v6    # "d0":D
    .end local v8    # "d1":D
    .end local v12    # "logE":D
    .end local v14    # "result":D
    :catch_0
    move-exception v10

    .line 376
    .local v10, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v11

    goto :goto_1
.end method
