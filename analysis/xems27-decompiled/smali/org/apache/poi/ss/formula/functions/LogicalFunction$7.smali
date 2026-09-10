.class final Lorg/apache/poi/ss/formula/functions/LogicalFunction$7;
.super Lorg/apache/poi/ss/formula/functions/LogicalFunction;
.source "LogicalFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LogicalFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 2
    .param p1, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 107
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 110
    :cond_1
    return v1
.end method
