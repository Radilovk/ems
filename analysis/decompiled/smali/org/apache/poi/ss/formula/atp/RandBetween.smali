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

    .prologue
    .line 42
    new-instance v0, Lorg/apache/poi/ss/formula/atp/RandBetween;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/RandBetween;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/RandBetween;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 12
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 59
    array-length v3, p1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    .line 60
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 80
    :goto_0
    return-object v3

    .line 64
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v6

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v7

    invoke-static {v3, v6, v7}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0

    .line 65
    .local v0, "bottom":D
    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v6

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v7

    invoke-static {v3, v6, v7}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4

    .line 66
    .local v4, "top":D
    cmpl-double v3, v0, v4

    if-lez v3, :cond_1

    .line 67
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0    # "bottom":D
    .end local v4    # "top":D
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 73
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v0    # "bottom":D
    .restart local v4    # "top":D
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 74
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 76
    cmpl-double v3, v0, v4

    if-lez v3, :cond_2

    .line 77
    move-wide v4, v0

    .line 80
    :cond_2
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    sub-double v8, v4, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-int v6, v6

    int-to-double v6, v6

    add-double/2addr v6, v0

    invoke-direct {v3, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method
