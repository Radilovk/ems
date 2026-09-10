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

    .line 42
    new-instance v0, Lorg/apache/poi/ss/formula/functions/WeekdayFunc;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/WeekdayFunc;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/WeekdayFunc;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 11
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 83
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    array-length v0, p1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    goto :goto_3

    .line 88
    :cond_0
    const/4 v0, 0x0

    aget-object v3, p1, v0

    invoke-static {v3, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 89
    .local v3, "serialDateVE":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4

    .line 90
    .local v4, "serialDate":D
    invoke-static {v4, v5}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v6

    if-nez v6, :cond_1

    .line 91
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 93
    :cond_1
    invoke-static {v4, v5, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZ)Ljava/util/Calendar;

    move-result-object v0

    .line 94
    .local v0, "date":Ljava/util/Calendar;
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 97
    .local v7, "weekday":I
    const/4 v8, 0x1

    .line 98
    .local v8, "returnOption":I
    array-length v9, p1

    if-ne v9, v2, :cond_4

    .line 99
    aget-object v9, p1, v1

    invoke-static {v9, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v9

    .line 100
    .local v9, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v10, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eq v9, v10, :cond_3

    sget-object v10, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v9, v10, :cond_2

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {v9}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v10

    move v8, v10

    .line 104
    if-ne v8, v2, :cond_4

    .line 105
    const/16 v8, 0xb

    goto :goto_1

    .line 101
    :cond_3
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 111
    .end local v9    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_4
    :goto_1
    if-ne v8, v1, :cond_5

    .line 112
    int-to-double v1, v7

    .local v1, "result":D
    goto :goto_2

    .line 114
    .end local v1    # "result":D
    :cond_5
    const/4 v2, 0x3

    if-ne v8, v2, :cond_6

    .line 115
    add-int/lit8 v2, v7, 0x6

    sub-int/2addr v2, v1

    rem-int/2addr v2, v6

    int-to-double v1, v2

    .restart local v1    # "result":D
    goto :goto_2

    .line 116
    .end local v1    # "result":D
    :cond_6
    const/16 v2, 0xb

    if-lt v8, v2, :cond_7

    const/16 v2, 0x11

    if-gt v8, v2, :cond_7

    .line 117
    add-int/lit8 v2, v7, 0x6

    add-int/lit8 v9, v8, -0xa

    sub-int/2addr v2, v9

    rem-int/2addr v2, v6

    add-int/2addr v2, v1

    int-to-double v1, v2

    .line 122
    .restart local v1    # "result":D
    :goto_2
    new-instance v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v6, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v6

    .line 119
    .end local v1    # "result":D
    :cond_7
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 84
    .end local v0    # "date":Ljava/util/Calendar;
    .end local v3    # "serialDateVE":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "serialDate":D
    .end local v7    # "weekday":I
    .end local v8    # "returnOption":I
    :cond_8
    :goto_3
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
