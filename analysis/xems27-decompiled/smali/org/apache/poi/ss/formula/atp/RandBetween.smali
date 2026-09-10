.class final Lorg/apache/poi/ss/formula/atp/RandBetween;
.super Ljava/lang/Object;
.source "RandBetween.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/apache/poi/ss/formula/atp/RandBetween;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/RandBetween;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/RandBetween;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 13
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 59
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 60
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v4

    invoke-static {v0, v3, v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    .local v3, "bottom":D
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, p1, v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v5

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v6

    invoke-static {v0, v5, v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .local v0, "top":D
    cmpl-double v2, v3, v0

    if-lez v2, :cond_1

    .line 67
    :try_start_2
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 69
    :catch_0
    move-exception v2

    goto :goto_1

    .line 71
    :cond_1
    nop

    .line 73
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 74
    .end local v3    # "bottom":D
    .local v2, "bottom":D
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 76
    cmpl-double v4, v2, v0

    if-lez v4, :cond_2

    .line 77
    move-wide v0, v2

    .line 80
    :cond_2
    new-instance v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    sub-double v7, v0, v2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    mul-double v5, v5, v7

    double-to-int v5, v5

    int-to-double v5, v5

    add-double/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v4

    .line 69
    .end local v0    # "top":D
    .end local v2    # "bottom":D
    .restart local v3    # "bottom":D
    :catch_1
    move-exception v0

    goto :goto_0

    .end local v3    # "bottom":D
    :catch_2
    move-exception v0

    move-wide v3, v1

    .restart local v3    # "bottom":D
    :goto_0
    move-wide v11, v1

    move-object v2, v0

    move-wide v0, v11

    .line 70
    .restart local v0    # "top":D
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_1
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v5
.end method
