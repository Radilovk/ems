.class public Lorg/apache/poi/ss/formula/atp/DateParser;
.super Ljava/lang/Object;
.source "DateParser.java"


# instance fields
.field public instance:Lorg/apache/poi/ss/formula/atp/DateParser;


# direct methods
.method private constructor <init>()V
    .locals 1

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
    .locals 9
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v1, 0xc

    if-gt p1, v1, :cond_1

    .line 93
    new-instance v1, Ljava/util/GregorianCalendar;

    add-int/lit8 v4, p1, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move v3, p0

    invoke-direct/range {v2 .. v8}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 94
    .local v1, "cal":Ljava/util/Calendar;
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 95
    if-lt p2, v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    if-gt p2, v2, :cond_0

    .line 98
    invoke-virtual {v1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 99
    return-object v1

    .line 96
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 91
    .end local v1    # "cal":Ljava/util/Calendar;
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 10
    .param p0, "strVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 48
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 52
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 53
    .local v1, "part2":Ljava/lang/String;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 54
    .local v2, "spacePos":I
    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 56
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 62
    :cond_0
    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 63
    .local v4, "f0":I
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .local v5, "f1":I
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    .local v3, "f2":I
    nop

    .line 68
    if-ltz v4, :cond_3

    if-ltz v5, :cond_3

    if-ltz v3, :cond_3

    const/16 v6, 0xc

    if-le v4, v6, :cond_1

    if-le v5, v6, :cond_1

    if-gt v3, v6, :cond_3

    .line 73
    :cond_1
    const/16 v6, 0x76c

    if-lt v4, v6, :cond_2

    const/16 v6, 0x270f

    if-ge v4, v6, :cond_2

    .line 75
    invoke-static {v4, v5, v3}, Lorg/apache/poi/ss/formula/atp/DateParser;->makeDate(III)Ljava/util/Calendar;

    move-result-object v6

    return-object v6

    .line 83
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to determine date format for text \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 70
    :cond_3
    new-instance v6, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v6, v7}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v6

    .line 65
    .end local v3    # "f2":I
    :catch_0
    move-exception v6

    .restart local v3    # "f2":I
    goto :goto_0

    .end local v3    # "f2":I
    .end local v5    # "f1":I
    :catch_1
    move-exception v6

    move v5, v3

    .local v5, "f2":I
    move v9, v5

    move v3, v9

    .local v3, "f1":I
    goto :goto_0

    .end local v3    # "f1":I
    .end local v4    # "f0":I
    .end local v5    # "f2":I
    :catch_2
    move-exception v6

    move v4, v3

    .local v4, "f2":I
    move v5, v3

    .local v5, "f0":I
    move v9, v5

    move v4, v9

    .line 66
    .local v3, "f2":I
    .local v4, "f0":I
    .local v5, "f1":I
    .local v6, "e":Ljava/lang/NumberFormatException;
    :goto_0
    new-instance v7, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v7, v8}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v7

    .line 50
    .end local v1    # "part2":Ljava/lang/String;
    .end local v2    # "spacePos":I
    .end local v3    # "f2":I
    .end local v4    # "f0":I
    .end local v5    # "f1":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1
.end method
