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

    .prologue
    .line 53
    new-instance v0, Lorg/apache/poi/ss/formula/atp/YearFrac;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/YearFrac;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/YearFrac;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
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

    .prologue
    .line 84
    int-to-short v4, p2

    invoke-static {p0, p1, v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 86
    .local v3, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v4, :cond_1

    .line 87
    check-cast v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "strVal":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 89
    .local v0, "dVal":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 95
    .end local v0    # "dVal":Ljava/lang/Double;
    .end local v2    # "strVal":Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 92
    .restart local v0    # "dVal":Ljava/lang/Double;
    .restart local v2    # "strVal":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lorg/apache/poi/ss/formula/atp/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 93
    .local v1, "date":Ljava/util/Calendar;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v4

    goto :goto_0

    .line 95
    .end local v0    # "dVal":Ljava/lang/Double;
    .end local v1    # "date":Ljava/util/Calendar;
    .end local v2    # "strVal":Ljava/lang/String;
    .restart local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4

    goto :goto_0
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

    .prologue
    .line 99
    int-to-short v1, p2

    invoke-static {p0, p1, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 100
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 11
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 60
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v7

    .line 61
    .local v7, "srcCellRow":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v6

    .line 64
    .local v6, "srcCellCol":I
    const/4 v0, 0x0

    .line 65
    .local v0, "basis":I
    :try_start_0
    array-length v10, p1

    packed-switch v10, :pswitch_data_0

    .line 71
    sget-object v10, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 80
    :goto_0
    return-object v10

    .line 67
    :pswitch_0
    const/4 v10, 0x2

    aget-object v10, p1, v10

    invoke-static {v10, v7, v6}, Lorg/apache/poi/ss/formula/atp/YearFrac;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v0

    .line 73
    :pswitch_1
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-static {v10, v7, v6}, Lorg/apache/poi/ss/formula/atp/YearFrac;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v8

    .line 74
    .local v8, "startDateVal":D
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-static {v10, v7, v6}, Lorg/apache/poi/ss/formula/atp/YearFrac;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 75
    .local v2, "endDateVal":D
    invoke-static {v8, v9, v2, v3, v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->calculate(DDI)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 80
    .local v4, "result":D
    new-instance v10, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v10, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0

    .line 76
    .end local v2    # "endDateVal":D
    .end local v4    # "result":D
    .end local v8    # "startDateVal":D
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v10

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
