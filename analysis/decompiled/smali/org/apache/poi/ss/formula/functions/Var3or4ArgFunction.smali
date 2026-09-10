.class abstract Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;
.super Ljava/lang/Object;
.source "Var3or4ArgFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function3Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function4Arg;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 38
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    aget-object v3, p1, v1

    aget-object v4, p1, v2

    aget-object v5, p1, v5

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_1
    aget-object v3, p1, v1

    aget-object v4, p1, v2

    aget-object v5, p1, v5

    const/4 v0, 0x3

    aget-object v6, p1, v0

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
