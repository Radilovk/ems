.class final Lorg/apache/poi/ss/formula/atp/MRound;
.super Ljava/lang/Object;
.source "MRound.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/apache/poi/ss/formula/atp/MRound;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/MRound;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/MRound;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 12
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    const-wide/16 v10, 0x0

    .line 48
    array-length v1, p1

    const/4 v8, 0x2

    if-eq v1, v8, :cond_0

    .line 49
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 68
    :goto_0
    return-object v1

    .line 53
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v8

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v9

    invoke-static {v1, v8, v9}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4

    .line 54
    .local v4, "number":D
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v8

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v9

    invoke-static {v1, v8, v9}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v2

    .line 56
    .local v2, "multiple":D
    cmpl-double v1, v2, v10

    if-nez v1, :cond_1

    .line 57
    const-wide/16 v6, 0x0

    .line 65
    .local v6, "result":D
    :goto_1
    invoke-static {v6, v7}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    .line 66
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v1, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v2    # "multiple":D
    .end local v4    # "number":D
    .end local v6    # "result":D
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    goto :goto_0

    .line 59
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v2    # "multiple":D
    .restart local v4    # "number":D
    :cond_1
    mul-double v8, v4, v2

    cmpg-double v1, v8, v10

    if-gez v1, :cond_2

    .line 61
    :try_start_1
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v8}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 63
    :cond_2
    div-double v8, v4, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    long-to-double v8, v8

    mul-double v6, v2, v8

    .restart local v6    # "result":D
    goto :goto_1
.end method
