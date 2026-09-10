.class abstract Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;
.super Ljava/lang/Object;
.source "Var1or2ArgFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function1Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function2Arg;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 32
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 38
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 36
    :cond_0
    aget-object v0, p1, v1

    aget-object v1, p1, v2

    invoke-virtual {p0, p2, p3, v0, v1}, Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 34
    :cond_1
    aget-object v0, p1, v1

    invoke-virtual {p0, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method
