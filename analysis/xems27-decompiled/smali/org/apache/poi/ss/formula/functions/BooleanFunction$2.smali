.class final Lorg/apache/poi/ss/formula/functions/BooleanFunction$2;
.super Lorg/apache/poi/ss/formula/functions/BooleanFunction;
.source "BooleanFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/BooleanFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInitialResultValue()Z
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method protected partialEvaluate(ZZ)Z
    .locals 1
    .param p1, "cumulativeResult"    # Z
    .param p2, "currentValue"    # Z

    .line 131
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
