.class final Lorg/apache/poi/ss/util/MutableFPNumber;
.super Ljava/lang/Object;
.source "MutableFPNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;,
        Lorg/apache/poi/ss/util/MutableFPNumber$Rounder;
    }
.end annotation


# static fields
.field private static final BI_MAX_BASE:Ljava/math/BigInteger;

.field private static final BI_MIN_BASE:Ljava/math/BigInteger;

.field private static final C_64:I = 0x40

.field private static final MIN_PRECISION:I = 0x48


# instance fields
.field private _binaryExponent:I

.field private _significand:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0B5E620F47FFFE666"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/util/MutableFPNumber;->BI_MIN_BASE:Ljava/math/BigInteger;

    .line 43
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0E35FA9319FFFE000"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/util/MutableFPNumber;->BI_MAX_BASE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 0
    .param p1, "frac"    # Ljava/math/BigInteger;
    .param p2, "binaryExponent"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    .line 58
    iput p2, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    .line 59
    return-void
.end method

.method private mulShift(Ljava/math/BigInteger;I)V
    .locals 2
    .param p1, "multiplicand"    # Ljava/math/BigInteger;
    .param p2, "multiplierShift"    # I

    .line 120
    iget-object v0, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    .line 121
    iget v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    .line 123
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x48

    and-int/lit8 v0, v0, -0x20

    .line 125
    .local v0, "sc":I
    if-lez v0, :cond_0

    .line 127
    iget-object v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    .line 128
    iget v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/poi/ss/util/MutableFPNumber;
    .locals 3

    .line 63
    new-instance v0, Lorg/apache/poi/ss/util/MutableFPNumber;

    iget-object v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    iget v2, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/MutableFPNumber;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public createExpandedDouble()Lorg/apache/poi/ss/util/ExpandedDouble;
    .locals 3

    .line 199
    new-instance v0, Lorg/apache/poi/ss/util/ExpandedDouble;

    iget-object v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    iget v2, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/ExpandedDouble;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public createNormalisedDecimal(I)Lorg/apache/poi/ss/util/NormalisedDecimal;
    .locals 5
    .param p1, "pow10"    # I

    .line 106
    iget v0, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    add-int/lit8 v0, v0, -0x27

    .line 107
    .local v0, "missingUnderBits":I
    iget-object v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    shl-int/2addr v1, v0

    const v2, 0xffff80

    and-int/2addr v1, v2

    .line 108
    .local v1, "fracPart":I
    iget-object v2, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    iget v3, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    rsub-int/lit8 v3, v3, 0x40

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 109
    .local v2, "wholePart":J
    new-instance v4, Lorg/apache/poi/ss/util/NormalisedDecimal;

    invoke-direct {v4, v2, v3, v1, p1}, Lorg/apache/poi/ss/util/NormalisedDecimal;-><init>(JII)V

    return-object v4
.end method

.method public get64BitNormalisedExponent()I
    .locals 2

    .line 92
    iget v0, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    iget-object v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x40

    return v0
.end method

.method public isAboveMinRep()Z
    .locals 3

    .line 101
    iget-object v0, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    .line 102
    .local v0, "sc":I
    iget-object v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    sget-object v2, Lorg/apache/poi/ss/util/MutableFPNumber;->BI_MIN_BASE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBelowMaxRep()Z
    .locals 3

    .line 97
    iget-object v0, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    .line 98
    .local v0, "sc":I
    iget-object v1, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    sget-object v2, Lorg/apache/poi/ss/util/MutableFPNumber;->BI_MAX_BASE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public multiplyByPowerOfTen(I)V
    .locals 3
    .param p1, "pow10"    # I

    .line 112
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->getInstance(I)Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;

    move-result-object v0

    .line 113
    .local v0, "tp":Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;
    if-gez p1, :cond_0

    .line 114
    iget-object v1, v0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_divisor:Ljava/math/BigInteger;

    iget v2, v0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_divisorShift:I

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/ss/util/MutableFPNumber;->mulShift(Ljava/math/BigInteger;I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, v0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_multiplicand:Ljava/math/BigInteger;

    iget v2, v0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_multiplierShift:I

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/ss/util/MutableFPNumber;->mulShift(Ljava/math/BigInteger;I)V

    .line 118
    :goto_0
    return-void
.end method

.method public normalise64bit()V
    .locals 4

    .line 66
    iget-object v0, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 67
    .local v0, "oldBitLen":I
    add-int/lit8 v1, v0, -0x40

    .line 68
    .local v1, "sc":I
    if-nez v1, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    if-ltz v1, :cond_4

    .line 74
    iget v2, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    .line 75
    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 76
    add-int/lit8 v2, v1, -0x1

    const v3, 0xffffe0

    and-int/2addr v2, v3

    .line 77
    .local v2, "highShift":I
    iget-object v3, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    .line 78
    sub-int/2addr v1, v2

    .line 79
    sub-int/2addr v0, v2

    .line 81
    .end local v2    # "highShift":I
    :cond_1
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 84
    iget-object v3, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    invoke-static {v3, v1}, Lorg/apache/poi/ss/util/MutableFPNumber$Rounder;->round(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    .line 85
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    iget v3, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_binaryExponent:I

    .line 89
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/ss/util/MutableFPNumber;->_significand:Ljava/math/BigInteger;

    .line 90
    return-void

    .line 82
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 72
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not enough precision"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
