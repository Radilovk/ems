.class public final Lorg/apache/poi/ss/formula/functions/Substitute;
.super Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;
.source "Substitute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;-><init>()V

    return-void
.end method

.method private static replaceAllOccurrences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "oldStr"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "newStr"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 69
    .local v2, "startIndex":I
    const/4 v0, -0x1

    .line 71
    .local v0, "nextMatch":I
    :goto_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 72
    if-gez v0, :cond_0

    .line 74
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 78
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v0, v3

    goto :goto_0
.end method

.method private static replaceOneOccurrence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "oldStr"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "newStr"    # Ljava/lang/String;
    .param p3, "instanceNumber"    # I

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 103
    .end local p0    # "oldStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 88
    .restart local p0    # "oldStr":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 89
    .local v3, "startIndex":I
    const/4 v1, -0x1

    .line 90
    .local v1, "nextMatch":I
    const/4 v0, 0x0

    .line 92
    .local v0, "count":I
    :goto_1
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 93
    if-ltz v1, :cond_0

    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 98
    if-ne v0, p3, :cond_2

    .line 99
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 100
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 105
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v3, v1, v4

    goto :goto_1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 36
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "oldStr":Ljava/lang/String;
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "searchStr":Ljava/lang/String;
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "newStr":Ljava/lang/String;
    invoke-static {v2, v4, v1}, Lorg/apache/poi/ss/formula/functions/Substitute;->replaceAllOccurrences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 44
    .local v3, "result":Ljava/lang/String;
    new-instance v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v5, v3}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    .end local v1    # "newStr":Ljava/lang/String;
    .end local v2    # "oldStr":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "searchStr":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    goto :goto_0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p6, "arg3"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 51
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "oldStr":Ljava/lang/String;
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "searchStr":Ljava/lang/String;
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "newStr":Ljava/lang/String;
    invoke-static {p6, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v1

    .line 56
    .local v1, "instanceNumber":I
    const/4 v6, 0x1

    if-ge v1, v6, :cond_0

    .line 57
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 63
    .end local v1    # "instanceNumber":I
    .end local v2    # "newStr":Ljava/lang/String;
    .end local v3    # "oldStr":Ljava/lang/String;
    .end local v5    # "searchStr":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 59
    .restart local v1    # "instanceNumber":I
    .restart local v2    # "newStr":Ljava/lang/String;
    .restart local v3    # "oldStr":Ljava/lang/String;
    .restart local v5    # "searchStr":Ljava/lang/String;
    :cond_0
    invoke-static {v3, v5, v2, v1}, Lorg/apache/poi/ss/formula/functions/Substitute;->replaceOneOccurrence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 63
    .local v4, "result":Ljava/lang/String;
    new-instance v6, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v6, v4}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v1    # "instanceNumber":I
    .end local v2    # "newStr":Ljava/lang/String;
    .end local v3    # "oldStr":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "searchStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    goto :goto_0
.end method
