.class final Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;
.super Ljava/lang/Object;
.source "MutableFPNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/MutableFPNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TenPower"
.end annotation


# static fields
.field private static final FIVE:Ljava/math/BigInteger;

.field private static final _cache:[Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;


# instance fields
.field public final _divisor:Ljava/math/BigInteger;

.field public final _divisorShift:I

.field public final _multiplicand:Ljava/math/BigInteger;

.field public final _multiplierShift:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 159
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "5"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->FIVE:Ljava/math/BigInteger;

    .line 160
    const/16 v0, 0x15e

    new-array v0, v0, [Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;

    sput-object v0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_cache:[Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 7
    .param p1, "index"    # I

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    sget-object v0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->FIVE:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 170
    .local v0, "fivePowIndex":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 171
    .local v1, "bitsDueToFiveFactors":I
    add-int/lit8 v2, v1, 0x50

    .line 172
    .local v2, "px":I
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 173
    .local v3, "fx":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, -0x50

    .line 174
    .local v4, "adj":I
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_divisor:Ljava/math/BigInteger;

    .line 175
    sub-int/2addr v1, v4

    .line 177
    add-int v5, v1, p1

    add-int/lit8 v5, v5, 0x50

    neg-int v5, v5

    iput v5, p0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_divisorShift:I

    .line 178
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v5, v5, -0x44

    .line 179
    .local v5, "sc":I
    if-lez v5, :cond_0

    .line 180
    add-int v6, p1, v5

    iput v6, p0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_multiplierShift:I

    .line 181
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_multiplicand:Ljava/math/BigInteger;

    goto :goto_0

    .line 183
    :cond_0
    iput p1, p0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_multiplierShift:I

    .line 184
    iput-object v0, p0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_multiplicand:Ljava/math/BigInteger;

    .line 186
    :goto_0
    return-void
.end method

.method static getInstance(I)Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;
    .locals 2
    .param p0, "index"    # I

    .line 189
    sget-object v0, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_cache:[Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;

    aget-object v0, v0, p0

    .line 190
    .local v0, "result":Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;
    if-nez v0, :cond_0

    .line 191
    new-instance v1, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;

    invoke-direct {v1, p0}, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;-><init>(I)V

    move-object v0, v1

    .line 192
    sget-object v1, Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;->_cache:[Lorg/apache/poi/ss/util/MutableFPNumber$TenPower;

    aput-object v0, v1, p0

    .line 194
    :cond_0
    return-object v0
.end method
