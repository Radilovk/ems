.class final Lorg/apache/poi/ss/formula/functions/TextFunction$1;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "TextFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/TextFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 90
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .local v0, "arg":I
    if-ltz v0, :cond_0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 97
    nop

    .line 98
    new-instance v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 92
    :cond_0
    :try_start_1
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .end local v0    # "arg":I
    .end local p1    # "srcRowIndex":I
    .end local p2    # "srcColumnIndex":I
    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    throw v1
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    .restart local v0    # "arg":I
    .restart local p1    # "srcRowIndex":I
    .restart local p2    # "srcColumnIndex":I
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v1

    goto :goto_0

    .end local v0    # "arg":I
    :catch_1
    move-exception v1

    const/4 v0, 0x0

    .line 96
    .restart local v0    # "arg":I
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method
