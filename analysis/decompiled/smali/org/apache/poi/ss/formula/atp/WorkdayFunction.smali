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

    .prologue
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

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    .line 48
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 12
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 57
    array-length v8, p1

    if-lt v8, v9, :cond_0

    array-length v8, p1

    if-le v8, v10, :cond_1

    .line 58
    :cond_0
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 74
    :goto_0
    return-object v8

    .line 61
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v5

    .line 62
    .local v5, "srcCellRow":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v4

    .line 68
    .local v4, "srcCellCol":I
    :try_start_0
    iget-object v8, p0, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v8, v9, v5, v4}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6

    .line 69
    .local v6, "start":D
    iget-object v8, p0, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    const/4 v9, 0x1

    aget-object v9, p1, v9

    invoke-virtual {v8, v9, v5, v4}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateNumberArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 70
    .local v0, "days":I
    array-length v8, p1

    if-ne v8, v10, :cond_2

    const/4 v8, 0x2

    aget-object v3, p1, v8

    .line 71
    .local v3, "holidaysCell":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_1
    iget-object v8, p0, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-virtual {v8, v3, v5, v4}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDatesArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)[D

    move-result-object v2

    .line 72
    .local v2, "holidays":[D
    new-instance v8, Lorg/apache/poi/ss/formula/eval/NumberEval;

    sget-object v9, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    invoke-virtual {v9, v6, v7, v0, v2}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->calculateWorkdays(DI[D)Ljava/util/Date;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v0    # "days":I
    .end local v2    # "holidays":[D
    .end local v3    # "holidaysCell":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v6    # "start":D
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 70
    .end local v1    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v0    # "days":I
    .restart local v6    # "start":D
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
