.class public Lorg/apache/poi/ss/formula/functions/Days360;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Days360.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static evaluate(DDZ)D
    .locals 12
    .param p0, "d0"    # D
    .param p2, "d1"    # D
    .param p4, "method"    # Z

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 66
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/Days360;->getStartingDate(D)Ljava/util/Calendar;

    move-result-object v1

    .line 67
    .local v1, "startingDate":Ljava/util/Calendar;
    invoke-static {p2, p3, v1}, Lorg/apache/poi/ss/formula/functions/Days360;->getEndingDateAccordingToStartingDate(DLjava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 68
    .local v0, "endingDate":Ljava/util/Calendar;
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x1e

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-long v4, v6

    .line 69
    .local v4, "startingDay":J
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/lit16 v6, v6, 0x168

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-long v2, v6

    .line 71
    .local v2, "endingDay":J
    sub-long v6, v2, v4

    long-to-double v6, v6

    return-wide v6
.end method

.method private static getDate(D)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # D

    .prologue
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
    .locals 4
    .param p0, "date"    # D
    .param p2, "startingDate"    # Ljava/util/Calendar;

    .prologue
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

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 108
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 109
    .local v0, "newDate":Ljava/util/Calendar;
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 110
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 115
    :goto_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 116
    return-object v0

    .line 112
    :cond_0
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 113
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private static getStartingDate(D)Ljava/util/Calendar;
    .locals 4
    .param p0, "date"    # D

    .prologue
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
    .locals 5
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x5

    .line 100
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 101
    .local v0, "clone":Ljava/util/Calendar;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 102
    const/4 v3, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 103
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 104
    .local v1, "lastDayOfMonth":I
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 41
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    .line 42
    .local v0, "d0":D
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 43
    .local v2, "d1":D
    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lorg/apache/poi/ss/formula/functions/Days360;->evaluate(DDZ)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 47
    .local v6, "result":D
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v0    # "d0":D
    .end local v2    # "d1":D
    .end local v6    # "result":D
    :goto_0
    return-object v5

    .line 44
    :catch_0
    move-exception v4

    .line 45
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    goto :goto_0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 54
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    .line 55
    .local v0, "d0":D
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 56
    .local v2, "d1":D
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 57
    .local v8, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 58
    .local v5, "method":Ljava/lang/Boolean;
    if-nez v5, :cond_0

    const/4 v9, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3, v9}, Lorg/apache/poi/ss/formula/functions/Days360;->evaluate(DDZ)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 62
    .local v6, "result":D
    new-instance v9, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v9, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v0    # "d0":D
    .end local v2    # "d1":D
    .end local v5    # "method":Ljava/lang/Boolean;
    .end local v6    # "result":D
    .end local v8    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_1
    return-object v9

    .line 58
    .restart local v0    # "d0":D
    .restart local v2    # "d1":D
    .restart local v5    # "method":Ljava/lang/Boolean;
    .restart local v8    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    goto :goto_0

    .line 59
    .end local v0    # "d0":D
    .end local v2    # "d1":D
    .end local v5    # "method":Ljava/lang/Boolean;
    .end local v8    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v4

    .line 60
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v9

    goto :goto_1
.end method
