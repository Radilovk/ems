.class public final Lorg/apache/poi/ss/formula/functions/TimeFunc;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
.source "TimeFunc.java"


# static fields
.field private static final HOURS_PER_DAY:I = 0x18

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    return-void
.end method

.method private static evalArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 2
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v1, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne p0, v1, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 58
    :goto_0
    return v1

    .line 56
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 58
    .local v0, "ev":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v1

    goto :goto_0
.end method

.method private static evaluate(III)D
    .locals 6
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x7fff

    .line 77
    if-gt p0, v1, :cond_0

    if-gt p1, v1, :cond_0

    if-le p2, v1, :cond_1

    .line 78
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 80
    :cond_1
    mul-int/lit16 v1, p0, 0xe10

    mul-int/lit8 v2, p1, 0x3c

    add-int/2addr v1, v2

    add-int v0, v1, p2

    .line 82
    .local v0, "totalSeconds":I
    if-gez v0, :cond_2

    .line 83
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 85
    :cond_2
    const v1, 0x15180

    rem-int v1, v0, v1

    int-to-double v2, v1

    const-wide v4, 0x40f5180000000000L    # 86400.0

    div-double/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 46
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TimeFunc;->evalArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v1

    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TimeFunc;->evalArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v4

    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TimeFunc;->evalArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v5

    invoke-static {v1, v4, v5}, Lorg/apache/poi/ss/formula/functions/TimeFunc;->evaluate(III)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 50
    .local v2, "result":D
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v2    # "result":D
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    goto :goto_0
.end method
