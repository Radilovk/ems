.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$16;
.super Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;
.source "NumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/NumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(D)D
    .locals 4
    .param p1, "d"    # D

    .line 219
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LOG_10_TO_BASE_e:D

    div-double/2addr v0, v2

    return-wide v0
.end method
