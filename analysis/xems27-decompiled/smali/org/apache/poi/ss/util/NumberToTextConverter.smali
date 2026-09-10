.class public final Lorg/apache/poi/ss/util/NumberToTextConverter;
.super Ljava/lang/Object;
.source "NumberToTextConverter.java"


# static fields
.field private static final EXCEL_NAN_BITS:J = -0xfbdfffc40000L

.field private static final MAX_TEXT_LEN:I = 0x14


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method private static appendExp(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "val"    # I

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

    .line 255
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    return-void
.end method

.method private static convertToText(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/util/NormalisedDecimal;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "pnd"    # Lorg/apache/poi/ss/util/NormalisedDecimal;

    .line 168
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/NormalisedDecimal;->roundUnits()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v0

    .line 169
    .local v0, "rnd":Lorg/apache/poi/ss/util/NormalisedDecimal;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/NormalisedDecimal;->getDecimalExponent()I

    move-result v1

    .line 171
    .local v1, "decExponent":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x62

    if-le v2, v3, :cond_0

    .line 172
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/NormalisedDecimal;->getSignificantDecimalDigitsLastDigitRounded()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "decimalDigits":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "decimalDigits":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/NormalisedDecimal;->getSignificantDecimalDigits()Ljava/lang/String;

    move-result-object v2

    .line 180
    .restart local v2    # "decimalDigits":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->countSignifantDigits(Ljava/lang/String;)I

    move-result v3

    .line 181
    .local v3, "countSigDigits":I
    if-gez v1, :cond_2

    .line 182
    invoke-static {p0, v2, v1, v3}, Lorg/apache/poi/ss/util/NumberToTextConverter;->formatLessThanOne(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    goto :goto_1

    .line 184
    :cond_2
    invoke-static {p0, v2, v1, v3}, Lorg/apache/poi/ss/util/NumberToTextConverter;->formatGreaterThanOne(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 186
    :goto_1
    return-void
.end method

.method private static countSignifantDigits(Ljava/lang/String;)I
    .locals 3
    .param p0, "sb"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 242
    .local v0, "result":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 243
    add-int/lit8 v0, v0, -0x1

    .line 244
    if-ltz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
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
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "decimalDigits"    # Ljava/lang/String;
    .param p2, "decExponent"    # I
    .param p3, "countSigDigits"    # I

    .line 212
    const/16 v0, 0x2e

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x13

    if-le p2, v3, :cond_1

    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    if-le p3, v2, :cond_0

    .line 216
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    const-string v0, "E+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {p0, p2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->appendExp(Ljava/lang/StringBuilder;I)V

    .line 221
    return-void

    .line 223
    :cond_1
    sub-int v3, p3, p2

    sub-int/2addr v3, v2

    .line 224
    .local v3, "nFractionalDigits":I
    if-lez v3, :cond_2

    .line 225
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 228
    return-void

    .line 230
    :cond_2
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 231
    neg-int v0, v3

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_3

    .line 232
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private static formatLessThanOne(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "decimalDigits"    # Ljava/lang/String;
    .param p2, "decExponent"    # I
    .param p3, "countSigDigits"    # I

    .line 190
    neg-int v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 191
    .local v0, "nLeadingZeros":I
    add-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p3

    .line 193
    .local v2, "normalLength":I
    invoke-static {v2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->needsScientificNotation(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    if-le p3, v1, :cond_0

    .line 196
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    const-string v1, "E-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    neg-int v1, p2

    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->appendExp(Ljava/lang/StringBuilder;I)V

    .line 201
    return-void

    .line 203
    :cond_1
    const-string v1, "0."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    .line 205
    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1, v4, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 208
    return-void
.end method

.method private static needsScientificNotation(I)Z
    .locals 1
    .param p0, "nDigits"    # I

    .line 237
    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static rawDoubleBitsToText(J)Ljava/lang/String;
    .locals 8
    .param p0, "pRawBits"    # J

    .line 133
    move-wide v0, p0

    .line 134
    .local v0, "rawBits":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 135
    .local v4, "isNegative":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 136
    const-wide v5, 0x7fffffffffffffffL

    and-long/2addr v0, v5

    .line 138
    :cond_1
    const-string v5, "-0"

    const-string v6, "0"

    cmp-long v7, v0, v2

    if-nez v7, :cond_3

    .line 139
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    return-object v5

    .line 141
    :cond_3
    new-instance v2, Lorg/apache/poi/ss/util/ExpandedDouble;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/util/ExpandedDouble;-><init>(J)V

    .line 142
    .local v2, "ed":Lorg/apache/poi/ss/util/ExpandedDouble;
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/ExpandedDouble;->getBinaryExponent()I

    move-result v3

    const/16 v7, -0x3fe

    if-ge v3, v7, :cond_5

    .line 145
    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v6

    :goto_2
    return-object v5

    .line 147
    :cond_5
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/ExpandedDouble;->getBinaryExponent()I

    move-result v3

    const/16 v5, 0x400

    if-ne v3, v5, :cond_7

    .line 151
    const-wide v5, -0xfbdfffc40000L

    cmp-long v3, v0, v5

    if-nez v3, :cond_6

    .line 152
    const-string v3, "3.484840871308E+308"

    return-object v3

    .line 157
    :cond_6
    const/4 v4, 0x0

    .line 159
    :cond_7
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/ExpandedDouble;->normaliseBaseTen()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v3

    .line 160
    .local v3, "nd":Lorg/apache/poi/ss/util/NormalisedDecimal;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x15

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_8

    .line 162
    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    :cond_8
    invoke-static {v5, v3}, Lorg/apache/poi/ss/util/NumberToTextConverter;->convertToText(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/util/NormalisedDecimal;)V

    .line 165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static toText(D)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # D

    .line 129
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->rawDoubleBitsToText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
