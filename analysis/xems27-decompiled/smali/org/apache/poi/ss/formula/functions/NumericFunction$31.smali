.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$31;
.super Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoArg;
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

    .line 311
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoArg;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(DD)D
    .locals 2
    .param p1, "d0"    # D
    .param p3, "d1"    # D

    .line 313
    double-to-int v0, p3

    invoke-static {p1, p2, v0}, Lorg/apache/poi/ss/formula/functions/MathX;->roundDown(DI)D

    move-result-wide v0

    return-wide v0
.end method
