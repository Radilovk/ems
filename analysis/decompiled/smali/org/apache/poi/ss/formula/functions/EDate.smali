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

    .prologue
    .line 36
    new-instance v0, Lorg/apache/poi/ss/formula/functions/EDate;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/EDate;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/EDate;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    .locals 6
    .param p1, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 57
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v4, :cond_1

    .line 58
    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .end local p1    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    .line 75
    :cond_0
    :goto_0
    return-wide v2

    .line 60
    .restart local p1    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-nez v4, :cond_0

    .line 63
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v4, :cond_4

    move-object v1, p1

    .line 64
    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 65
    .local v1, "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 67
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 70
    :cond_2
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v4

    invoke-interface {v1, v4}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 71
    .local v0, "innerValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v4, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v4, :cond_3

    .line 72
    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .end local v0    # "innerValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    goto :goto_0

    .line 74
    .restart local v0    # "innerValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    instance-of v4, v0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-nez v4, :cond_0

    .line 78
    .end local v0    # "innerValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_4
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    const/4 v7, 0x2

    .line 39
    array-length v6, p1

    if-eq v6, v7, :cond_0

    .line 40
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 52
    :goto_0
    return-object v6

    .line 43
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p1, v6

    invoke-direct {p0, v6}, Lorg/apache/poi/ss/formula/functions/EDate;->getValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4

    .line 44
    .local v4, "startDateAsNumber":D
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-direct {p0, v6}, Lorg/apache/poi/ss/formula/functions/EDate;->getValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v6

    double-to-int v2, v6

    .line 46
    .local v2, "offsetInMonthAsNumber":I
    invoke-static {v4, v5}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object v3

    .line 47
    .local v3, "startDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 48
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 49
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->add(II)V

    .line 50
    new-instance v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "offsetInMonthAsNumber":I
    .end local v3    # "startDate":Ljava/util/Date;
    .end local v4    # "startDateAsNumber":D
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    goto :goto_0
.end method
