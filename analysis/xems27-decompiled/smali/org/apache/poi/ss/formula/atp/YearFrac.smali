.class final Lorg/apache/poi/ss/formula/atp/YearFrac;
.super Ljava/lang/Object;
.source "YearFrac.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/apache/poi/ss/formula/atp/YearFrac;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/YearFrac;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/YearFrac;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 6
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 84
    int-to-short v0, p2

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 86
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v1, :cond_1

    .line 87
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "strVal":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 89
    .local v2, "dVal":Ljava/lang/Double;
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    return-wide v3

    .line 92
    :cond_0
    invoke-static {v1}, Lorg/apache/poi/ss/formula/atp/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 93
    .local v3, "date":Ljava/util/Calendar;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v4

    return-wide v4

    .line 95
    .end local v1    # "strVal":Ljava/lang/String;
    .end local v2    # "dVal":Ljava/lang/Double;
    .end local v3    # "date":Ljava/util/Calendar;
    :cond_1
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v1

    return-wide v1
.end method

.method private static evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 2
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 99
    int-to-short v0, p2

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 100
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 60
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    .line 61
    .local v0, "srcCellRow":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    .line 64
    .local v1, "srcCellCol":I
    const/4 v2, 0x0

    .line 65
    .local v2, "basis":I
    const-wide/16 v3, 0x0

    :try_start_0
    array-length v5, p1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v7, 0x3

    if-eq v5, v7, :cond_0

    .line 71
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v3

    .line 67
    :cond_0
    aget-object v5, p1, v6

    invoke-static {v5, v0, v1}, Lorg/apache/poi/ss/formula/atp/YearFrac;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v5

    move v2, v5

    .line 69
    :cond_1
    nop

    .line 73
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v5, v0, v1}, Lorg/apache/poi/ss/formula/atp/YearFrac;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v5

    .line 74
    .local v5, "startDateVal":D
    const/4 v7, 0x1

    aget-object v7, p1, v7

    invoke-static {v7, v0, v1}, Lorg/apache/poi/ss/formula/atp/YearFrac;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v7

    .line 75
    .local v7, "endDateVal":D
    invoke-static {v5, v6, v7, v8, v2}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->calculate(DDI)D

    move-result-wide v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v3

    .line 78
    .end local v5    # "startDateVal":D
    .end local v7    # "endDateVal":D
    .local v2, "result":D
    nop

    .line 80
    new-instance v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v4, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v4

    .line 76
    .end local v2    # "result":D
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v3, "result":D
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    return-object v5
.end method
