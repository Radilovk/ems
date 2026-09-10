.class public Lorg/apache/poi/ss/formula/functions/Rept;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "Rept.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "text"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "number_times"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 50
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .local v0, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 54
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "strText1":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 57
    .local v2, "numberOfTime":D
    :try_start_1
    invoke-static {p4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v2, v4

    .line 60
    nop

    .line 62
    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    .line 63
    .local v4, "numberOfTimeInt":I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    mul-int v6, v6, v4

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 64
    .local v5, "strb":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 68
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x7fff

    if-le v6, v7, :cond_1

    .line 69
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v6

    .line 72
    :cond_1
    new-instance v6, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 58
    .end local v4    # "numberOfTimeInt":I
    .end local v5    # "strb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v5

    .line 51
    .end local v0    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "strText1":Ljava/lang/String;
    .end local v2    # "numberOfTime":D
    .end local v4    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 52
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method
