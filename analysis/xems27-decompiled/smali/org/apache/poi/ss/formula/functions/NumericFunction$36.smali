.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$36;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
.source "NumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/NumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final DEFAULT_RETURN_RESULT:D = 1.0


# instance fields
.field private final FACTORIALS:[J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 395
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    .line 440
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->FACTORIALS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data
.end method

.method private checkArgument(D)Z
    .locals 3
    .param p1, "aDouble"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 417
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    .line 420
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    .line 424
    const/4 v0, 0x1

    return v0

    .line 421
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private cumulativeProbability(ID)D
    .locals 5
    .param p1, "x"    # I
    .param p2, "lambda"    # D

    .line 432
    const-wide/16 v0, 0x0

    .line 433
    .local v0, "result":D
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-gt v2, p1, :cond_0

    .line 434
    invoke-direct {p0, v2, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->probability(ID)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "k":I
    :cond_0
    return-wide v0
.end method

.method private isDefaultResult(DD)Z
    .locals 3
    .param p1, "x"    # D
    .param p3, "mean"    # D

    .line 409
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    .line 410
    const/4 v0, 0x1

    return v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private probability(ID)D
    .locals 4
    .param p1, "k"    # I
    .param p2, "lambda"    # D

    .line 428
    int-to-double v0, p1

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->factorial(I)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 460
    const-wide/16 v0, 0x0

    .line 461
    .local v0, "mean":D
    const-wide/16 v2, 0x0

    .line 462
    .local v2, "x":D
    move-object v4, p5

    check-cast v4, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v4

    .line 463
    .local v4, "cumulative":Z
    const-wide/16 v5, 0x0

    .line 466
    .local v5, "result":D
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v7

    move-wide v2, v7

    .line 467
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v7

    move-wide v0, v7

    .line 471
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->isDefaultResult(DD)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 472
    new-instance v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v7

    .line 475
    :cond_0
    invoke-direct {p0, v2, v3}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->checkArgument(D)Z

    .line 476
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->checkArgument(D)Z

    .line 479
    if-eqz v4, :cond_1

    .line 480
    double-to-int v7, v2

    invoke-direct {p0, v7, v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->cumulativeProbability(ID)D

    move-result-wide v7

    move-wide v5, v7

    goto :goto_0

    .line 482
    :cond_1
    double-to-int v7, v2

    invoke-direct {p0, v7, v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->probability(ID)D

    move-result-wide v7

    move-wide v5, v7

    .line 486
    :goto_0
    invoke-static {v5, v6}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    nop

    .line 492
    new-instance v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v7, v5, v6}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v7

    .line 488
    :catch_0
    move-exception v7

    .line 489
    .local v7, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v8

    return-object v8
.end method

.method public factorial(I)J
    .locals 3
    .param p1, "n"    # I

    .line 451
    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->FACTORIALS:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid argument should be in the range [0..20]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
