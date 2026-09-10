.class public final Lorg/apache/poi/ss/formula/functions/Value;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "Value.java"


# static fields
.field private static final MIN_DISTANCE_BETWEEN_THOUSANDS_SEPARATOR:I = 0x4

.field private static final ZERO:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Value;->ZERO:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method

.method private static convertTextToNumber(Ljava/lang/String;)Ljava/lang/Double;
    .locals 22
    .param p0, "strText"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v7, 0x0

    .line 64
    .local v7, "foundCurrency":Z
    const/4 v11, 0x0

    .line 65
    .local v11, "foundUnaryPlus":Z
    const/4 v10, 0x0

    .line 66
    .local v10, "foundUnaryMinus":Z
    const/4 v9, 0x0

    .line 68
    .local v9, "foundPercentage":Z
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    .line 70
    .local v14, "len":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_0

    .line 71
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 72
    .local v2, "ch":C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-nez v18, :cond_0

    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    .line 103
    .end local v2    # "ch":C
    :cond_0
    if-lt v12, v14, :cond_9

    .line 105
    if-nez v7, :cond_1

    if-nez v10, :cond_1

    if-eqz v11, :cond_8

    .line 106
    :cond_1
    const/16 v18, 0x0

    .line 190
    :goto_1
    return-object v18

    .line 75
    .restart local v2    # "ch":C
    :cond_2
    sparse-switch v2, :sswitch_data_0

    .line 100
    const/16 v18, 0x0

    goto :goto_1

    .line 80
    :sswitch_0
    if-eqz v7, :cond_3

    .line 82
    const/16 v18, 0x0

    goto :goto_1

    .line 84
    :cond_3
    const/4 v7, 0x1

    .line 70
    :goto_2
    :sswitch_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 87
    :sswitch_2
    if-nez v10, :cond_4

    if-eqz v11, :cond_5

    .line 88
    :cond_4
    const/16 v18, 0x0

    goto :goto_1

    .line 90
    :cond_5
    const/4 v11, 0x1

    .line 91
    goto :goto_2

    .line 93
    :sswitch_3
    if-nez v10, :cond_6

    if-eqz v11, :cond_7

    .line 94
    :cond_6
    const/16 v18, 0x0

    goto :goto_1

    .line 96
    :cond_7
    const/4 v10, 0x1

    .line 97
    goto :goto_2

    .line 108
    .end local v2    # "ch":C
    :cond_8
    sget-object v18, Lorg/apache/poi/ss/formula/functions/Value;->ZERO:Ljava/lang/Double;

    goto :goto_1

    .line 113
    :cond_9
    const/4 v8, 0x0

    .line 114
    .local v8, "foundDecimalPoint":Z
    const/16 v13, -0x8000

    .line 116
    .local v13, "lastThousandsSeparatorIndex":I
    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 117
    .local v17, "sb":Ljava/lang/StringBuffer;
    :goto_3
    if-ge v12, v14, :cond_12

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 119
    .restart local v2    # "ch":C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 120
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    :cond_a
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 123
    :cond_b
    sparse-switch v2, :sswitch_data_1

    .line 174
    const/16 v18, 0x0

    goto :goto_1

    .line 125
    :sswitch_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 127
    .local v15, "remainingTextTrimmed":Ljava/lang/String;
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 128
    const/4 v9, 0x1

    .line 129
    goto :goto_4

    .line 131
    :cond_c
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    .line 133
    const/16 v18, 0x0

    goto :goto_1

    .line 137
    .end local v15    # "remainingTextTrimmed":Ljava/lang/String;
    :sswitch_5
    if-eqz v8, :cond_d

    .line 138
    const/16 v18, 0x0

    goto :goto_1

    .line 140
    :cond_d
    sub-int v18, v12, v13

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    .line 141
    const/16 v18, 0x0

    goto :goto_1

    .line 143
    :cond_e
    const/4 v8, 0x1

    .line 144
    const/16 v18, 0x2e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 147
    :sswitch_6
    if-eqz v8, :cond_f

    .line 149
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 151
    :cond_f
    sub-int v3, v12, v13

    .line 153
    .local v3, "distanceBetweenThousandsSeparators":I
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v3, v0, :cond_10

    .line 154
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 156
    :cond_10
    move v13, v12

    .line 158
    goto :goto_4

    .line 162
    .end local v3    # "distanceBetweenThousandsSeparators":I
    :sswitch_7
    sub-int v18, v12, v13

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    .line 163
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 166
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    move v12, v14

    .line 168
    goto :goto_4

    .line 170
    :sswitch_8
    const/4 v9, 0x1

    .line 171
    goto :goto_4

    .line 177
    .end local v2    # "ch":C
    :cond_12
    if-nez v8, :cond_13

    .line 178
    sub-int v18, v12, v13

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    .line 179
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 184
    :cond_13
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 189
    .local v4, "d":D
    new-instance v16, Ljava/lang/Double;

    if-eqz v10, :cond_14

    neg-double v4, v4

    .end local v4    # "d":D
    :cond_14
    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 190
    .local v16, "result":Ljava/lang/Double;
    if-eqz v9, :cond_15

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v18, v18, v20

    :goto_5
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    goto/16 :goto_1

    .line 185
    .end local v16    # "result":Ljava/lang/Double;
    :catch_0
    move-exception v6

    .line 187
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 190
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "result":Ljava/lang/Double;
    :cond_15
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    goto :goto_5

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x24 -> :sswitch_0
        0x2b -> :sswitch_2
        0x2d -> :sswitch_3
    .end sparse-switch

    .line 123
    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_4
        0x25 -> :sswitch_8
        0x2c -> :sswitch_6
        0x2e -> :sswitch_5
        0x45 -> :sswitch_7
        0x65 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 45
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 49
    .local v3, "veText":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "strText":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/Value;->convertTextToNumber(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 51
    .local v1, "result":Ljava/lang/Double;
    if-nez v1, :cond_0

    .line 52
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 54
    .end local v1    # "result":Ljava/lang/Double;
    .end local v2    # "strText":Ljava/lang/String;
    .end local v3    # "veText":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v4

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_0

    .line 54
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v1    # "result":Ljava/lang/Double;
    .restart local v2    # "strText":Ljava/lang/String;
    .restart local v3    # "veText":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    new-instance v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method
