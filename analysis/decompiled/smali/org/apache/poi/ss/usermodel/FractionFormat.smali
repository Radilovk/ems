.class public Lorg/apache/poi/ss/usermodel/FractionFormat;
.super Ljava/text/Format;
.source "FractionFormat.java"


# static fields
.field private static final DENOM_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_DENOM_POW:I = 0x4


# instance fields
.field private final exactDenom:I

.field private final maxDenom:I

.field private final wholePartFormatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "(?:(#+)|(\\d+))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->DENOM_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "wholePartFormatString"    # Ljava/lang/String;
    .param p2, "denomFormatString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 63
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->wholePartFormatString:Ljava/lang/String;

    .line 66
    sget-object v5, Lorg/apache/poi/ss/usermodel/FractionFormat;->DENOM_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 67
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v2, -0x1

    .line 68
    .local v2, "tmpExact":I
    const/4 v3, -0x1

    .line 69
    .local v3, "tmpMax":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 72
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 75
    if-nez v2, :cond_0

    .line 76
    const/4 v2, -0x1

    .line 89
    :cond_0
    :goto_0
    if-gtz v2, :cond_1

    if-gtz v3, :cond_1

    .line 91
    const/16 v2, 0x64

    .line 93
    :cond_1
    iput v2, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    .line 94
    iput v3, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->maxDenom:I

    .line 95
    return-void

    .line 81
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 82
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 83
    .local v0, "len":I
    if-le v0, v4, :cond_3

    move v0, v4

    .line 84
    :cond_3
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    .line 85
    goto :goto_0

    .line 86
    .end local v0    # "len":I
    :cond_4
    const/16 v2, 0x64

    goto :goto_0

    .line 78
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public format(Ljava/lang/Number;)Ljava/lang/String;
    .locals 20
    .param p1, "num"    # Ljava/lang/Number;

    .prologue
    .line 99
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 101
    .local v6, "doubleValue":D
    const-wide/16 v16, 0x0

    cmpg-double v13, v6, v16

    if-gez v13, :cond_0

    const/4 v10, 0x1

    .line 102
    .local v10, "isNeg":Z
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 104
    .local v2, "absDoubleValue":D
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    .line 105
    .local v14, "wholePart":D
    sub-double v4, v2, v14

    .line 106
    .local v4, "decPart":D
    add-double v16, v14, v4

    const-wide/16 v18, 0x0

    cmpl-double v13, v16, v18

    if-nez v13, :cond_1

    .line 107
    const-string v13, "0"

    .line 168
    :goto_1
    return-object v13

    .line 101
    .end local v2    # "absDoubleValue":D
    .end local v4    # "decPart":D
    .end local v10    # "isNeg":Z
    .end local v14    # "wholePart":D
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 112
    .restart local v2    # "absDoubleValue":D
    .restart local v4    # "decPart":D
    .restart local v10    # "isNeg":Z
    .restart local v14    # "wholePart":D
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->maxDenom:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    div-int v13, v13, v16

    int-to-double v0, v13

    move-wide/from16 v16, v0

    cmpg-double v13, v2, v16

    if-gez v13, :cond_2

    .line 113
    const-string v13, "0"

    goto :goto_1

    .line 117
    :cond_2
    double-to-int v13, v4

    int-to-double v0, v13

    move-wide/from16 v16, v0

    add-double v16, v16, v14

    add-double v18, v14, v4

    cmpl-double v13, v16, v18

    if-nez v13, :cond_4

    .line 119
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v11, "sb":Ljava/lang/StringBuilder;
    if-eqz v10, :cond_3

    .line 121
    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_3
    double-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 127
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v9, 0x0

    .line 130
    .local v9, "fract":Lorg/apache/poi/ss/format/SimpleFraction;
    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    if-lez v13, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    invoke-static {v4, v5, v13}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionExactDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 140
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    if-eqz v10, :cond_5

    .line 144
    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_5
    const-string v13, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->wholePartFormatString:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 149
    invoke-virtual {v9}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v13

    double-to-int v0, v14

    move/from16 v16, v0

    mul-int v13, v13, v16

    invoke-virtual {v9}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v16

    add-int v12, v13, v16

    .line 150
    .local v12, "trueNum":I
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 133
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "trueNum":I
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->maxDenom:I

    invoke-static {v4, v5, v13}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_2

    .line 135
    :catch_0
    move-exception v8

    .line 136
    .local v8, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 137
    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 156
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v9}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v13

    if-nez v13, :cond_8

    .line 157
    double-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 159
    :cond_8
    invoke-virtual {v9}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v13

    invoke-virtual {v9}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v16

    move/from16 v0, v16

    if-ne v13, v0, :cond_9

    .line 160
    double-to-int v13, v14

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 164
    :cond_9
    const-wide/16 v16, 0x0

    cmpl-double v13, v14, v16

    if-lez v13, :cond_a

    .line 165
    double-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_a
    invoke-virtual {v9}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 172
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/FractionFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 176
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v1, "Reverse parsing not supported"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
