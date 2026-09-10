.class public final Lorg/apache/poi/ss/formula/functions/Choose;
.super Ljava/lang/Object;
.source "Choose.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 2
    .param p0, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 55
    .local v0, "ev":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 33
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 34
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0, p2, p3}, Lorg/apache/poi/ss/formula/functions/Choose;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v0

    .line 39
    .local v0, "ix":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    array-length v1, p1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    aget-object v1, p1, v0

    invoke-static {v1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 43
    .local v1, "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v2, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v1, v2, :cond_2

    .line 44
    sget-object v2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object v2

    .line 46
    :cond_2
    return-object v1

    .line 40
    .end local v1    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 47
    .end local v0    # "ix":I
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
