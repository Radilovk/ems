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

    .prologue
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

    .prologue
    .line 417
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    .line 420
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 421
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 424
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private cumulativeProbability(ID)D
    .locals 6
    .param p1, "x"    # I
    .param p2, "lambda"    # D

    .prologue
    .line 432
    const-wide/16 v2, 0x0

    .line 433
    .local v2, "result":D
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 434
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->probability(ID)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    return-wide v2
.end method

.method private isDefaultResult(DD)Z
    .locals 5
    .param p1, "x"    # D
    .param p3, "mean"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 409
    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    cmpl-double v0, p3, v2

    if-nez v0, :cond_0

    .line 410
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private probability(ID)D
    .locals 4
    .param p1, "k"    # I
    .param p2, "lambda"    # D

    .prologue
    .line 428
    int-to-double v0, p1

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->factorial(I)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 14
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 460
    const-wide/16 v4, 0x0

    .line 461
    .local v4, "mean":D
    const-wide/16 v8, 0x0

    .line 462
    .local v8, "x":D
    check-cast p5, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .end local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual/range {p5 .. p5}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v2

    .line 463
    .local v2, "cumulative":Z
    const-wide/16 v6, 0x0

    .line 466
    .local v6, "result":D
    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v8

    .line 467
    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v4

    .line 471
    invoke-direct {p0, v8, v9, v4, v5}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->isDefaultResult(DD)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 472
    new-instance v10, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-direct {v10, v12, v13}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .line 492
    :goto_0
    return-object v10

    .line 475
    :cond_0
    invoke-direct {p0, v8, v9}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->checkArgument(D)Z

    .line 476
    invoke-direct {p0, v4, v5}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->checkArgument(D)Z

    .line 479
    if-eqz v2, :cond_1

    .line 480
    double-to-int v10, v8

    invoke-direct {p0, v10, v4, v5}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->cumulativeProbability(ID)D

    move-result-wide v6

    .line 486
    :goto_1
    invoke-static {v6, v7}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    new-instance v10, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v10, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0

    .line 482
    :cond_1
    double-to-int v10, v8

    :try_start_1
    invoke-direct {p0, v10, v4, v5}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->probability(ID)D
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    goto :goto_1

    .line 488
    :catch_0
    move-exception v3

    .line 489
    .local v3, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v10

    goto :goto_0
.end method

.method public factorial(I)J
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 451
    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid argument should be in the range [0..20]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->FACTORIALS:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
