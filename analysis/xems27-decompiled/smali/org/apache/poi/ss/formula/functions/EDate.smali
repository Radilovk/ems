.class public Lorg/apache/poi/ss/formula/functions/EDate;
.super Ljava/lang/Object;
.source "EDate.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/poi/ss/formula/functions/EDate;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/EDate;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/EDate;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    .locals 5
    .param p1, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 57
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    return-wide v0

    .line 60
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 61
    return-wide v1

    .line 63
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_4

    .line 64
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 65
    .local v0, "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    .line 70
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v3

    invoke-interface {v0, v3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 71
    .local v3, "innerValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v4, :cond_2

    .line 72
    move-object v1, v3

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    return-wide v1

    .line 74
    :cond_2
    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v4, :cond_4

    .line 75
    return-wide v1

    .line 67
    .end local v3    # "innerValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 78
    .end local v0    # "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_4
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 39
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 40
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/functions/EDate;->getValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v2

    .line 44
    .local v2, "startDateAsNumber":D
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/functions/EDate;->getValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4

    double-to-int v0, v4

    .line 46
    .local v0, "offsetInMonthAsNumber":I
    invoke-static {v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object v4

    .line 47
    .local v4, "startDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 48
    .local v5, "calendar":Ljava/util/Calendar;
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 49
    invoke-virtual {v5, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 50
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 51
    .end local v0    # "offsetInMonthAsNumber":I
    .end local v2    # "startDateAsNumber":D
    .end local v4    # "startDate":Ljava/util/Date;
    .end local v5    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
