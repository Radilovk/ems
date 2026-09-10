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

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 16
    .param p1, "numberParam"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "placesParam"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p3, "skipThousandsSeparatorParam"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "srcRowIndex"    # I
    .param p5, "srcColumnIndex"    # I

    .prologue
    .line 73
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v9

    .line 76
    .local v9, "numberValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    new-instance v7, Ljava/math/BigDecimal;

    invoke-static {v9}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v14

    invoke-direct {v7, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    .line 78
    .local v7, "number":Ljava/math/BigDecimal;
    move-object/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    .line 81
    .local v11, "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v11}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v10

    .line 82
    .local v10, "places":I
    invoke-static/range {p3 .. p5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v13

    .line 85
    .local v13, "skipThousandsSeparatorValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v14, 0x0

    invoke-static {v13, v14}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 90
    .local v12, "skipThousandsSeparator":Ljava/lang/Boolean;
    sget-object v14, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v7, v10, v14}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 93
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v14}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    .line 94
    .local v6, "nf":Ljava/text/NumberFormat;
    move-object v0, v6

    check-cast v0, Ljava/text/DecimalFormat;

    move-object v5, v0

    .line 95
    .local v5, "formatter":Ljava/text/DecimalFormat;
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v5, v14}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 96
    if-ltz v10, :cond_1

    move v14, v10

    :goto_1
    invoke-virtual {v5, v14}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 97
    if-ltz v10, :cond_2

    .end local v10    # "places":I
    :goto_2
    invoke-virtual {v5, v10}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 98
    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, "numberString":Ljava/lang/String;
    new-instance v14, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v14, v8}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v5    # "formatter":Ljava/text/DecimalFormat;
    .end local v6    # "nf":Ljava/text/NumberFormat;
    .end local v7    # "number":Ljava/math/BigDecimal;
    .end local v8    # "numberString":Ljava/lang/String;
    .end local v9    # "numberValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v11    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v12    # "skipThousandsSeparator":Ljava/lang/Boolean;
    .end local v13    # "skipThousandsSeparatorValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_3
    return-object v14

    .line 95
    .restart local v5    # "formatter":Ljava/text/DecimalFormat;
    .restart local v6    # "nf":Ljava/text/NumberFormat;
    .restart local v7    # "number":Ljava/math/BigDecimal;
    .restart local v9    # "numberValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v10    # "places":I
    .restart local v11    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v12    # "skipThousandsSeparator":Ljava/lang/Boolean;
    .restart local v13    # "skipThousandsSeparatorValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 96
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 97
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 102
    .end local v5    # "formatter":Ljava/text/DecimalFormat;
    .end local v6    # "nf":Ljava/text/NumberFormat;
    .end local v7    # "number":Ljava/math/BigDecimal;
    .end local v9    # "numberValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v10    # "places":I
    .end local v11    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v12    # "skipThousandsSeparator":Ljava/lang/Boolean;
    .end local v13    # "skipThousandsSeparatorValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v4

    .line 103
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v14

    goto :goto_3
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
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

    .prologue
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

    .prologue
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
    .locals 6
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 65
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    aget-object v1, p1, v1

    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-direct {v2, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sget-object v3, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_1
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    sget-object v3, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_2
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    const/4 v0, 0x2

    aget-object v3, p1, v0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
