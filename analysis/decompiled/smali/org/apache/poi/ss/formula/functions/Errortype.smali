.class public final Lorg/apache/poi/ss/formula/functions/Errortype;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "Errortype.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method

.method private translateErrorCodeToErrorTypeValue(I)I
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 67
    sparse-switch p1, :sswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid error code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :sswitch_0
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    .line 69
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 70
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 71
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 72
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 73
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 74
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
        0xf -> :sswitch_2
        0x17 -> :sswitch_3
        0x1d -> :sswitch_4
        0x24 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 58
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 59
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/functions/Errortype;->translateErrorCodeToErrorTypeValue(I)I

    move-result v1

    .line 62
    .local v1, "result":I
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double v4, v1

    invoke-direct {v2, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method
