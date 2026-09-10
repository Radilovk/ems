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

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 208
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "text":Ljava/lang/String;
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v5

    .line 210
    .local v5, "startCharNum":I
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 214
    .local v3, "numChars":I
    add-int/lit8 v6, v5, -0x1

    .line 218
    .local v6, "startIx":I
    if-gez v6, :cond_0

    .line 219
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 230
    .end local v3    # "numChars":I
    .end local v5    # "startCharNum":I
    .end local v6    # "startIx":I
    .end local v7    # "text":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v8

    goto :goto_0

    .line 221
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v3    # "numChars":I
    .restart local v5    # "startCharNum":I
    .restart local v6    # "startIx":I
    .restart local v7    # "text":Ljava/lang/String;
    :cond_0
    if-gez v3, :cond_1

    .line 222
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 225
    .local v2, "len":I
    if-ltz v3, :cond_2

    if-le v6, v2, :cond_3

    .line 226
    :cond_2
    new-instance v8, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string v9, ""

    invoke-direct {v8, v9}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_3
    add-int v8, v6, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 229
    .local v1, "endIx":I
    invoke-virtual {v7, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "result":Ljava/lang/String;
    new-instance v8, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v8, v4}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
