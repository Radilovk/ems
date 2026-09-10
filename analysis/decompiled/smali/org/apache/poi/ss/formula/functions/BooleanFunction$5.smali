.class final Lorg/apache/poi/ss/formula/functions/BooleanFunction$5;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "BooleanFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/BooleanFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v4, 0x0

    .line 148
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 149
    .local v3, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 150
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    move v1, v4

    .line 155
    .local v1, "boolArgVal":Z
    :goto_0
    if-nez v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v4

    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v1    # "boolArgVal":Z
    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_1
    return-object v4

    .line 150
    .restart local v0    # "b":Ljava/lang/Boolean;
    .restart local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 151
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_1
.end method
