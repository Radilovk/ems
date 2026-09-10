.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$26;
.super Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoArg;
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
    .line 274
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoArg;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(DD)D
    .locals 5
    .param p1, "d0"    # D
    .param p3, "d1"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    .line 276
    cmpl-double v0, p1, v2

    if-gtz v0, :cond_0

    cmpl-double v0, p3, v2

    if-lez v0, :cond_1

    .line 277
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 279
    :cond_1
    double-to-int v0, p1

    double-to-int v1, p3

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/MathX;->nChooseK(II)D

    move-result-wide v0

    return-wide v0
.end method
