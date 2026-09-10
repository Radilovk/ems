.class public final Lorg/apache/poi/ss/formula/functions/Replace;
.super Lorg/apache/poi/ss/formula/functions/Fixed4ArgFunction;
.source "Replace.java"


# direct methods
.method public constructor <init>()V
    .locals 0

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

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 51
    .local v2, "oldStr":Ljava/lang/String;
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v3
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 52
    .local v3, "startNum":I
    :try_start_2
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v1
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 53
    .local v1, "numChars":I
    :try_start_3
    invoke-static {p6, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 56
    .local v0, "newStr":Ljava/lang/String;
    nop

    .line 58
    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    if-gez v1, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, "strBuff":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v3, v5, :cond_1

    if-eqz v1, :cond_1

    .line 64
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v3, -0x1

    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 67
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le v3, v5, :cond_2

    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 70
    :cond_2
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    :goto_0
    new-instance v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 59
    .end local v4    # "strBuff":Ljava/lang/StringBuffer;
    :cond_3
    :goto_1
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v4

    .line 54
    .end local v0    # "newStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2

    .end local v1    # "numChars":I
    :catch_1
    move-exception v4

    goto :goto_2

    .end local v3    # "startNum":I
    :catch_2
    move-exception v4

    move v3, v1

    .restart local v0    # "newStr":Ljava/lang/String;
    .restart local v1    # "numChars":I
    .restart local v3    # "startNum":I
    :goto_2
    goto :goto_3

    .end local v0    # "newStr":Ljava/lang/String;
    .end local v1    # "numChars":I
    .end local v2    # "oldStr":Ljava/lang/String;
    .end local v3    # "startNum":I
    :catch_3
    move-exception v4

    move v3, v1

    .restart local v1    # "numChars":I
    .restart local v3    # "startNum":I
    move-object v2, v0

    .local v2, "newStr":Ljava/lang/String;
    move-object v7, v2

    move-object v0, v7

    .line 55
    .restart local v0    # "newStr":Ljava/lang/String;
    .local v2, "oldStr":Ljava/lang/String;
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_3
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    return-object v5
.end method
