.class public Lorg/apache/commons/lang3/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static nextBoolean()Z
    .locals 1

    .line 59
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static nextBytes(I)[B
    .locals 3
    .param p0, "count"    # I

    .line 73
    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Count cannot be negative."

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    new-array v0, p0, [B

    .line 76
    .local v0, "result":[B
    sget-object v1, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 77
    return-object v0
.end method

.method public static nextDouble()D
    .locals 4

    .line 188
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->nextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(DD)D
    .locals 5
    .param p0, "startInclusive"    # D
    .param p2, "endInclusive"    # D

    .line 169
    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-double v2, p2, p0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Start value must be smaller or equal to end value."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const-wide/16 v2, 0x0

    cmpl-double v4, p0, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Both range values must be non-negative."

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 173
    cmpl-double v0, p0, p2

    if-nez v0, :cond_2

    .line 174
    return-wide p0

    .line 177
    :cond_2
    sub-double v0, p2, p0

    sget-object v2, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double v0, v0, v2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static nextFloat()F
    .locals 2

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

    .line 206
    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v2, p1, p0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Start value must be smaller or equal to end value."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 208
    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Both range values must be non-negative."

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 210
    cmpl-float v0, p0, p1

    if-nez v0, :cond_2

    .line 211
    return p0

    .line 214
    :cond_2
    sub-float v0, p1, p0

    sget-object v1, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float v0, v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static nextInt()I
    .locals 2

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

    .line 95
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Start value must be smaller or equal to end value."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Both range values must be non-negative."

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    if-ne p0, p1, :cond_2

    .line 100
    return p0

    .line 103
    :cond_2
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    sub-int v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static nextLong()J
    .locals 4

    .line 151
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextLong(JJ)J
    .locals 5
    .param p0, "startInclusive"    # J
    .param p2, "endExclusive"    # J

    .line 132
    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p2, p0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Start value must be smaller or equal to end value."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Both range values must be non-negative."

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    cmp-long v0, p0, p2

    if-nez v0, :cond_2

    .line 137
    return-wide p0

    .line 140
    :cond_2
    long-to-double v0, p0

    long-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->nextDouble(DD)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method
