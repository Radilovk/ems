.class public final Lorg/apache/poi/hssf/util/RKUtil;
.super Ljava/lang/Object;
.source "RKUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static decodeNumber(I)D
    .locals 6
    .param p0, "number"    # I

    .prologue
    const/4 v5, 0x2

    .line 36
    int-to-long v0, p0

    .line 40
    .local v0, "raw_number":J
    shr-long/2addr v0, v5

    .line 41
    const-wide/16 v2, 0x0

    .line 43
    .local v2, "rvalue":D
    and-int/lit8 v4, p0, 0x2

    if-ne v4, v5, :cond_1

    .line 47
    long-to-double v2, v0

    .line 57
    :goto_0
    and-int/lit8 v4, p0, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 63
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 66
    :cond_0
    return-wide v2

    .line 55
    :cond_1
    const/16 v4, 0x22

    shl-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    goto :goto_0
.end method
