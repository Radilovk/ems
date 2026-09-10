.class public Lorg/apache/poi/ss/formula/functions/Complex;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Complex.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final DEFAULT_SUFFIX:Ljava/lang/String; = "i"

.field public static final SUPPORTED_SUFFIX:Ljava/lang/String; = "j"

.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Complex;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Complex;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Complex;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private isDoubleAnInt(D)Z
    .locals 3
    .param p1, "number"    # D

    .prologue
    .line 134
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "real_num"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "i_num"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 63
    new-instance v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string v0, "i"

    invoke-direct {v5, v0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Complex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 14
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "real_num"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "i_num"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "suffix"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 69
    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 73
    .local v10, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const-wide/16 v6, 0x0

    .line 75
    .local v6, "realNum":D
    :try_start_1
    invoke-static {v10}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 82
    :try_start_2
    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 86
    .local v9, "veINum":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const-wide/16 v4, 0x0

    .line 88
    .local v4, "realINum":D
    :try_start_3
    invoke-static {v9}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v4

    .line 93
    invoke-static/range {p5 .. p5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "suffixValue":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_0

    .line 95
    const-string v8, "i"

    .line 97
    :cond_0
    const-string v11, "i"

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "j"

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 98
    :cond_1
    sget-object v11, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 130
    .end local v4    # "realINum":D
    .end local v6    # "realNum":D
    .end local v8    # "suffixValue":Ljava/lang/String;
    .end local v9    # "veINum":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v10    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v11

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v11

    goto :goto_0

    .line 76
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v6    # "realNum":D
    .restart local v10    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_1
    move-exception v2

    .line 77
    .restart local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v11, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 83
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :catch_2
    move-exception v2

    .line 84
    .restart local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v11

    goto :goto_0

    .line 89
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v4    # "realINum":D
    .restart local v9    # "veINum":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_3
    move-exception v2

    .line 90
    .restart local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v11, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 100
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v8    # "suffixValue":Ljava/lang/String;
    :cond_2
    const-string v11, "i"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "j"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 101
    sget-object v11, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 104
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v11, ""

    invoke-direct {v3, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 105
    .local v3, "strb":Ljava/lang/StringBuffer;
    const-wide/16 v12, 0x0

    cmpl-double v11, v6, v12

    if-eqz v11, :cond_4

    .line 106
    invoke-direct {p0, v6, v7}, Lorg/apache/poi/ss/formula/functions/Complex;->isDoubleAnInt(D)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 107
    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v11}, Ljava/lang/Double;->intValue()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    :cond_4
    :goto_1
    const-wide/16 v12, 0x0

    cmpl-double v11, v4, v12

    if-eqz v11, :cond_7

    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-eqz v11, :cond_5

    .line 114
    const-wide/16 v12, 0x0

    cmpl-double v11, v4, v12

    if-lez v11, :cond_5

    .line 115
    const-string v11, "+"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :cond_5
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v4, v12

    if-eqz v11, :cond_6

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpl-double v11, v4, v12

    if-eqz v11, :cond_6

    .line 120
    invoke-direct {p0, v4, v5}, Lorg/apache/poi/ss/formula/functions/Complex;->isDoubleAnInt(D)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 121
    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v11}, Ljava/lang/Double;->intValue()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 127
    :cond_6
    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_7
    new-instance v11, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_8
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 123
    :cond_9
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    array-length v0, p1

    if-ne v0, v5, :cond_0

    .line 139
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    aget-object v2, p1, v3

    aget-object v3, p1, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Complex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 141
    :cond_0
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 142
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v2

    aget-object v3, p1, v3

    aget-object v4, p1, v4

    aget-object v5, p1, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Complex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0
.end method
