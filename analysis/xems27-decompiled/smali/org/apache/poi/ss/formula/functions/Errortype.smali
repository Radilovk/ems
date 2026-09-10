.class public final Lorg/apache/poi/ss/formula/functions/Errortype;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "Errortype.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method

.method private translateErrorCodeToErrorTypeValue(I)I
    .locals 3
    .param p1, "errorCode"    # I

    .line 67
    if-eqz p1, :cond_6

    const/4 v0, 0x7

    if-eq p1, v0, :cond_5

    const/16 v1, 0xf

    if-eq p1, v1, :cond_4

    const/16 v1, 0x17

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_2

    const/16 v1, 0x24

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2a

    if-ne p1, v1, :cond_0

    .line 74
    return v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid error code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    const/4 v0, 0x6

    return v0

    .line 72
    :cond_2
    const/4 v0, 0x5

    return v0

    .line 71
    :cond_3
    const/4 v0, 0x4

    return v0

    .line 70
    :cond_4
    const/4 v0, 0x3

    return v0

    .line 69
    :cond_5
    const/4 v0, 0x2

    return v0

    .line 68
    :cond_6
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 58
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 59
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/functions/Errortype;->translateErrorCodeToErrorTypeValue(I)I

    move-result v1

    .line 62
    .local v1, "result":I
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double v3, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2
.end method
