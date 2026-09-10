.class public final Lorg/apache/poi/ss/formula/functions/WeekdayFunc;
.super Ljava/lang/Object;
.source "WeekdayFunc.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lorg/apache/poi/ss/formula/functions/WeekdayFunc;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/WeekdayFunc;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/WeekdayFunc;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 12
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    .line 83
    :try_start_0
    array-length v10, p1

    const/4 v11, 0x1

    if-lt v10, v11, :cond_0

    array-length v10, p1

    const/4 v11, 0x2

    if-le v10, v11, :cond_1

    .line 84
    :cond_0
    sget-object v10, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 124
    :goto_0
    return-object v10

    .line 88
    :cond_1
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-static {v10, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    .line 89
    .local v5, "serialDateVE":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v6

    .line 90
    .local v6, "serialDate":D
    invoke-static {v6, v7}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v10

    if-nez v10, :cond_2

    .line 91
    sget-object v10, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 93
    :cond_2
    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZ)Ljava/util/Calendar;

    move-result-object v0

    .line 94
    .local v0, "date":Ljava/util/Calendar;
    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 97
    .local v9, "weekday":I
    const/4 v4, 0x1

    .line 98
    .local v4, "returnOption":I
    array-length v10, p1

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 99
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-static {v10, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 100
    .local v8, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v10, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eq v8, v10, :cond_3

    sget-object v10, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v8, v10, :cond_4

    .line 101
    :cond_3
    sget-object v10, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 103
    :cond_4
    invoke-static {v8}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v4

    .line 104
    const/4 v10, 0x2

    if-ne v4, v10, :cond_5

    .line 105
    const/16 v4, 0xb

    .line 111
    .end local v8    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_5
    const/4 v10, 0x1

    if-ne v4, v10, :cond_6

    .line 112
    int-to-double v2, v9

    .line 122
    .local v2, "result":D
    :goto_1
    new-instance v10, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v10, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v0    # "date":Ljava/util/Calendar;
    .end local v2    # "result":D
    .end local v4    # "returnOption":I
    .end local v5    # "serialDateVE":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v6    # "serialDate":D
    .end local v9    # "weekday":I
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v10

    goto :goto_0

    .line 114
    .end local v1    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v0    # "date":Ljava/util/Calendar;
    .restart local v4    # "returnOption":I
    .restart local v5    # "serialDateVE":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v6    # "serialDate":D
    .restart local v9    # "weekday":I
    :cond_6
    const/4 v10, 0x3

    if-ne v4, v10, :cond_7

    .line 115
    add-int/lit8 v10, v9, 0x6

    add-int/lit8 v10, v10, -0x1

    :try_start_1
    rem-int/lit8 v10, v10, 0x7

    int-to-double v2, v10

    .restart local v2    # "result":D
    goto :goto_1

    .line 116
    .end local v2    # "result":D
    :cond_7
    const/16 v10, 0xb

    if-lt v4, v10, :cond_8

    const/16 v10, 0x11

    if-gt v4, v10, :cond_8

    .line 117
    add-int/lit8 v10, v9, 0x6

    add-int/lit8 v11, v4, -0xa

    sub-int/2addr v10, v11

    rem-int/lit8 v10, v10, 0x7

    add-int/lit8 v10, v10, 0x1

    int-to-double v2, v10

    .restart local v2    # "result":D
    goto :goto_1

    .line 119
    .end local v2    # "result":D
    :cond_8
    sget-object v10, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
