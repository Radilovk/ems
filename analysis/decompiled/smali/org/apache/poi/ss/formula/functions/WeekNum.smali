.class public Lorg/apache/poi/ss/formula/functions/WeekNum;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "WeekNum.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lorg/apache/poi/ss/formula/functions/WeekNum;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/WeekNum;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/WeekNum;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "serialNumVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "returnTypeVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 49
    const-wide/16 v2, 0x0

    .line 51
    .local v2, "serialNum":D
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 55
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 56
    .local v4, "serialNumCalendar":Ljava/util/Calendar;
    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "returnType":I
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    .line 61
    .local v5, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 66
    const/4 v6, 0x1

    if-eq v1, v6, :cond_0

    const/4 v6, 0x2

    if-eq v1, v6, :cond_0

    .line 67
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 70
    .end local v1    # "returnType":I
    .end local v4    # "serialNumCalendar":Ljava/util/Calendar;
    .end local v5    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v6

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 62
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v1    # "returnType":I
    .restart local v4    # "serialNumCalendar":Ljava/util/Calendar;
    :catch_1
    move-exception v0

    .line 63
    .restart local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 70
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v5    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    new-instance v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0, v4, v1}, Lorg/apache/poi/ss/formula/functions/WeekNum;->getWeekNo(Ljava/util/Calendar;I)I

    move-result v7

    int-to-double v8, v7

    invoke-direct {v6, v8, v9}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 83
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/WeekNum;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0
.end method

.method public getWeekNo(Ljava/util/Calendar;I)I
    .locals 1
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "weekStartOn"    # I

    .prologue
    const/4 v0, 0x1

    .line 74
    if-ne p2, v0, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 79
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0

    .line 77
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    goto :goto_0
.end method
