.class final Lorg/apache/poi/ss/formula/functions/Sumxmy2$1;
.super Ljava/lang/Object;
.source "Sumxmy2.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Sumxmy2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accumulate(DD)D
    .locals 4
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 35
    sub-double v0, p1, p3

    .line 36
    .local v0, "xmy":D
    mul-double v2, v0, v0

    return-wide v2
.end method
