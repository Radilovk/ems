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

    .line 274
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoArg;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(DD)D
    .locals 3
    .param p1, "d0"    # D
    .param p3, "d1"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 276
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    cmpl-double v2, p3, v0

    if-gtz v2, :cond_0

    .line 279
    double-to-int v0, p1

    double-to-int v1, p3

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/MathX;->nChooseK(II)D

    move-result-wide v0

    return-wide v0

    .line 277
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method
