.class public final Lorg/apache/poi/ss/formula/functions/Replace;
.super Lorg/apache/poi/ss/formula/functions/Fixed4ArgFunction;
.source "Replace.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed4ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p6, "arg3"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 50
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "oldStr":Ljava/lang/String;
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v4

    .line 52
    .local v4, "startNum":I
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v2

    .line 53
    .local v2, "numChars":I
    invoke-static {p6, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    .local v1, "newStr":Ljava/lang/String;
    const/4 v6, 0x1

    if-lt v4, v6, :cond_0

    if-gez v2, :cond_1

    .line 59
    :cond_0
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 72
    .end local v1    # "newStr":Ljava/lang/String;
    .end local v2    # "numChars":I
    .end local v3    # "oldStr":Ljava/lang/String;
    .end local v4    # "startNum":I
    :goto_0
    return-object v6

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    goto :goto_0

    .line 61
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v1    # "newStr":Ljava/lang/String;
    .restart local v2    # "numChars":I
    .restart local v3    # "oldStr":Ljava/lang/String;
    .restart local v4    # "startNum":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 63
    .local v5, "strBuff":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v4, v6, :cond_2

    if-eqz v2, :cond_2

    .line 64
    add-int/lit8 v6, v4, -0x1

    add-int/lit8 v7, v4, -0x1

    add-int/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 67
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v4, v6, :cond_3

    .line 68
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    :goto_1
    new-instance v6, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
