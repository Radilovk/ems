.class public abstract Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoArg;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "NumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/NumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TwoArg"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method protected abstract evaluate(DD)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 102
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    .line 103
    .local v0, "d0":D
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 104
    .local v2, "d1":D
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoArg;->evaluate(DD)D

    move-result-wide v6

    .line 105
    .local v6, "result":D
    invoke-static {v6, v7}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v0    # "d0":D
    .end local v2    # "d1":D
    .end local v6    # "result":D
    :goto_0
    return-object v5

    .line 106
    :catch_0
    move-exception v4

    .line 107
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    goto :goto_0
.end method
