.class final Lorg/apache/poi/ss/formula/atp/WorkdayFunction;
.super Ljava/lang/Object;
.source "WorkdayFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# instance fields
.field private evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;

    sget-object v1, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->instance:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;-><init>(Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;)V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;)V
    .locals 0
    .param p1, "anEvaluator"    # Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    .line 48
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 57
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    array-length v0, p1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto :goto_2

    .line 61
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    .line 62
    .local v0, "srcCellRow":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v3

    .line 68
    .local v3, "srcCellCol":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    iget-object v8, p0, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    aget-object v9, p1, v4

    invoke-virtual {v8, v9, v0, v3}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 69
    .local v6, "start":D
    :try_start_1
    iget-object v8, p0, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    const/4 v9, 0x1

    aget-object v9, p1, v9

    invoke-virtual {v8, v9, v0, v3}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateNumberArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_2

    double-to-int v4, v8

    .line 70
    .local v4, "days":I
    :try_start_2
    array-length v8, p1

    if-ne v8, v2, :cond_1

    aget-object v1, p1, v1

    goto :goto_0

    :cond_1
    move-object v1, v5

    .line 71
    .local v1, "holidaysCell":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-virtual {v2, v1, v0, v3}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDatesArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)[D

    move-result-object v2
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 72
    .local v2, "holidays":[D
    :try_start_3
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    sget-object v8, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    invoke-virtual {v8, v6, v7, v4, v2}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->calculateWorkdays(DI[D)Ljava/util/Date;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v5

    .line 73
    .end local v1    # "holidaysCell":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v1

    goto :goto_1

    .end local v2    # "holidays":[D
    :catch_1
    move-exception v1

    move-object v2, v5

    .restart local v2    # "holidays":[D
    goto :goto_1

    .end local v2    # "holidays":[D
    .end local v4    # "days":I
    :catch_2
    move-exception v1

    move-object v2, v5

    .restart local v2    # "holidays":[D
    .restart local v4    # "days":I
    goto :goto_1

    .end local v2    # "holidays":[D
    .end local v4    # "days":I
    .end local v6    # "start":D
    :catch_3
    move-exception v1

    move-object v2, v5

    .line 74
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v2    # "holidays":[D
    .restart local v4    # "days":I
    .restart local v6    # "start":D
    :goto_1
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v5

    .line 58
    .end local v0    # "srcCellRow":I
    .end local v1    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .end local v2    # "holidays":[D
    .end local v3    # "srcCellCol":I
    .end local v4    # "days":I
    .end local v6    # "start":D
    :cond_2
    :goto_2
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
