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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    .line 53
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 20
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 62
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    array-length v0, v2

    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    array-length v0, v2

    const/4 v4, 0x3

    if-le v0, v4, :cond_0

    goto :goto_2

    .line 66
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v5

    .line 67
    .local v5, "srcCellRow":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v6

    .line 72
    .local v6, "srcCellCol":I
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, v1, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-virtual {v0, v10, v5, v6}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v10
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 73
    .local v10, "start":D
    :try_start_1
    iget-object v0, v1, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-virtual {v0, v12, v5, v6}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v7
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 74
    .local v7, "end":D
    cmpl-double v0, v10, v7

    if-lez v0, :cond_1

    .line 75
    :try_start_2
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 77
    :cond_1
    array-length v0, v2

    if-ne v0, v4, :cond_2

    aget-object v0, v2, v3

    goto :goto_0

    :cond_2
    move-object v0, v9

    .line 78
    .local v0, "holidaysCell":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    iget-object v3, v1, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-virtual {v3, v0, v5, v6}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDatesArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)[D

    move-result-object v17
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 79
    .local v17, "holidays":[D
    :try_start_3
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    sget-object v12, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    move-wide v13, v10

    move-wide v15, v7

    invoke-virtual/range {v12 .. v17}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->calculateWorkdays(DD[D)I

    move-result v4

    int-to-double v12, v4

    invoke-direct {v3, v12, v13}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v3

    .line 80
    .end local v0    # "holidaysCell":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_1

    .end local v17    # "holidays":[D
    :catch_1
    move-exception v0

    move-object v3, v9

    .local v3, "holidays":[D
    goto :goto_1

    .end local v3    # "holidays":[D
    .end local v7    # "end":D
    :catch_2
    move-exception v0

    move-object v3, v9

    .restart local v3    # "holidays":[D
    .restart local v7    # "end":D
    goto :goto_1

    .end local v3    # "holidays":[D
    .end local v7    # "end":D
    .end local v10    # "start":D
    :catch_3
    move-exception v0

    move-object v3, v9

    .restart local v3    # "holidays":[D
    move-wide v9, v7

    .local v9, "end":D
    move-wide/from16 v18, v7

    move-wide/from16 v10, v18

    .line 81
    .end local v9    # "end":D
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v7    # "end":D
    .restart local v10    # "start":D
    :goto_1
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v4

    .line 63
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .end local v3    # "holidays":[D
    .end local v5    # "srcCellRow":I
    .end local v6    # "srcCellCol":I
    .end local v7    # "end":D
    .end local v10    # "start":D
    :cond_3
    :goto_2
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
