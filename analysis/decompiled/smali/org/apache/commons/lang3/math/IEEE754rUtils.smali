.class public Lorg/apache/commons/lang3/math/IEEE754rUtils;
.super Ljava/lang/Object;
.source "IEEE754rUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static max(DD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 210
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    .end local p2    # "b":D
    :goto_0
    return-wide p2

    .line 213
    .restart local p2    # "b":D
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide p2, p0

    .line 214
    goto :goto_0

    .line 216
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    goto :goto_0
.end method

.method public static max(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 197
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs max([D)D
    .locals 8
    .param p0, "array"    # [D

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 152
    if-eqz p0, :cond_0

    move v1, v4

    :goto_0
    const-string v6, "The Array must not be null"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    array-length v1, p0

    if-eqz v1, :cond_1

    :goto_1
    const-string v1, "Array cannot be empty."

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v6}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    aget-wide v2, p0, v5

    .line 157
    .local v2, "max":D
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 158
    aget-wide v4, p0, v0

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v2

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "j":I
    .end local v2    # "max":D
    :cond_0
    move v1, v5

    .line 152
    goto :goto_0

    :cond_1
    move v4, v5

    .line 153
    goto :goto_1

    .line 161
    .restart local v0    # "j":I
    .restart local v2    # "max":D
    :cond_2
    return-wide v2
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 244
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    .end local p1    # "b":F
    :goto_0
    return p1

    .line 247
    .restart local p1    # "b":F
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, p0

    .line 248
    goto :goto_0

    .line 250
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 231
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static varargs max([F)F
    .locals 7
    .param p0, "array"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    if-eqz p0, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "The Array must not be null"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 175
    array-length v2, p0

    if-eqz v2, :cond_1

    :goto_1
    const-string v2, "Array cannot be empty."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 178
    aget v1, p0, v4

    .line 179
    .local v1, "max":F
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 180
    aget v2, p0, v0

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v1

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "j":I
    .end local v1    # "max":F
    :cond_0
    move v2, v4

    .line 174
    goto :goto_0

    :cond_1
    move v3, v4

    .line 175
    goto :goto_1

    .line 183
    .restart local v0    # "j":I
    .restart local v1    # "max":F
    :cond_2
    return v1
.end method

.method public static min(DD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 98
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    .end local p2    # "b":D
    :goto_0
    return-wide p2

    .line 101
    .restart local p2    # "b":D
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide p2, p0

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    goto :goto_0
.end method

.method public static min(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 85
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([D)D
    .locals 8
    .param p0, "array"    # [D

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 40
    if-eqz p0, :cond_0

    move v1, v4

    :goto_0
    const-string v6, "The Array must not be null"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    array-length v1, p0

    if-eqz v1, :cond_1

    :goto_1
    const-string v1, "Array cannot be empty."

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v6}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    aget-wide v2, p0, v5

    .line 45
    .local v2, "min":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 46
    aget-wide v4, p0, v0

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v2

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v2    # "min":D
    :cond_0
    move v1, v5

    .line 40
    goto :goto_0

    :cond_1
    move v4, v5

    .line 41
    goto :goto_1

    .line 49
    .restart local v0    # "i":I
    .restart local v2    # "min":D
    :cond_2
    return-wide v2
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 132
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    .end local p1    # "b":F
    :goto_0
    return p1

    .line 135
    .restart local p1    # "b":F
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, p0

    .line 136
    goto :goto_0

    .line 138
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 119
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v0

    return v0
.end method

.method public static varargs min([F)F
    .locals 7
    .param p0, "array"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    if-eqz p0, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "The Array must not be null"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    array-length v2, p0

    if-eqz v2, :cond_1

    :goto_1
    const-string v2, "Array cannot be empty."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    aget v1, p0, v4

    .line 67
    .local v1, "min":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 68
    aget v2, p0, v0

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v1

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "min":F
    :cond_0
    move v2, v4

    .line 62
    goto :goto_0

    :cond_1
    move v3, v4

    .line 63
    goto :goto_1

    .line 71
    .restart local v0    # "i":I
    .restart local v1    # "min":F
    :cond_2
    return v1
.end method
