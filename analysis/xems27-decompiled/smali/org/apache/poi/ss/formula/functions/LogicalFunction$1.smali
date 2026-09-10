.class final Lorg/apache/poi/ss/formula/functions/LogicalFunction$1;
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

    .line 58
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 1
    .param p1, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 60
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    return v0
.end method
