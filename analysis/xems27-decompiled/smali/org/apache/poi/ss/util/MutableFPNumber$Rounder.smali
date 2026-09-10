.class final Lorg/apache/poi/ss/util/MutableFPNumber$Rounder;
.super Ljava/lang/Object;
.source "MutableFPNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/MutableFPNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Rounder"
.end annotation


# static fields
.field private static final HALF_BITS:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 136
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 137
    .local v0, "bis":[Ljava/math/BigInteger;
    const-wide/16 v1, 0x1

    .line 138
    .local v1, "acc":J
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 139
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v0, v3

    .line 140
    const/4 v4, 0x1

    shl-long/2addr v1, v4

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "i":I
    :cond_0
    sput-object v0, Lorg/apache/poi/ss/util/MutableFPNumber$Rounder;->HALF_BITS:[Ljava/math/BigInteger;

    .line 143
    .end local v0    # "bis":[Ljava/math/BigInteger;
    .end local v1    # "acc":J
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static round(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 1
    .param p0, "bi"    # Ljava/math/BigInteger;
    .param p1, "nBits"    # I

    .line 148
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 149
    return-object p0

    .line 151
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/util/MutableFPNumber$Rounder;->HALF_BITS:[Ljava/math/BigInteger;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
