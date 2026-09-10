.class final Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "TextFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/TextFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchFind"
.end annotation


# instance fields
.field private final _isCaseSensitive:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isCaseSensitive"    # Z

    .prologue
    .line 338
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    .line 339
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;->_isCaseSensitive:Z

    .line 340
    return-void
.end method

.method private eval(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "haystack"    # Ljava/lang/String;
    .param p2, "needle"    # Ljava/lang/String;
    .param p3, "startIndex"    # I

    .prologue
    .line 367
    iget-boolean v1, p0, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;->_isCaseSensitive:Z

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 372
    .local v0, "result":I
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 373
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 375
    :goto_1
    return-object v1

    .line 370
    .end local v0    # "result":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0

    .line 375
    :cond_1
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 v2, v0, 0x1

    int-to-double v2, v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 343
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "needle":Ljava/lang/String;
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "haystack":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;->eval(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 347
    .end local v1    # "haystack":Ljava/lang/String;
    .end local v2    # "needle":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    goto :goto_0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 353
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "needle":Ljava/lang/String;
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "haystack":Ljava/lang/String;
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 357
    .local v3, "startpos":I
    if-gez v3, :cond_0

    .line 358
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 362
    .end local v1    # "haystack":Ljava/lang/String;
    .end local v2    # "needle":Ljava/lang/String;
    .end local v3    # "startpos":I
    :goto_0
    return-object v4

    .line 360
    .restart local v1    # "haystack":Ljava/lang/String;
    .restart local v2    # "needle":Ljava/lang/String;
    .restart local v3    # "startpos":I
    :cond_0
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;->eval(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 361
    .end local v1    # "haystack":Ljava/lang/String;
    .end local v2    # "needle":Ljava/lang/String;
    .end local v3    # "startpos":I
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_0
.end method
