.class public Lorg/apache/poi/ss/formula/functions/Code;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "Code.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "textArg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 39
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 43
    .local v3, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 46
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 51
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v4

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_0

    .line 49
    .end local v1    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v2    # "text":Ljava/lang/String;
    .restart local v3    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 51
    .local v0, "code":I
    new-instance v4, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
