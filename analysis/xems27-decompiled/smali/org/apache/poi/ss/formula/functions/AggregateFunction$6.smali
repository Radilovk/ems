.class final Lorg/apache/poi/ss/formula/functions/AggregateFunction$6;
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

    .line 207
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate([D)D
    .locals 2
    .param p1, "values"    # [D

    .line 209
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/StatsLib;->median([D)D

    move-result-wide v0

    return-wide v0
.end method
