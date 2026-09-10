.class public Landroid/support/v4/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .locals 1
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .line 58
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 59
    return-wide p2

    .line 60
    :cond_0
    cmpl-double v0, p0, p4

    if-lez v0, :cond_1

    .line 61
    return-wide p4

    .line 63
    :cond_1
    return-wide p0
.end method

.method public static clamp(FII)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 37
    int-to-float v0, p1

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 38
    int-to-float v0, p1

    return v0

    .line 39
    :cond_0
    int-to-float v0, p2

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 40
    int-to-float v0, p2

    return v0

    .line 42
    :cond_1
    return p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 79
    if-ge p0, p1, :cond_0

    .line 80
    return p1

    .line 81
    :cond_0
    if-le p0, p2, :cond_1

    .line 82
    return p2

    .line 84
    :cond_1
    return p0
.end method
