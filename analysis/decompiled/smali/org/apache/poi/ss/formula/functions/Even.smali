.class public final Lorg/apache/poi/ss/formula/functions/Even;
.super Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;
.source "Even.java"


# static fields
.field private static final PARITY_MASK:J = -0x2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;-><init>()V

    return-void
.end method

.method private static calcEven(D)J
    .locals 6
    .param p0, "d"    # D

    .prologue
    .line 43
    double-to-long v2, p0

    const-wide/16 v4, -0x2

    and-long v0, v2, v4

    .line 44
    .local v0, "x":J
    long-to-double v2, v0

    cmpl-double v2, v2, p0

    if-nez v2, :cond_0

    .line 47
    .end local v0    # "x":J
    :goto_0
    return-wide v0

    .restart local v0    # "x":J
    :cond_0
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected evaluate(D)D
    .locals 5
    .param p1, "d"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    cmpl-double v4, p1, v2

    if-nez v4, :cond_0

    .line 39
    :goto_0
    return-wide v2

    .line 34
    :cond_0
    cmpl-double v2, p1, v2

    if-lez v2, :cond_1

    .line 35
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/Even;->calcEven(D)J

    move-result-wide v0

    .line 39
    .local v0, "result":J
    :goto_1
    long-to-double v2, v0

    goto :goto_0

    .line 37
    .end local v0    # "result":J
    :cond_1
    neg-double v2, p1

    invoke-static {v2, v3}, Lorg/apache/poi/ss/formula/functions/Even;->calcEven(D)J

    move-result-wide v2

    neg-long v0, v2

    .restart local v0    # "result":J
    goto :goto_1
.end method
