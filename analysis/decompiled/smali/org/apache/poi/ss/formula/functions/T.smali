.class public final Lorg/apache/poi/ss/formula/functions/T;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "T.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v3, 0x0

    .line 36
    move-object v0, p3

    .line 37
    .local v0, "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v2, v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 39
    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 40
    .local v1, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 46
    .end local v1    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_0
    :goto_0
    instance-of v2, v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v2, :cond_3

    .line 56
    .end local v0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    :goto_1
    return-object v0

    .line 41
    .restart local v0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    instance-of v2, v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v2, :cond_0

    .line 43
    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .end local v0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {v0, v3, v3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .restart local v0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_0

    .line 51
    :cond_3
    instance-of v2, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v2, :cond_1

    .line 56
    sget-object v0, Lorg/apache/poi/ss/formula/eval/StringEval;->EMPTY_INSTANCE:Lorg/apache/poi/ss/formula/eval/StringEval;

    goto :goto_1
.end method
