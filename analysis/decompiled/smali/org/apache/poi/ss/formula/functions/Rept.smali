.class public Lorg/apache/poi/ss/formula/functions/Rept;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "Rept.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "text"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "number_times"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 50
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 54
    .local v7, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v7}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "strText1":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 57
    .local v2, "numberOfTime":D
    :try_start_1
    invoke-static {p4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 62
    new-instance v8, Ljava/lang/Double;

    invoke-direct {v8, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v8}, Ljava/lang/Double;->intValue()I

    move-result v4

    .line 63
    .local v4, "numberOfTimeInt":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/2addr v8, v4

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 64
    .local v6, "strb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 65
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    .end local v2    # "numberOfTime":D
    .end local v4    # "numberOfTimeInt":I
    .end local v5    # "strText1":Ljava/lang/String;
    .end local v6    # "strb":Ljava/lang/StringBuffer;
    .end local v7    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v8

    .line 72
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_1
    return-object v8

    .line 58
    .restart local v2    # "numberOfTime":D
    .restart local v5    # "strText1":Ljava/lang/String;
    .restart local v7    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_1
    move-exception v0

    .line 59
    .restart local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_1

    .line 68
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v1    # "i":I
    .restart local v4    # "numberOfTimeInt":I
    .restart local v6    # "strb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x7fff

    if-le v8, v9, :cond_1

    .line 69
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_1

    .line 72
    :cond_1
    new-instance v8, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
