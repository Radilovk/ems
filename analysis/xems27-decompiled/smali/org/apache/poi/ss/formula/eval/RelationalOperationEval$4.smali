.class final Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$4;
.super Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;
.source "RelationalOperationEval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertComparisonResult(I)Z
    .locals 1
    .param p1, "cmpResult"    # I

    .line 155
    if-gtz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
