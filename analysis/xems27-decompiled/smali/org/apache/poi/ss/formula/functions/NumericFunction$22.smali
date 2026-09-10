.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$22;
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

    .line 248
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$OneArg;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(D)D
    .locals 2
    .param p1, "d"    # D

    .line 250
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    return-wide v0
.end method
