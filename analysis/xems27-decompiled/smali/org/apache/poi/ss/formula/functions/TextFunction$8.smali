.class final Lorg/apache/poi/ss/formula/functions/TextFunction$8;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
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

    .line 200
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 208
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 209
    .local v1, "text":Ljava/lang/String;
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v2
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    .local v2, "startCharNum":I
    :try_start_2
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v0
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    .local v0, "numChars":I
    nop

    .line 214
    add-int/lit8 v3, v2, -0x1

    .line 218
    .local v3, "startIx":I
    if-gez v3, :cond_0

    .line 219
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v4

    .line 221
    :cond_0
    if-gez v0, :cond_1

    .line 222
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v4

    .line 224
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 225
    .local v4, "len":I
    if-ltz v0, :cond_3

    if-le v3, v4, :cond_2

    goto :goto_0

    .line 228
    :cond_2
    add-int v5, v3, v0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 229
    .local v5, "endIx":I
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "result":Ljava/lang/String;
    new-instance v7, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v7, v6}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v7

    .line 226
    .end local v5    # "endIx":I
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string v6, ""

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 211
    .end local v0    # "numChars":I
    .end local v3    # "startIx":I
    .end local v4    # "len":I
    :catch_0
    move-exception v3

    .restart local v0    # "numChars":I
    goto :goto_2

    .end local v0    # "numChars":I
    .end local v2    # "startCharNum":I
    :catch_1
    move-exception v3

    goto :goto_1

    .end local v1    # "text":Ljava/lang/String;
    :catch_2
    move-exception v3

    const/4 v1, 0x0

    .restart local v1    # "text":Ljava/lang/String;
    :goto_1
    move v2, v0

    .local v2, "numChars":I
    move v8, v2

    move v0, v8

    .line 212
    .restart local v0    # "numChars":I
    .local v2, "startCharNum":I
    .local v3, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_2
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    return-object v4
.end method
