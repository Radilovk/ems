.class final Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;
.super Ljava/lang/Object;
.source "NetworkdaysFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# instance fields
.field private evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;

    sget-object v1, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->instance:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;-><init>(Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;)V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;)V
    .locals 0
    .param p1, "anEvaluator"    # Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    .line 53
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 14
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 62
    array-length v1, p1

    const/4 v10, 0x2

    if-lt v1, v10, :cond_0

    array-length v1, p1

    const/4 v10, 0x3

    if-le v1, v10, :cond_1

    .line 63
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 81
    :goto_0
    return-object v1

    .line 66
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v9

    .line 67
    .local v9, "srcCellRow":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v8

    .line 72
    .local v8, "srcCellCol":I
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {v1, v10, v9, v8}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 73
    .local v2, "start":D
    iget-object v1, p0, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v1, v10, v9, v8}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v4

    .line 74
    .local v4, "end":D
    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    .line 75
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 77
    :cond_2
    array-length v1, p1

    const/4 v10, 0x3

    if-ne v1, v10, :cond_3

    const/4 v1, 0x2

    aget-object v7, p1, v1

    .line 78
    .local v7, "holidaysCell":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-virtual {v1, v7, v9, v8}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDatesArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)[D

    move-result-object v6

    .line 79
    .local v6, "holidays":[D
    new-instance v10, Lorg/apache/poi/ss/formula/eval/NumberEval;

    sget-object v1, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->calculateWorkdays(DD[D)I

    move-result v1

    int-to-double v12, v1

    invoke-direct {v10, v12, v13}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v10

    goto :goto_0

    .line 77
    .end local v6    # "holidays":[D
    .end local v7    # "holidaysCell":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 80
    .end local v2    # "start":D
    .end local v4    # "end":D
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0
.end method
