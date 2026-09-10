.class public final Lorg/apache/poi/ss/formula/functions/Fixed;
.super Ljava/lang/Object;
.source "Fixed.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function1Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function2Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function3Arg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 15
    .param p1, "numberParam"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "placesParam"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p3, "skipThousandsSeparatorParam"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "srcRowIndex"    # I
    .param p5, "srcColumnIndex"    # I

    move/from16 v1, p4

    move/from16 v2, p5

    .line 73
    move-object/from16 v3, p1

    :try_start_0
    invoke-static {v3, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 76
    .local v0, "numberValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    new-instance v4, Ljava/math/BigDecimal;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .local v4, "number":Ljava/math/BigDecimal;
    move-object/from16 v5, p2

    :try_start_1
    invoke-static {v5, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    .line 81
    .local v6, "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v7

    .line 82
    .local v7, "places":I
    invoke-static/range {p3 .. p5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 85
    .local v8, "skipThousandsSeparatorValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 90
    .local v10, "skipThousandsSeparator":Ljava/lang/Boolean;
    sget-object v11, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v4, v7, v11}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v11

    move-object v4, v11

    .line 93
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v11}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    .line 94
    .local v11, "nf":Ljava/text/NumberFormat;
    move-object v12, v11

    check-cast v12, Ljava/text/DecimalFormat;

    .line 95
    .local v12, "formatter":Ljava/text/DecimalFormat;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v12, v13}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 96
    if-ltz v7, :cond_1

    move v13, v7

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v12, v13}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 97
    if-ltz v7, :cond_2

    move v9, v7

    :cond_2
    invoke-virtual {v12, v9}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 98
    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, "numberString":Ljava/lang/String;
    new-instance v13, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v13, v9}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v13

    .line 102
    .end local v0    # "numberValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "number":Ljava/math/BigDecimal;
    .end local v6    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v7    # "places":I
    .end local v8    # "skipThousandsSeparatorValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v9    # "numberString":Ljava/lang/String;
    .end local v10    # "skipThousandsSeparator":Ljava/lang/Boolean;
    .end local v11    # "nf":Ljava/text/NumberFormat;
    .end local v12    # "formatter":Ljava/text/DecimalFormat;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v5, p2

    .line 103
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_2
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 50
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sget-object v3, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 45
    sget-object v3, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 39
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 55
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 65
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 63
    :cond_0
    aget-object v0, p1, v1

    aget-object v4, p1, v2

    aget-object v5, p1, v3

    move-object v1, p0

    move-object v2, v0

    move-object v3, v4

    move-object v4, v5

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 60
    :cond_1
    aget-object v0, p1, v1

    aget-object v3, p1, v2

    sget-object v4, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-object v1, p0

    move-object v2, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 57
    :cond_2
    aget-object v2, p1, v1

    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sget-object v4, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method
