.class public Lorg/apache/commons/lang3/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static nextBoolean()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static nextBytes(I)[B
    .locals 4
    .param p0, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v3, "Count cannot be negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    new-array v0, p0, [B

    .line 76
    .local v0, "result":[B
    sget-object v1, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 77
    return-object v0

    .end local v0    # "result":[B
    :cond_0
    move v1, v2

    .line 73
    goto :goto_0
.end method

.method public static nextDouble()D
    .locals 4

    .prologue
    .line 188
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->nextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(DD)D
    .locals 6
    .param p0, "startInclusive"    # D
    .param p2, "endInclusive"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    cmpl-double v0, p2, p0

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const-wide/16 v4, 0x0

    cmpl-double v0, p0, v4

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 173
    cmpl-double v0, p0, p2

    if-nez v0, :cond_2

    .line 177
    .end local p0    # "startInclusive":D
    :goto_2
    return-wide p0

    .restart local p0    # "startInclusive":D
    :cond_0
    move v0, v2

    .line 169
    goto :goto_0

    :cond_1
    move v1, v2

    .line 171
    goto :goto_1

    .line 177
    :cond_2
    sub-double v0, p2, p0

    sget-object v2, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr p0, v0

    goto :goto_2
.end method

.method public static nextFloat()F
    .locals 2

    .prologue
    .line 225
    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->nextFloat(FF)F

    move-result v0

    return v0
.end method

.method public static nextFloat(FF)F
    .locals 5
    .param p0, "startInclusive"    # F
    .param p1, "endInclusive"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    cmpl-float v0, p1, p0

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 208
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 210
    cmpl-float v0, p0, p1

    if-nez v0, :cond_2

    .line 214
    .end local p0    # "startInclusive":F
    :goto_2
    return p0

    .restart local p0    # "startInclusive":F
    :cond_0
    move v0, v2

    .line 206
    goto :goto_0

    :cond_1
    move v1, v2

    .line 208
    goto :goto_1

    .line 214
    :cond_2
    sub-float v0, p1, p0

    sget-object v1, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    goto :goto_2
.end method

.method public static nextInt()I
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    return v0
.end method

.method public static nextInt(II)I
    .locals 5
    .param p0, "startInclusive"    # I
    .param p1, "endExclusive"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    if-lt p1, p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    if-ltz p0, :cond_1

    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    if-ne p0, p1, :cond_2

    .line 103
    .end local p0    # "startInclusive":I
    :goto_2
    return p0

    .restart local p0    # "startInclusive":I
    :cond_0
    move v0, v2

    .line 95
    goto :goto_0

    :cond_1
    move v1, v2

    .line 97
    goto :goto_1

    .line 103
    :cond_2
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    sub-int v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p0, v0

    goto :goto_2
.end method

.method public static nextLong()J
    .locals 4

    .prologue
    .line 151
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextLong(JJ)J
    .locals 6
    .param p0, "startInclusive"    # J
    .param p2, "endExclusive"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    cmp-long v0, p2, p0

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    cmp-long v0, p0, p2

    if-nez v0, :cond_2

    .line 140
    .end local p0    # "startInclusive":J
    :goto_2
    return-wide p0

    .restart local p0    # "startInclusive":J
    :cond_0
    move v0, v2

    .line 132
    goto :goto_0

    :cond_1
    move v1, v2

    .line 134
    goto :goto_1

    .line 140
    :cond_2
    long-to-double v0, p0

    long-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->nextDouble(DD)D

    move-result-wide v0

    double-to-long p0, v0

    goto :goto_2
.end method
