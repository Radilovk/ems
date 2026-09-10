.class abstract Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;
.super Ljava/lang/Object;
.source "Var3or4ArgFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function3Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function4Arg;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 32
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    .line 38
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 36
    :cond_0
    aget-object v0, p1, v3

    aget-object v5, p1, v2

    aget-object v6, p1, v1

    aget-object v7, p1, v4

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 34
    :cond_1
    aget-object v4, p1, v3

    aget-object v5, p1, v2

    aget-object v6, p1, v1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method
