.class public final Lorg/apache/poi/ss/util/NumberToTextConverter;
.super Ljava/lang/Object;
.source "NumberToTextConverter.java"


# static fields
.field private static final EXCEL_NAN_BITS:J = -0xfbdfffc40000L

.field private static final MAX_TEXT_LEN:I = 0x14


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method private static appendExp(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "val"    # I

    .prologue
    .line 252
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 253
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static convertToText(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/util/NormalisedDecimal;)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "pnd"    # Lorg/apache/poi/ss/util/NormalisedDecimal;

    .prologue
    .line 168
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/NormalisedDecimal;->roundUnits()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v3

    .line 169
    .local v3, "rnd":Lorg/apache/poi/ss/util/NormalisedDecimal;
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/NormalisedDecimal;->getDecimalExponent()I

    move-result v1

    .line 171
    .local v1, "decExponent":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x62

    if-le v4, v5, :cond_1

    .line 172
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/NormalisedDecimal;->getSignificantDecimalDigitsLastDigitRounded()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "decimalDigits":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 180
    :cond_0
    :goto_0
    invoke-static {v2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->countSignifantDigits(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "countSigDigits":I
    if-gez v1, :cond_2

    .line 182
    invoke-static {p0, v2, v1, v0}, Lorg/apache/poi/ss/util/NumberToTextConverter;->formatLessThanOne(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 186
    :goto_1
    return-void

    .line 178
    .end local v0    # "countSigDigits":I
    .end local v2    # "decimalDigits":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/NormalisedDecimal;->getSignificantDecimalDigits()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "decimalDigits":Ljava/lang/String;
    goto :goto_0

    .line 184
    .restart local v0    # "countSigDigits":I
    :cond_2
    invoke-static {p0, v2, v1, v0}, Lorg/apache/poi/ss/util/NumberToTextConverter;->formatGreaterThanOne(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    goto :goto_1
.end method

.method private static countSignifantDigits(Ljava/lang/String;)I
    .locals 3
    .param p0, "sb"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 242
    .local v0, "result":I
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 243
    add-int/lit8 v0, v0, -0x1

    .line 244
    if-gez v0, :cond_0

    .line 245
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No non-zero digits found"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_1
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private static formatGreaterThanOne(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "decimalDigits"    # Ljava/lang/String;
    .param p2, "decExponent"    # I
    .param p3, "countSigDigits"    # I

    .prologue
    const/16 v5, 0x2e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    const/16 v2, 0x13

    if-le p2, v2, :cond_2

    .line 214
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    if-le p3, v4, :cond_0

    .line 216
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p1, v4, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    const-string v2, "E+"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {p0, p2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->appendExp(Ljava/lang/StringBuilder;I)V

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    sub-int v2, p3, p2

    add-int/lit8 v1, v2, -0x1

    .line 224
    .local v1, "nFractionalDigits":I
    if-lez v1, :cond_3

    .line 225
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {p1, v3, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 231
    neg-int v0, v1

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_1

    .line 232
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static formatLessThanOne(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "decimalDigits"    # Ljava/lang/String;
    .param p2, "decExponent"    # I
    .param p3, "countSigDigits"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    neg-int v3, p2

    add-int/lit8 v1, v3, -0x1

    .line 191
    .local v1, "nLeadingZeros":I
    add-int/lit8 v3, v1, 0x2

    add-int v2, v3, p3

    .line 193
    .local v2, "normalLength":I
    invoke-static {v2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->needsScientificNotation(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    if-le p3, v5, :cond_0

    .line 196
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1, v5, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    const-string v3, "E-"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    neg-int v3, p2

    invoke-static {p0, v3}, Lorg/apache/poi/ss/util/NumberToTextConverter;->appendExp(Ljava/lang/StringBuilder;I)V

    .line 208
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string v3, "0."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_2

    .line 205
    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {p1, v4, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static needsScientificNotation(I)Z
    .locals 1
    .param p0, "nDigits"    # I

    .prologue
    .line 237
    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static rawDoubleBitsToText(J)Ljava/lang/String;
    .locals 10
    .param p0, "pRawBits"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 133
    move-wide v4, p0

    .line 134
    .local v4, "rawBits":J
    cmp-long v6, v4, v8

    if-gez v6, :cond_1

    const/4 v1, 0x1

    .line 135
    .local v1, "isNegative":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 136
    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v4, v6

    .line 138
    :cond_0
    cmp-long v6, v4, v8

    if-nez v6, :cond_3

    .line 139
    if-eqz v1, :cond_2

    const-string v6, "-0"

    .line 165
    :goto_1
    return-object v6

    .line 134
    .end local v1    # "isNegative":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 139
    .restart local v1    # "isNegative":Z
    :cond_2
    const-string v6, "0"

    goto :goto_1

    .line 141
    :cond_3
    new-instance v0, Lorg/apache/poi/ss/util/ExpandedDouble;

    invoke-direct {v0, v4, v5}, Lorg/apache/poi/ss/util/ExpandedDouble;-><init>(J)V

    .line 142
    .local v0, "ed":Lorg/apache/poi/ss/util/ExpandedDouble;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/ExpandedDouble;->getBinaryExponent()I

    move-result v6

    const/16 v7, -0x3fe

    if-ge v6, v7, :cond_5

    .line 145
    if-eqz v1, :cond_4

    const-string v6, "-0"

    goto :goto_1

    :cond_4
    const-string v6, "0"

    goto :goto_1

    .line 147
    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/ExpandedDouble;->getBinaryExponent()I

    move-result v6

    const/16 v7, 0x400

    if-ne v6, v7, :cond_7

    .line 151
    const-wide v6, -0xfbdfffc40000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_6

    .line 152
    const-string v6, "3.484840871308E+308"

    goto :goto_1

    .line 157
    :cond_6
    const/4 v1, 0x0

    .line 159
    :cond_7
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/ExpandedDouble;->normaliseBaseTen()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v2

    .line 160
    .local v2, "nd":Lorg/apache/poi/ss/util/NormalisedDecimal;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x15

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_8

    .line 162
    const/16 v6, 0x2d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    :cond_8
    invoke-static {v3, v2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->convertToText(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/util/NormalisedDecimal;)V

    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static toText(D)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 129
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->rawDoubleBitsToText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
