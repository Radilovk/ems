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

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 2
    .param p1, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v0, 0x0

    .line 107
    instance-of v1, p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    .line 110
    :cond_0
    return v0
.end method
