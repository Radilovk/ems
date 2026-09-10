.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$18;
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

    .line 227
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(D)D
    .locals 2
    .param p1, "d"    # D

    .line 229
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/MathX;->sign(D)S

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method
