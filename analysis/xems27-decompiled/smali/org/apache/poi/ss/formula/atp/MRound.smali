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

    .line 39
    new-instance v0, Lorg/apache/poi/ss/formula/atp/MRound;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/MRound;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/MRound;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 11
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 48
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 49
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 53
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
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 54
    .local v3, "number":D
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

    move-result-wide v5
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 56
    .local v5, "multiple":D
    cmpl-double v0, v5, v1

    if-nez v0, :cond_1

    .line 57
    const-wide/16 v0, 0x0

    .local v0, "result":D
    goto :goto_0

    .line 59
    .end local v0    # "result":D
    :cond_1
    mul-double v7, v3, v5

    cmpg-double v0, v7, v1

    if-ltz v0, :cond_2

    .line 63
    div-double v7, v3, v5

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v0
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1

    long-to-double v0, v0

    mul-double v0, v0, v5

    .line 65
    .restart local v0    # "result":D
    :goto_0
    :try_start_3
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    .line 66
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v2

    .line 67
    :catch_0
    move-exception v2

    goto :goto_2

    .end local v0    # "result":D
    :catch_1
    move-exception v0

    move-wide v9, v1

    move-object v2, v0

    move-wide v0, v9

    .local v1, "result":D
    goto :goto_2

    .line 61
    .end local v1    # "result":D
    :cond_2
    :try_start_4
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v7}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .end local v3    # "number":D
    .end local v5    # "multiple":D
    .end local p1    # "args":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p2    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    throw v0
    :try_end_4
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 67
    .restart local v3    # "number":D
    .restart local p1    # "args":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p2    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    :catch_2
    move-exception v0

    goto :goto_1

    .end local v3    # "number":D
    :catch_3
    move-exception v0

    move-wide v3, v1

    .restart local v3    # "number":D
    :goto_1
    move-wide v5, v1

    .local v5, "result":D
    move-wide v9, v1

    move-object v2, v0

    move-wide v0, v5

    move-wide v5, v9

    .line 68
    .restart local v0    # "result":D
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v5, "multiple":D
    :goto_2
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v7

    return-object v7
.end method
