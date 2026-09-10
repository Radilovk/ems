.class public final Lorg/apache/poi/ss/formula/functions/Value;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "Value.java"


# static fields
.field private static final MIN_DISTANCE_BETWEEN_THOUSANDS_SEPARATOR:I = 0x4

.field private static final ZERO:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Value;->ZERO:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method

.method private static convertTextToNumber(Ljava/lang/String;)Ljava/lang/Double;
    .locals 14

    .line 63
    nop

    .line 64
    nop

    .line 65
    nop

    .line 66
    nop

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 70
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x20

    const/16 v7, 0x2e

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge v2, v0, :cond_a

    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 72
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-nez v11, :cond_a

    if-ne v10, v7, :cond_0

    .line 73
    goto :goto_4

    .line 75
    :cond_0
    if-eq v10, v6, :cond_9

    const/16 v6, 0x24

    if-eq v10, v6, :cond_7

    const/16 v6, 0x2b

    if-eq v10, v6, :cond_4

    const/16 v6, 0x2d

    if-eq v10, v6, :cond_1

    .line 100
    return-object v9

    .line 93
    :cond_1
    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    .line 96
    :cond_2
    nop

    .line 97
    const/4 v4, 0x1

    goto :goto_3

    .line 94
    :cond_3
    :goto_1
    return-object v9

    .line 87
    :cond_4
    if-nez v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_2

    .line 90
    :cond_5
    nop

    .line 91
    const/4 v5, 0x1

    goto :goto_3

    .line 88
    :cond_6
    :goto_2
    return-object v9

    .line 80
    :cond_7
    if-eqz v3, :cond_8

    .line 82
    return-object v9

    .line 84
    :cond_8
    nop

    .line 85
    const/4 v3, 0x1

    goto :goto_3

    .line 78
    :cond_9
    nop

    .line 70
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_a
    :goto_4
    if-lt v2, v0, :cond_d

    .line 105
    if-nez v3, :cond_c

    if-nez v4, :cond_c

    if-eqz v5, :cond_b

    goto :goto_5

    .line 108
    :cond_b
    sget-object p0, Lorg/apache/poi/ss/formula/functions/Value;->ZERO:Ljava/lang/Double;

    return-object p0

    .line 106
    :cond_c
    :goto_5
    return-object v9

    .line 113
    :cond_d
    nop

    .line 114
    const/16 v3, -0x8000

    .line 116
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v3, v2

    const/4 v2, 0x0

    const/16 v10, -0x8000

    .line 117
    :goto_6
    const/4 v11, 0x4

    if-ge v3, v0, :cond_1b

    .line 118
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 119
    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 120
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    goto :goto_7

    .line 123
    :cond_e
    if-eq v12, v6, :cond_18

    const/16 v13, 0x25

    if-eq v12, v13, :cond_17

    const/16 v13, 0x2c

    if-eq v12, v13, :cond_14

    if-eq v12, v7, :cond_11

    const/16 v13, 0x45

    if-eq v12, v13, :cond_f

    const/16 v13, 0x65

    if-eq v12, v13, :cond_f

    .line 174
    return-object v9

    .line 162
    :cond_f
    sub-int v12, v3, v10

    if-ge v12, v11, :cond_10

    .line 163
    return-object v9

    .line 166
    :cond_10
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    nop

    .line 168
    move v3, v0

    goto :goto_7

    .line 137
    :cond_11
    if-eqz v1, :cond_12

    .line 138
    return-object v9

    .line 140
    :cond_12
    sub-int v1, v3, v10

    if-ge v1, v11, :cond_13

    .line 141
    return-object v9

    .line 143
    :cond_13
    nop

    .line 144
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    const/4 v1, 0x1

    goto :goto_7

    .line 147
    :cond_14
    if-eqz v1, :cond_15

    .line 149
    return-object v9

    .line 151
    :cond_15
    sub-int v10, v3, v10

    .line 153
    if-ge v10, v11, :cond_16

    .line 154
    return-object v9

    .line 156
    :cond_16
    nop

    .line 158
    move v10, v3

    goto :goto_7

    .line 170
    :cond_17
    nop

    .line 171
    const/4 v2, 0x1

    goto :goto_7

    .line 125
    :cond_18
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 127
    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 128
    nop

    .line 129
    const/4 v2, 0x1

    goto :goto_7

    .line 131
    :cond_19
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1a

    .line 133
    return-object v9

    .line 117
    :cond_1a
    :goto_7
    add-int/2addr v3, v8

    goto :goto_6

    .line 177
    :cond_1b
    if-nez v1, :cond_1c

    .line 178
    sub-int/2addr v3, v10

    if-ge v3, v11, :cond_1c

    .line 179
    return-object v9

    .line 184
    :cond_1c
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    nop

    .line 189
    new-instance p0, Ljava/lang/Double;

    if-eqz v4, :cond_1d

    neg-double v0, v0

    :cond_1d
    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 190
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    if-eqz v2, :cond_1e

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    :cond_1e
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 185
    :catch_0
    move-exception p0

    .line 187
    return-object v9
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 45
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v0, "veText":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 49
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "strText":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Value;->convertTextToNumber(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 51
    .local v2, "result":Ljava/lang/Double;
    if-nez v2, :cond_0

    .line 52
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v3

    .line 54
    :cond_0
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v3

    .line 46
    .end local v0    # "veText":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "strText":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/Double;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 47
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "veText":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method
