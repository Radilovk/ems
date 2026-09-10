.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$11;
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

    .line 168
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 170
    sget-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->DOLLAR_ARG2_DEFAULT:Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$11;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 178
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    .local v2, "val":D
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    .local v0, "d1":D
    nop

    .line 184
    double-to-int v4, v0

    .line 186
    .local v4, "nPlaces":I
    const/16 v5, 0x7f

    if-le v4, v5, :cond_0

    .line 187
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v5

    .line 194
    :cond_0
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v5, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v5

    .line 180
    .end local v0    # "d1":D
    .end local v4    # "nPlaces":I
    :catch_0
    move-exception v4

    .restart local v0    # "d1":D
    goto :goto_0

    .end local v0    # "d1":D
    .end local v2    # "val":D
    :catch_1
    move-exception v4

    move-wide v2, v0

    .local v2, "d1":D
    move-wide v6, v0

    move-wide v2, v6

    .line 181
    .restart local v0    # "d1":D
    .local v2, "val":D
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_0
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    return-object v5
.end method
