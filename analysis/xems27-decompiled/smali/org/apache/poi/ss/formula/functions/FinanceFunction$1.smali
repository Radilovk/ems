.class final Lorg/apache/poi/ss/formula/functions/FinanceFunction$1;
.super Lorg/apache/poi/ss/formula/functions/FinanceFunction;
.source "FinanceFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/FinanceFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(DDDDZ)D
    .locals 2
    .param p1, "rate"    # D
    .param p3, "arg1"    # D
    .param p5, "arg2"    # D
    .param p7, "arg3"    # D
    .param p9, "type"    # Z

    .line 100
    invoke-static/range {p1 .. p9}, Lorg/apache/poi/ss/formula/functions/FinanceLib;->fv(DDDDZ)D

    move-result-wide v0

    return-wide v0
.end method
