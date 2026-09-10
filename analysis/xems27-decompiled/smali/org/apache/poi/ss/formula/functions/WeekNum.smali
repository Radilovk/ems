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

    .line 46
    new-instance v0, Lorg/apache/poi/ss/formula/functions/WeekNum;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/WeekNum;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/WeekNum;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "serialNumVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "returnTypeVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 49
    const-wide/16 v0, 0x0

    .line 51
    .local v0, "serialNum":D
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v0, v2

    .line 54
    nop

    .line 55
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 56
    .local v2, "serialNumCalendar":Ljava/util/Calendar;
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 58
    const/4 v3, 0x0

    .line 60
    .local v3, "returnType":I
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 61
    .local v4, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v5
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v5

    .line 64
    .end local v4    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 66
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 67
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v4

    .line 70
    :cond_0
    new-instance v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/ss/formula/functions/WeekNum;->getWeekNo(Ljava/util/Calendar;I)I

    move-result v5

    int-to-double v5, v5

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v4

    .line 62
    :catch_0
    move-exception v4

    .line 63
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v5

    .line 52
    .end local v2    # "serialNumCalendar":Ljava/util/Calendar;
    .end local v3    # "returnType":I
    .end local v4    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :catch_1
    move-exception v2

    .line 53
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v3
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

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

    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method

.method public getWeekNo(Ljava/util/Calendar;I)I
    .locals 1
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "weekStartOn"    # I

    .line 74
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    goto :goto_0

    .line 77
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 79
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method
