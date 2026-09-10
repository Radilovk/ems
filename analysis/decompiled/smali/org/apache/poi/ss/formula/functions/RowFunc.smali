.class public final Lorg/apache/poi/ss/formula/functions/RowFunc;
.super Ljava/lang/Object;
.source "RowFunc.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function0Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function1Arg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I

    .prologue
    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 v1, p1, 0x1

    int-to-double v2, v1

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 39
    instance-of v1, p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v1, :cond_0

    .line 40
    check-cast p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v0

    .line 48
    .local v0, "rnum":I
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 v2, v0, 0x1

    int-to-double v2, v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v0    # "rnum":I
    :goto_1
    return-object v1

    .line 41
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v1, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v1, :cond_1

    .line 42
    check-cast p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getRow()I

    move-result v0

    .restart local v0    # "rnum":I
    goto :goto_0

    .line 45
    .end local v0    # "rnum":I
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_1
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    .line 51
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 57
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/RowFunc;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 v1, p2, 0x1

    int-to-double v2, v1

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
