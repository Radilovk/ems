.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$28;
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

    .line 293
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

    .line 295
    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_0

    .line 298
    invoke-static {p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/functions/MathX;->mod(DD)D

    move-result-wide v0

    return-wide v0

    .line 296
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method
