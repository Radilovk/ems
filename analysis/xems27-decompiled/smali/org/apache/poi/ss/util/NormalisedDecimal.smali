.class final Lorg/apache/poi/ss/util/NormalisedDecimal;
.super Ljava/lang/Object;
.source "NormalisedDecimal.java"


# static fields
.field private static final BD_2_POW_24:Ljava/math/BigDecimal;

.field private static final C_2_POW_19:I = 0x80000

.field private static final EXPONENT_OFFSET:I = 0xe

.field private static final FRAC_HALF:I = 0x800000

.field private static final LOG_BASE_10_OF_2_TIMES_2_POW_20:I = 0x4d105

.field private static final MAX_REP_WHOLE_PART:J = 0x38d7ea4c68000L


# instance fields
.field private final _fractionalPart:I

.field private final _relativeDecimalExponent:I

.field private final _wholePart:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/apache/poi/ss/util/NormalisedDecimal;->BD_2_POW_24:Ljava/math/BigDecimal;

    return-void
.end method

.method constructor <init>(JII)V
    .locals 0
    .param p1, "wholePart"    # J
    .param p3, "fracPart"    # I
    .param p4, "decimalExponent"    # I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide p1, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_wholePart:J

    .line 161
    iput p3, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_fractionalPart:I

    .line 162
    iput p4, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_relativeDecimalExponent:I

    .line 163
    return-void
.end method

.method public static create(Ljava/math/BigInteger;I)Lorg/apache/poi/ss/util/NormalisedDecimal;
    .locals 5
    .param p0, "frac"    # Ljava/math/BigInteger;
    .param p1, "binaryExponent"    # I

    .line 79
    const/16 v0, 0x31

    if-gt p1, v0, :cond_1

    const/16 v0, 0x2e

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x0

    .local v0, "pow10":I
    goto :goto_1

    .line 83
    .end local v0    # "pow10":I
    :cond_1
    :goto_0
    const/high16 v0, 0xe80000

    const v1, 0x4d105

    mul-int v1, v1, p1

    sub-int/2addr v0, v1

    .line 84
    .local v0, "x":I
    const/high16 v1, 0x80000

    add-int/2addr v0, v1

    .line 85
    shr-int/lit8 v1, v0, 0x14

    neg-int v0, v1

    .line 86
    .local v0, "pow10":I
    nop

    .line 89
    :goto_1
    new-instance v1, Lorg/apache/poi/ss/util/MutableFPNumber;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/ss/util/MutableFPNumber;-><init>(Ljava/math/BigInteger;I)V

    .line 90
    .local v1, "cc":Lorg/apache/poi/ss/util/MutableFPNumber;
    if-eqz v0, :cond_2

    .line 91
    neg-int v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/util/MutableFPNumber;->multiplyByPowerOfTen(I)V

    .line 94
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/MutableFPNumber;->get64BitNormalisedExponent()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 117
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad binary exp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/MutableFPNumber;->get64BitNormalisedExponent()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :pswitch_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/MutableFPNumber;->isBelowMaxRep()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    goto :goto_2

    .line 112
    :cond_3
    :pswitch_1
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/util/MutableFPNumber;->multiplyByPowerOfTen(I)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    goto :goto_2

    .line 106
    :pswitch_2
    goto :goto_2

    .line 96
    :pswitch_3
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/MutableFPNumber;->isAboveMinRep()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 97
    goto :goto_2

    .line 101
    :cond_4
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/util/MutableFPNumber;->multiplyByPowerOfTen(I)V

    .line 102
    add-int/lit8 v0, v0, -0x1

    .line 103
    nop

    .line 119
    :goto_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/MutableFPNumber;->normalise64bit()V

    .line 121
    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/util/MutableFPNumber;->createNormalisedDecimal(I)Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFractionalDigits()Ljava/lang/String;
    .locals 2

    .line 248
    iget v0, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_fractionalPart:I

    if-nez v0, :cond_0

    .line 249
    const-string v0, "0"

    return-object v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/NormalisedDecimal;->getFractionalPart()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareNormalised(Lorg/apache/poi/ss/util/NormalisedDecimal;)I
    .locals 6
    .param p1, "other"    # Lorg/apache/poi/ss/util/NormalisedDecimal;

    .line 231
    iget v0, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_relativeDecimalExponent:I

    iget v1, p1, Lorg/apache/poi/ss/util/NormalisedDecimal;->_relativeDecimalExponent:I

    sub-int/2addr v0, v1

    .line 232
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 233
    return v0

    .line 235
    :cond_0
    iget-wide v1, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_wholePart:J

    iget-wide v3, p1, Lorg/apache/poi/ss/util/NormalisedDecimal;->_wholePart:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 236
    const/4 v1, 0x1

    return v1

    .line 238
    :cond_1
    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 239
    const/4 v1, -0x1

    return v1

    .line 241
    :cond_2
    iget v1, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_fractionalPart:I

    iget v2, p1, Lorg/apache/poi/ss/util/NormalisedDecimal;->_fractionalPart:I

    sub-int/2addr v1, v2

    return v1
.end method

