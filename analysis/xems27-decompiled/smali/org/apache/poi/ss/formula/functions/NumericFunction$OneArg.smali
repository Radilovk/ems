.class public abstract Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "NumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/NumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OneArg"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method protected final eval([Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 84
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    .line 88
    .local v0, "d":D
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;->evaluate(D)D

    move-result-wide v2

    return-wide v2

    .line 85
    .end local v0    # "d":D
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method protected abstract evaluate(D)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 75
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 76
    .local v2, "d":D
    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;->evaluate(D)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .local v0, "result":D
    :try_start_1
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .end local v2    # "d":D
    nop

    .line 81
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    .line 78
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "result":D
    :catch_1
    move-exception v2

    .line 79
    .restart local v0    # "result":D
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
