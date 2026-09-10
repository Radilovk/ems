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

    .line 63
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->wholePartFormatString:Ljava/lang/String;

    .line 66
    sget-object v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->DENOM_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 67
    .local v0, "m":Ljava/util/regex/Matcher;
    const/4 v1, -0x1

    .line 68
    .local v1, "tmpExact":I
    const/4 v2, -0x1

    .line 69
    .local v2, "tmpMax":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 70
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 72
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 75
    if-nez v1, :cond_0

    .line 76
    const/4 v1, -0x1

    .line 80
    :cond_0
    :goto_0
    goto :goto_2

    .line 78
    :catch_0
    move-exception v3

    goto :goto_0

    .line 81
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 82
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 83
    .local v3, "len":I
    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    move v3, v4

    .line 84
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 85
    .end local v3    # "len":I
    goto :goto_2

    .line 86
    :cond_3
    const/16 v1, 0x64

    .line 89
    :cond_4
    :goto_2
    if-gtz v1, :cond_5

    if-gtz v2, :cond_5

    .line 91
    const/16 v1, 0x64

    .line 93
    :cond_5
    iput v1, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    .line 94
    iput v2, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->maxDenom:I

    .line 95
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Number;)Ljava/lang/String;
    .locals 17
    .param p1, "num"    # Ljava/lang/Number;

    .line 99
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 101
    .local v2, "doubleValue":D
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 102
    .local v6, "isNeg":Z
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    .line 104
    .local v7, "absDoubleValue":D
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    .line 105
    .local v9, "wholePart":D
    sub-double v11, v7, v9

    .line 106
    .local v11, "decPart":D
    add-double v13, v9, v11

    const-string v15, "0"

    cmpl-double v16, v13, v4

    if-nez v16, :cond_1

    .line 107
    return-object v15

    .line 112
    :cond_1
    iget v13, v1, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    iget v14, v1, Lorg/apache/poi/ss/usermodel/FractionFormat;->maxDenom:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    div-int v13, v0, v13

    int-to-double v13, v13

    cmpg-double v16, v7, v13

    if-gez v16, :cond_2

    .line 113
    return-object v15

    .line 117
    :cond_2
    double-to-int v13, v11

    int-to-double v13, v13

    add-double/2addr v13, v9

    add-double v15, v9, v11

    const-string v4, "-"

    cmpl-double v5, v13, v15

    if-nez v5, :cond_4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_3

    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_3
    double-to-int v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 127
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v5, 0x0

    .line 130
    .local v5, "fract":Lorg/apache/poi/ss/format/SimpleFraction;
    :try_start_0
    iget v13, v1, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    if-lez v13, :cond_5

    .line 131
    iget v13, v1, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    invoke-static {v11, v12, v13}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionExactDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v13

    move-object v5, v13

    goto :goto_1

    .line 133
    :cond_5
    iget v13, v1, Lorg/apache/poi/ss/usermodel/FractionFormat;->maxDenom:I

    invoke-static {v11, v12, v13}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v13

    .line 138
    :goto_1
    nop

    .line 140
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v13, "sb":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_6

    .line 144
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_6
    iget-object v4, v1, Lorg/apache/poi/ss/usermodel/FractionFormat;->wholePartFormatString:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v14, "/"

    if-eqz v4, :cond_7

    .line 149
    invoke-virtual {v5}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v0

    double-to-int v4, v9

    mul-int v0, v0, v4

    invoke-virtual {v5}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v4

    add-int/2addr v0, v4

    .line 150
    .local v0, "trueNum":I
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 156
    .end local v0    # "trueNum":I
    :cond_7
    invoke-virtual {v5}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v4

    if-nez v4, :cond_8

    .line 157
    double-to-int v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_8
    invoke-virtual {v5}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v4

    invoke-virtual {v5}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v15

    if-ne v4, v15, :cond_9

    .line 160
    double-to-int v4, v9

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_9
    const-wide/16 v15, 0x0

    cmpl-double v0, v9, v15

    if-lez v0, :cond_a

    .line 165
    double-to-int v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_a
    invoke-virtual {v5}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 137
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 172
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/usermodel/FractionFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 176
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v1, "Reverse parsing not supported"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
