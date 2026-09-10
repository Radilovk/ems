.class final Lorg/apache/poi/ss/formula/functions/LogicalFunction$9;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
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
    .line 131
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 134
    instance-of v0, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-nez v0, :cond_0

    instance-of v0, p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BoolEval;->TRUE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 137
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    goto :goto_0
.end method
