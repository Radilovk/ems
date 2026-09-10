.class public final Lorg/apache/poi/ss/formula/functions/T;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "T.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 36
    move-object v0, p3

    .line 37
    .local v0, "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v1, :cond_0

    .line 39
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 40
    .local v1, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .end local v1    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    goto :goto_0

    .line 41
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/AreaEval;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    nop

    .line 46
    :goto_1
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v1, :cond_2

    .line 48
    return-object v0

    .line 51
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_3

    .line 53
    return-object v0

    .line 56
    :cond_3
    sget-object v1, Lorg/apache/poi/ss/formula/eval/StringEval;->EMPTY_INSTANCE:Lorg/apache/poi/ss/formula/eval/StringEval;

    return-object v1
.end method
