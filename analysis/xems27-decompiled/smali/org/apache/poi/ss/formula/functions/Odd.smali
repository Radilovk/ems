.class public final Lorg/apache/poi/ss/formula/functions/Odd;
.super Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;
.source "Odd.java"


# static fields
.field private static final PARITY_MASK:J = -0x2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;-><init>()V

    return-void
.end method

.method private static calcOdd(D)J
    .locals 9
    .param p0, "d"    # D

    .line 38
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p0

    .line 39
    .local v0, "dpm1":D
    double-to-long v2, v0

    const-wide/16 v4, -0x2

    and-long/2addr v2, v4

    .line 40
    .local v2, "x":J
    long-to-double v4, v2

    const-wide/16 v6, 0x1

    cmpl-double v8, v4, v0

    if-nez v8, :cond_0

    .line 41
    sub-long v4, v2, v6

    return-wide v4

    .line 43
    :cond_0
    add-long/2addr v6, v2

    return-wide v6
.end method


# virtual methods
.method protected evaluate(D)D
    .locals 3
    .param p1, "d"    # D

    .line 28
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 29
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 31
    :cond_0
    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    .line 32
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/Odd;->calcOdd(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 34
    :cond_1
    neg-double v0, p1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/Odd;->calcOdd(D)J

    move-result-wide v0

    neg-long v0, v0

    long-to-double v0, v0

    return-wide v0
.end method
