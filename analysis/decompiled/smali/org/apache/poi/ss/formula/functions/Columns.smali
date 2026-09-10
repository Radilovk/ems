.class public final Lorg/apache/poi/ss/formula/functions/Columns;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "Columns.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
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
    .line 36
    instance-of v1, p3, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v1, :cond_0

    .line 37
    check-cast p3, Lorg/apache/poi/ss/formula/TwoDEval;

    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v0

    .line 43
    .local v0, "result":I
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double v2, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v0    # "result":I
    :goto_1
    return-object v1

    .line 38
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v1, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v1, :cond_1

    .line 39
    const/4 v0, 0x1

    .restart local v0    # "result":I
    goto :goto_0

    .line 41
    .end local v0    # "result":I
    :cond_1
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_1
.end method
