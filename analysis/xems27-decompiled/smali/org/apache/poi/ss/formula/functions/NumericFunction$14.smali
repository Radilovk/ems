.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$14;
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

    .line 207
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(D)D
    .locals 2
    .param p1, "d"    # D

    .line 209
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method
