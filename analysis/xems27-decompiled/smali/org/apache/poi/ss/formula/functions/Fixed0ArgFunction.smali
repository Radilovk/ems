.class public abstract Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;
.super Ljava/lang/Object;
.source "Fixed0ArgFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function0Arg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 30
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 33
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;->evaluate(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method
