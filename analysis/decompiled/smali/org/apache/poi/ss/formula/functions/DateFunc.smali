.class public final Lorg/apache/poi/ss/formula/functions/DateFunc;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
.source "DateFunc.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/poi/ss/formula/functions/DateFunc;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/DateFunc;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DateFunc;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
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

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x76c

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 62
    if-gez p0, :cond_0

    .line 63
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 66
    :cond_0
    :goto_0
    if-gez p1, :cond_1

    .line 67
    add-int/lit8 p0, p0, -0x1

    .line 68
    add-int/lit8 p1, p1, 0xc

    goto :goto_0

    .line 74
    :cond_1
    if-ne p0, v9, :cond_2

    if-ne p1, v8, :cond_2

    const/16 v1, 0x1d

    if-ne p2, v1, :cond_2

    .line 75
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    .line 105
    :goto_1
    return-wide v4

    .line 80
    :cond_2
    move v3, p2

    .line 81
    .local v3, "day":I
    if-ne p0, v9, :cond_5

    .line 82
    if-nez p1, :cond_3

    const/16 v1, 0x3c

    if-ge v3, v1, :cond_4

    :cond_3
    if-ne p1, v8, :cond_5

    const/16 v1, 0x1e

    if-lt v3, v1, :cond_5

    .line 84
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 89
    :cond_5
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .local v0, "c":Ljava/util/Calendar;
    move v1, p0

    move v2, p1

    move v5, v4

    move v6, v4

    .line 90
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 91
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 95
    if-gez p2, :cond_6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v9, :cond_6

    if-le p1, v8, :cond_6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, v10, :cond_6

    .line 98
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->add(II)V

    .line 102
    :cond_6
    const/4 v7, 0x0

    .line 105
    .local v7, "use1904windowing":Z
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1, v7}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v4

    goto :goto_1
.end method

.method private static getYear(D)I
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 109
    double-to-int v0, p0

    .line 111
    .local v0, "year":I
    if-gez v0, :cond_1

    .line 112
    const/4 v0, -0x1

    .line 115
    .end local v0    # "year":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "year":I
    :cond_1
    const/16 v1, 0x76c

    if-ge v0, v1, :cond_0

    add-int/lit16 v0, v0, 0x76c

    goto :goto_0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 14
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 46
    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 47
    .local v2, "d0":D
    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v4

    .line 48
    .local v4, "d1":D
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6

    .line 49
    .local v6, "d2":D
    invoke-static {v2, v3}, Lorg/apache/poi/ss/formula/functions/DateFunc;->getYear(D)I

    move-result v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v4, v12

    double-to-int v12, v12

    double-to-int v13, v6

    invoke-static {v9, v12, v13}, Lorg/apache/poi/ss/formula/functions/DateFunc;->evaluate(III)D

    move-result-wide v10

    .line 50
    .local v10, "result":D
    invoke-static {v10, v11}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    new-instance v9, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v9, v10, v11}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v2    # "d0":D
    .end local v4    # "d1":D
    .end local v6    # "d2":D
    .end local v10    # "result":D
    :goto_0
    return-object v9

    .line 51
    :catch_0
    move-exception v8

    .line 52
    .local v8, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v9

    goto :goto_0
.end method
