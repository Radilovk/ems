.class public final Lorg/apache/poi/ss/formula/functions/DMin;
.super Ljava/lang/Object;
.source "DMin.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# instance fields
.field private minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DMin;->minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DMin;->minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    goto :goto_0
.end method

.method public processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 5
    .param p1, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 40
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v4, :cond_0

    .line 41
    iget-object v4, p0, Lorg/apache/poi/ss/formula/functions/DMin;->minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v4, :cond_1

    .line 42
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DMin;->minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 52
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_1
    move-object v4, p1

    .line 44
    check-cast v4, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v4}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v0

    .line 45
    .local v0, "currentValue":D
    iget-object v4, p0, Lorg/apache/poi/ss/formula/functions/DMin;->minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    check-cast v4, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v4}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v2

    .line 46
    .local v2, "oldValue":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 47
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DMin;->minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/DMin;->minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 37
    return-void
.end method