.method composeFrac()Ljava/math/BigInteger;
    .locals 9

    .line 187
    iget-wide v0, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_wholePart:J

    .line 188
    .local v0, "wp":J
    iget v2, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_fractionalPart:I

    .line 189
    .local v2, "fp":I
    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0xb

    new-array v4, v4, [B

    const/16 v5, 0x38

    shr-long v5, v0, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    const/16 v5, 0x30

    shr-long v7, v0, v5

    long-to-int v5, v7

    int-to-byte v5, v5

    const/4 v7, 0x1

    aput-byte v5, v4, v7

    const/16 v5, 0x28

    shr-long v7, v0, v5

    long-to-int v5, v7

    int-to-byte v5, v5

    const/4 v7, 0x2

    aput-byte v5, v4, v7

    const/16 v5, 0x20

    shr-long v7, v0, v5

    long-to-int v5, v7

    int-to-byte v5, v5

    const/4 v7, 0x3

    aput-byte v5, v4, v7

    const/16 v5, 0x18

    shr-long v7, v0, v5

    long-to-int v5, v7

    int-to-byte v5, v5

    const/4 v7, 0x4

    aput-byte v5, v4, v7

    const/16 v5, 0x10

    shr-long v7, v0, v5

    long-to-int v5, v7

    int-to-byte v5, v5

    const/4 v7, 0x5

    aput-byte v5, v4, v7

    const/16 v5, 0x8

    shr-long v7, v0, v5

    long-to-int v8, v7

    int-to-byte v7, v8

    const/4 v8, 0x6

    aput-byte v7, v4, v8

    shr-long v6, v0, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    const/4 v7, 0x7

    aput-byte v6, v4, v7

    shr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    const/16 v6, 0x9

    aput-byte v5, v4, v6

    shr-int/lit8 v5, v2, 0x0

    int-to-byte v5, v5

    const/16 v6, 0xa

    aput-byte v5, v4, v6

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    return-object v3
.end method

.method public getDecimalExponent()I
    .locals 1

    .line 224
    iget v0, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_relativeDecimalExponent:I

    add-int/lit8 v0, v0, 0xe

    return v0
.end method

.method public getFractionalPart()Ljava/math/BigDecimal;
    .locals 2

    .line 244
    new-instance v0, Ljava/math/BigDecimal;

    iget v1, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_fractionalPart:I

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sget-object v1, Lorg/apache/poi/ss/util/NormalisedDecimal;->BD_2_POW_24:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getSignificantDecimalDigits()Ljava/lang/String;
    .locals 2

    .line 205
    iget-wide v0, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_wholePart:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignificantDecimalDigitsLastDigitRounded()Ljava/lang/String;
    .locals 5

    .line 213
    iget-wide v0, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_wholePart:J

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    .line 214
    .local v0, "wp":J
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 215
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x30

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public normaliseBaseTwo()Lorg/apache/poi/ss/util/ExpandedDouble;
    .locals 3

    .line 177
    new-instance v0, Lorg/apache/poi/ss/util/MutableFPNumber;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/NormalisedDecimal;->composeFrac()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/MutableFPNumber;-><init>(Ljava/math/BigInteger;I)V

    .line 178
    .local v0, "cc":Lorg/apache/poi/ss/util/MutableFPNumber;
    iget v1, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_relativeDecimalExponent:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/util/MutableFPNumber;->multiplyByPowerOfTen(I)V

    .line 179
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/MutableFPNumber;->normalise64bit()V

    .line 180
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/MutableFPNumber;->createExpandedDouble()Lorg/apache/poi/ss/util/ExpandedDouble;

    move-result-object v1

    return-object v1
.end method

.method public roundUnits()Lorg/apache/poi/ss/util/NormalisedDecimal;
    .locals 8

    .line 128
    iget-wide v0, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_wholePart:J

    .line 129
    .local v0, "wholePart":J
    iget v2, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_fractionalPart:I

    const/high16 v3, 0x800000

    if-lt v2, v3, :cond_0

    .line 130
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 133
    :cond_0
    iget v2, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_relativeDecimalExponent:I

    .line 135
    .local v2, "de":I
    const-wide v3, 0x38d7ea4c68000L

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-gez v6, :cond_1

    .line 136
    new-instance v3, Lorg/apache/poi/ss/util/NormalisedDecimal;

    invoke-direct {v3, v0, v1, v5, v2}, Lorg/apache/poi/ss/util/NormalisedDecimal;-><init>(JII)V

    return-object v3

    .line 138
    :cond_1
    new-instance v3, Lorg/apache/poi/ss/util/NormalisedDecimal;

    const-wide/16 v6, 0xa

    div-long v6, v0, v6

    add-int/lit8 v4, v2, 0x1

    invoke-direct {v3, v6, v7, v5, v4}, Lorg/apache/poi/ss/util/NormalisedDecimal;-><init>(JII)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-wide v1, p0, Lorg/apache/poi/ss/util/NormalisedDecimal;->_wholePart:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "ws":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {p0}, Lorg/apache/poi/ss/util/NormalisedDecimal;->getFractionalDigits()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v2, "E"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/NormalisedDecimal;->getDecimalExponent()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
