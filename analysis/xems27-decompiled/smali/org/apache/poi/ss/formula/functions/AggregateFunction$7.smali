.class final Lorg/apache/poi/ss/formula/functions/AggregateFunction$7;
.super Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.source "AggregateFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate([D)D
    .locals 2
    .param p1, "values"    # [D

    .line 214
    array-length v0, p1

    if-lez v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/MathX;->min([D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
