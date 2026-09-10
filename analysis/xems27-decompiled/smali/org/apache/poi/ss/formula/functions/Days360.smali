.class public Lorg/apache/poi/ss/formula/functions/Days360;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Days360.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static evaluate(DDZ)D
    .locals 9
    .param p0, "d0"    # D
    .param p2, "d1"    # D
    .param p4, "method"    # Z

    .line 66
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/Days360;->getStartingDate(D)Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, "startingDate":Ljava/util/Calendar;
    invoke-static {p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/Days360;->getEndingDateAccordingToStartingDate(DLjava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 68
    .local v1, "endingDate":Ljava/util/Calendar;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x1e

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v3, v5

    int-to-long v5, v3

    .line 69
    .local v5, "startingDay":J
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v7, v3

    mul-int/lit16 v7, v7, 0x168

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x1e

    add-int/2addr v7, v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v7, v2

    int-to-long v2, v7

    .line 71
    .local v2, "endingDay":J
    sub-long v7, v2, v5

    long-to-double v7, v7

    return-wide v7
.end method

.method private static getDate(D)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # D

    .line 75
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 76
    .local v0, "processedDate":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    return-object v0
.end method

.method private static getEndingDateAccordingToStartingDate(DLjava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # D
    .param p2, "startingDate"    # Ljava/util/Calendar;

    .line 89
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/Days360;->getDate(D)Ljava/util/Calendar;

    move-result-object v0

    .line 90
    .local v0, "endingDate":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 91
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Days360;->isLastDayOfMonth(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 93
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Days360;->getFirstDayOfNextMonth(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 96
    :cond_0
    return-object v0
.end method

.method private static getFirstDayOfNextMonth(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .param p0, "date"    # Ljava/util/Calendar;

    .line 108
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 109
    .local v0, "newDate":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xb

    if-ge v2, v4, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 113
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 115
    :goto_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 116
    return-object v0
.end method

.method private static getStartingDate(D)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # D

    .line 81
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/Days360;->getDate(D)Ljava/util/Calendar;

    move-result-object v0

    .line 82
    .local v0, "startingDate":Ljava/util/Calendar;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Days360;->isLastDayOfMonth(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x5

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 85
    :cond_0
    return-object v0
.end method

.method private static isLastDayOfMonth(Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "date"    # Ljava/util/Calendar;

    .line 100
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 101
    .local v0, "clone":Ljava/util/Calendar;
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 102
    const/4 v1, 0x5

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 104
    .local v3, "lastDayOfMonth":I
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 41
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 42
    .local v2, "d0":D
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v4

    .line 43
    .local v4, "d1":D
    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lorg/apache/poi/ss/formula/functions/Days360;->evaluate(DDZ)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v2    # "d0":D
    .end local v4    # "d1":D
    .local v0, "result":D
    nop

    .line 47
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    .line 44
    .end local v0    # "result":D
    :catch_0
    move-exception v2

    .line 45
    .restart local v0    # "result":D
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 54
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 55
    .local v2, "d0":D
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v4

    .line 56
    .local v4, "d1":D
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    .line 57
    .local v6, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 58
    .local v8, "method":Ljava/lang/Boolean;
    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_0
    invoke-static {v2, v3, v4, v5, v7}, Lorg/apache/poi/ss/formula/functions/Days360;->evaluate(DDZ)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "d0":D
    .end local v4    # "d1":D
    .end local v6    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v8    # "method":Ljava/lang/Boolean;
    .local v0, "result":D
    nop

    .line 62
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    .line 59
    .end local v0    # "result":D
    :catch_0
    move-exception v2

    .line 60
    .restart local v0    # "result":D
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
