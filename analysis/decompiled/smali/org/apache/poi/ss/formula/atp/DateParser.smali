.class public Lorg/apache/poi/ss/formula/atp/DateParser;
.super Ljava/lang/Object;
.source "DateParser.java"


# instance fields
.field public instance:Lorg/apache/poi/ss/formula/atp/DateParser;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/atp/DateParser;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/DateParser;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/atp/DateParser;->instance:Lorg/apache/poi/ss/formula/atp/DateParser;

    .line 38
    return-void
.end method

.method private static makeDate(III)Ljava/util/Calendar;
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    if-lt p1, v3, :cond_0

    const/16 v1, 0xc

    if-le p1, v1, :cond_1

    .line 91
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 93
    :cond_1
    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v2, p1, -0x1

    move v1, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 94
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 95
    if-lt p2, v3, :cond_2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    if-le p2, v1, :cond_3

    .line 96
    :cond_2
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 98
    :cond_3
    invoke-virtual {v0, v7, p2}, Ljava/util/Calendar;->set(II)V

    .line 99
    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 11
    .param p0, "strVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xc

    .line 48
    const-string v7, "/"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "parts":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 50
    new-instance v7, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v7, v8}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v7

    .line 52
    :cond_0
    const/4 v7, 0x2

    aget-object v4, v5, v7

    .line 53
    .local v4, "part2":Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 54
    .local v6, "spacePos":I
    if-lez v6, :cond_1

    .line 56
    invoke-virtual {v4, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 62
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 63
    .local v1, "f0":I
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 64
    .local v2, "f1":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 68
    .local v3, "f2":I
    if-ltz v1, :cond_2

    if-ltz v2, :cond_2

    if-ltz v3, :cond_2

    if-le v1, v9, :cond_3

    if-le v2, v9, :cond_3

    if-le v3, v9, :cond_3

    .line 70
    :cond_2
    new-instance v7, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v7, v8}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v7

    .line 65
    .end local v1    # "f0":I
    .end local v2    # "f1":I
    .end local v3    # "f2":I
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v7, v8}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v7

    .line 73
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "f0":I
    .restart local v2    # "f1":I
    .restart local v3    # "f2":I
    :cond_3
    const/16 v7, 0x76c

    if-lt v1, v7, :cond_4

    const/16 v7, 0x270f

    if-ge v1, v7, :cond_4

    .line 75
    invoke-static {v1, v2, v3}, Lorg/apache/poi/ss/formula/atp/DateParser;->makeDate(III)Ljava/util/Calendar;

    move-result-object v7

    return-object v7

    .line 83
    :cond_4
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to determine date format for text \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
