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

    .line 347
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;-><init>()V

    .line 349
    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 353
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 354
    .local v2, "d0":D
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sget-wide v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LOG_10_TO_BASE_e:D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    div-double/2addr v4, v0

    .line 355
    .local v4, "result":D
    :try_start_1
    invoke-static {v4, v5}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    .end local v2    # "d0":D
    nop

    .line 359
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 356
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v4    # "result":D
    :catch_1
    move-exception v2

    move-wide v4, v0

    move-object v0, v2

    .line 357
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v4    # "result":D
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 17
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    move/from16 v1, p1

    move/from16 v2, p2

    .line 365
    const-wide/16 v3, 0x0

    move-object/from16 v5, p3

    :try_start_0
    invoke-static {v5, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 366
    .local v6, "d0":D
    move-object/from16 v8, p4

    :try_start_1
    invoke-static {v8, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v9

    .line 367
    .local v9, "d1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    .line 368
    .local v11, "logE":D
    move-wide v13, v9

    .line 369
    .local v13, "base":D
    const-wide v15, 0x4005bf0a8b145769L    # Math.E

    cmpl-double v0, v13, v15

    if-nez v0, :cond_0

    .line 370
    move-wide v3, v11

    .local v3, "result":D
    goto :goto_0

    .line 372
    .end local v3    # "result":D
    :cond_0
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v3
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    div-double v3, v11, v3

    .line 374
    .restart local v3    # "result":D
    :goto_0
    :try_start_2
    invoke-static {v3, v4}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 377
    .end local v6    # "d0":D
    .end local v9    # "d1":D
    .end local v11    # "logE":D
    .end local v13    # "base":D
    nop

    .line 378
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 375
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v3    # "result":D
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v8, p4

    .line 376
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v3    # "result":D
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    return-object v6
.end method
