.class public final Lorg/apache/poi/ss/formula/functions/Substitute;
.super Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;
.source "Substitute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;-><init>()V

    return-void
.end method

.method private static replaceAllOccurrences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "oldStr"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "newStr"    # Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 69
    .local v1, "startIndex":I
    const/4 v2, -0x1

    .line 71
    .local v2, "nextMatch":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 72
    if-gez v2, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 78
    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    goto :goto_0
.end method

.method private static replaceOneOccurrence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "oldStr"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "newStr"    # Ljava/lang/String;
    .param p3, "instanceNumber"    # I

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 86
    return-object p0

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 89
    .local v0, "startIndex":I
    const/4 v1, -0x1

    .line 90
    .local v1, "nextMatch":I
    const/4 v2, 0x0

    .line 92
    .local v2, "count":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 93
    if-gez v1, :cond_1

    .line 95
    return-object p0

    .line 97
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 98
    if-ne v2, p3, :cond_2

    .line 99
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 100
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 105
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v1, v3

    goto :goto_0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 36
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "oldStr":Ljava/lang/String;
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "searchStr":Ljava/lang/String;
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "newStr":Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Substitute;->replaceAllOccurrences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "oldStr":Ljava/lang/String;
    .end local v2    # "searchStr":Ljava/lang/String;
    .end local v3    # "newStr":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    nop

    .line 44
    new-instance v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 41
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 42
    .restart local v0    # "result":Ljava/lang/String;
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p6, "arg3"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 51
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "oldStr":Ljava/lang/String;
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "searchStr":Ljava/lang/String;
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "newStr":Ljava/lang/String;
    invoke-static {p6, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v4

    .line 56
    .local v4, "instanceNumber":I
    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 57
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 59
    :cond_0
    invoke-static {v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/functions/Substitute;->replaceOneOccurrence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "oldStr":Ljava/lang/String;
    .end local v2    # "searchStr":Ljava/lang/String;
    .end local v3    # "newStr":Ljava/lang/String;
    .end local v4    # "instanceNumber":I
    .local v0, "result":Ljava/lang/String;
    nop

    .line 63
    new-instance v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 60
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 61
    .restart local v0    # "result":Ljava/lang/String;
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method
