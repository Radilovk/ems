.class final Lorg/apache/poi/ss/util/ExpandedDouble;
.super Ljava/lang/Object;
.source "ExpandedDouble.java"


# static fields
.field private static final BI_FRAC_MASK:Ljava/math/BigInteger;

.field private static final BI_IMPLIED_FRAC_MSB:Ljava/math/BigInteger;


# instance fields
.field private final _binaryExponent:I

.field private final _significand:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-wide v0, 0xfffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/ExpandedDouble;->BI_FRAC_MASK:Ljava/math/BigInteger;

    .line 39
    const-wide/high16 v0, 0x10000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/ExpandedDouble;->BI_IMPLIED_FRAC_MSB:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7
    .param p1, "rawBits"    # J

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v3, 0x34

    shr-long v4, p1, v3

    long-to-int v0, v4

    .line 58
    .local v0, "biasedExp":I
    if-nez v0, :cond_0

    .line 60
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/util/ExpandedDouble;->BI_FRAC_MASK:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 61
    .local v2, "frac":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    rsub-int/lit8 v1, v3, 0x40

    .line 62
    .local v1, "expAdj":I
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/ss/util/ExpandedDouble;->_significand:Ljava/math/BigInteger;

    .line 63
    and-int/lit16 v3, v0, 0x7ff

    add-int/lit16 v3, v3, -0x3ff

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/apache/poi/ss/util/ExpandedDouble;->_binaryExponent:I

    .line 69
    .end local v1    # "expAdj":I
    :goto_0
    return-void

    .line 65
    .end local v2    # "frac":Ljava/math/BigInteger;
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/util/ExpandedDouble;->getFrac(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 66
    .restart local v2    # "frac":Ljava/math/BigInteger;
    iput-object v2, p0, Lorg/apache/poi/ss/util/ExpandedDouble;->_significand:Ljava/math/BigInteger;

    .line 67
    and-int/lit16 v3, v0, 0x7ff

    add-int/lit16 v3, v3, -0x3ff

    iput v3, p0, Lorg/apache/poi/ss/util/ExpandedDouble;->_binaryExponent:I

    goto :goto_0
.end method

.method constructor <init>(Ljava/math/BigInteger;I)V
    .locals 2
    .param p1, "frac"    # Ljava/math/BigInteger;
    .param p2, "binaryExp"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad bit length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lorg/apache/poi/ss/util/ExpandedDouble;->_significand:Ljava/math/BigInteger;

    .line 76
    iput p2, p0, Lorg/apache/poi/ss/util/ExpandedDouble;->_binaryExponent:I

    .line 77
    return-void
.end method

.method public static fromRawBitsAndExponent(JI)Lorg/apache/poi/ss/util/ExpandedDouble;
    .locals 2
    .param p0, "rawBits"    # J
    .param p2, "exp"    # I

    .prologue
    .line 47
    new-instance v0, Lorg/apache/poi/ss/util/ExpandedDouble;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/ExpandedDouble;->getFrac(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/apache/poi/ss/util/ExpandedDouble;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method private static getFrac(J)Ljava/math/BigInteger;
    .locals 2
    .param p0, "rawBits"    # J

    .prologue
    .line 42
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/util/ExpandedDouble;->BI_FRAC_MASK:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/util/ExpandedDouble;->BI_IMPLIED_FRAC_MSB:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBinaryExponent()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/apache/poi/ss/util/ExpandedDouble;->_binaryExponent:I

    return v0
.end method

.method public getSignificand()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/poi/ss/util/ExpandedDouble;->_significand:Ljava/math/BigInteger;

    return-object v0
.end method

.method public normaliseBaseTen()Lorg/apache/poi/ss/util/NormalisedDecimal;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/poi/ss/util/ExpandedDouble;->_significand:Ljava/math/BigInteger;

    iget v1, p0, Lorg/apache/poi/ss/util/ExpandedDouble;->_binaryExponent:I

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NormalisedDecimal;->create(Ljava/math/BigInteger;I)Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v0

    return-object v0
.end method
