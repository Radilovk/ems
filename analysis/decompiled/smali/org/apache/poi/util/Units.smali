.class public Lorg/apache/poi/util/Units;
.super Ljava/lang/Object;
.source "Units.java"


# static fields
.field public static final EMU_PER_PIXEL:I = 0x2535

.field public static final EMU_PER_POINT:I = 0x319c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixedPointToDecimal(I)D
    .locals 10
    .param p0, "fixedPoint"    # I

    .prologue
    .line 53
    shr-int/lit8 v3, p0, 0x10

    .line 54
    .local v3, "i":I
    shr-int/lit8 v4, p0, 0x0

    const v5, 0xffff

    and-int v2, v4, v5

    .line 55
    .local v2, "f":I
    int-to-double v4, v3

    int-to-double v6, v2

    const-wide/high16 v8, 0x40f0000000000000L    # 65536.0

    div-double/2addr v6, v8

    add-double v0, v4, v6

    .line 56
    .local v0, "decimal":D
    return-wide v0
.end method

.method public static toEMU(D)I
    .locals 2
    .param p0, "points"    # D

    .prologue
    .line 32
    const-wide v0, 0x40c8ce0000000000L    # 12700.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static toPoints(J)D
    .locals 4
    .param p0, "emu"    # J

    .prologue
    .line 41
    long-to-double v0, p0

    const-wide v2, 0x40c8ce0000000000L    # 12700.0

    div-double/2addr v0, v2

    return-wide v0
.end method
