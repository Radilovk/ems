.class public final Lorg/apache/poi/ss/formula/functions/DateFunc;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
.source "DateFunc.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/poi/ss/formula/functions/DateFunc;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/DateFunc;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DateFunc;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    .line 41
    return-void
.end method

.method private static evaluate(III)D
    .locals 11
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "pDay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 62
    if-ltz p0, :cond_6

    .line 66
    :goto_0
    if-gez p1, :cond_0

    .line 67
    add-int/lit8 p0, p0, -0x1

    .line 68
    add-int/lit8 p1, p1, 0xc

    goto :goto_0

    .line 74
    :cond_0
    const/16 v7, 0x76c

    const/4 v8, 0x1

    if-ne p0, v7, :cond_1

    if-ne p1, v8, :cond_1

    const/16 v0, 0x1d

    if-ne p2, v0, :cond_1

    .line 75
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    return-wide v0

    .line 80
    :cond_1
    move v0, p2

    .line 81
    .local v0, "day":I
    if-ne p0, v7, :cond_4

    .line 82
    if-nez p1, :cond_2

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_3

    :cond_2
    if-ne p1, v8, :cond_4

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    .line 84
    :cond_3
    add-int/lit8 v0, v0, -0x1

    move v9, v0

    goto :goto_1

    .line 89
    :cond_4
    move v9, v0

    .end local v0    # "day":I
    .local v9, "day":I
    :goto_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    move-object v10, v0

    .line 90
    .local v10, "c":Ljava/util/Calendar;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 91
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 95
    if-gez p2, :cond_5

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v7, :cond_5

    if-le p1, v8, :cond_5

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, v0, :cond_5

    .line 98
    const/4 v0, 0x5

    invoke-virtual {v10, v0, v8}, Ljava/util/Calendar;->add(II)V

    .line 102
    :cond_5
    const/4 v0, 0x0

    .line 105
    .local v0, "use1904windowing":Z
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v1

    return-wide v1

    .line 63
    .end local v0    # "use1904windowing":Z
    .end local v9    # "day":I
    .end local v10    # "c":Ljava/util/Calendar;
    :cond_6
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static getYear(D)I
    .locals 2
    .param p0, "d"    # D

    .line 109
    double-to-int v0, p0

    .line 111
    .local v0, "year":I
    if-gez v0, :cond_0

    .line 112
    const/4 v1, -0x1

    return v1

    .line 115
    :cond_0
    const/16 v1, 0x76c

    if-ge v0, v1, :cond_1

    add-int/lit16 v1, v0, 0x76c

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 16
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    move/from16 v1, p1

    move/from16 v2, p2

    .line 46
    const-wide/16 v3, 0x0

    move-object/from16 v5, p3

    :try_start_0
    invoke-static {v5, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 47
    .local v6, "d0":D
    move-object/from16 v8, p4

    :try_start_1
    invoke-static {v8, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v9
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 48
    .local v9, "d1":D
    move-object/from16 v11, p5

    :try_start_2
    invoke-static {v11, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v12

    .line 49
    .local v12, "d2":D
    invoke-static {v6, v7}, Lorg/apache/poi/ss/formula/functions/DateFunc;->getYear(D)I

    move-result v0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v14, v9, v14

    double-to-int v14, v14

    double-to-int v15, v12

    invoke-static {v0, v14, v15}, Lorg/apache/poi/ss/formula/functions/DateFunc;->evaluate(III)D

    move-result-wide v3
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 50
    .local v3, "result":D
    :try_start_3
    invoke-static {v3, v4}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 53
    .end local v6    # "d0":D
    .end local v9    # "d1":D
    .end local v12    # "d2":D
    nop

    .line 54
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v3    # "result":D
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    move-object/from16 v8, p4

    :goto_0
    move-object/from16 v11, p5

    .line 52
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v3    # "result":D
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    return-object v6
.end method
