.class final Lorg/apache/poi/ss/formula/atp/YearFracCalculator;
.super Ljava/lang/Object;
.source "YearFracCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    }
.end annotation


# static fields
.field private static final DAYS_PER_LEAP_YEAR:I = 0x16e

.field private static final DAYS_PER_NORMAL_YEAR:I = 0x16d

.field private static final LONG_FEB_LEN:I = 0x1d

.field private static final LONG_MONTH_LEN:I = 0x1f

.field private static final MS_PER_DAY:I = 0x5265c00

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final SHORT_FEB_LEN:I = 0x1c

.field private static final SHORT_MONTH_LEN:I = 0x1e

.field private static final UTC_TIME_ZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static averageYearLength(II)D
    .locals 6
    .param p0, "startYear"    # I
    .param p1, "endYear"    # I

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "dayCount":I
    move v1, p0

    .local v1, "i":I
    :goto_0
    if-gt v1, p1, :cond_1

    .line 275
    add-int/lit16 v0, v0, 0x16d

    .line 276
    invoke-static {v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    sub-int v4, p1, p0

    add-int/lit8 v4, v4, 0x1

    int-to-double v2, v4

    .line 281
    .local v2, "numberOfYears":D
    int-to-double v4, v0

    div-double/2addr v4, v2

    return-wide v4
.end method

.method public static basis0(II)D
    .locals 7
    .param p0, "startDateVal"    # I
    .param p1, "endDateVal"    # I

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x1f

    .line 95
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v3

    .line 96
    .local v3, "startDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    invoke-static {p1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v2

    .line 97
    .local v2, "endDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    iget v0, v3, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    .line 98
    .local v0, "date1day":I
    iget v1, v2, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    .line 101
    .local v1, "date2day":I
    if-ne v0, v5, :cond_1

    if-ne v1, v5, :cond_1

    .line 102
    const/16 v0, 0x1e

    .line 103
    const/16 v1, 0x1e

    .line 118
    :cond_0
    :goto_0
    invoke-static {v3, v2, v0, v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->calculateAdjusted(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;II)D

    move-result-wide v4

    return-wide v4

    .line 104
    :cond_1
    if-ne v0, v5, :cond_2

    .line 105
    const/16 v0, 0x1e

    goto :goto_0

    .line 106
    :cond_2
    const/16 v4, 0x1e

    if-ne v0, v4, :cond_3

    if-ne v1, v5, :cond_3

    .line 107
    const/16 v1, 0x1e

    goto :goto_0

    .line 110
    :cond_3
    iget v4, v3, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    if-ne v4, v6, :cond_0

    invoke-static {v3}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLastDayOfMonth(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    const/16 v0, 0x1e

    .line 113
    iget v4, v2, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    if-ne v4, v6, :cond_0

    invoke-static {v2}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLastDayOfMonth(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    const/16 v1, 0x1e

    goto :goto_0
.end method

.method public static basis1(II)D
    .locals 8
    .param p0, "startDateVal"    # I
    .param p1, "endDateVal"    # I

    .prologue
    .line 125
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v1

    .line 126
    .local v1, "startDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    invoke-static {p1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v0

    .line 128
    .local v0, "endDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    invoke-static {v1, v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isGreaterThanOneYear(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    iget v4, v1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    iget v5, v0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    invoke-static {v4, v5}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->averageYearLength(II)D

    move-result-wide v2

    .line 135
    .local v2, "yearLength":D
    :goto_0
    iget-wide v4, v1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->tsMilliseconds:J

    iget-wide v6, v0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->tsMilliseconds:J

    invoke-static {v4, v5, v6, v7}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->dateDiff(JJ)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v2

    return-wide v4

    .line 130
    .end local v2    # "yearLength":D
    :cond_0
    invoke-static {v1, v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->shouldCountFeb29(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    const-wide v2, 0x4076e00000000000L    # 366.0

    .restart local v2    # "yearLength":D
    goto :goto_0

    .line 133
    .end local v2    # "yearLength":D
    :cond_1
    const-wide v2, 0x4076d00000000000L    # 365.0

    .restart local v2    # "yearLength":D
    goto :goto_0
.end method

.method public static basis2(II)D
    .locals 4
    .param p0, "startDateVal"    # I
    .param p1, "endDateVal"    # I

    .prologue
    .line 143
    sub-int v0, p1, p0

    int-to-double v0, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static basis3(DD)D
    .locals 4
    .param p0, "startDateVal"    # D
    .param p2, "endDateVal"    # D

    .prologue
    .line 150
    sub-double v0, p2, p0

    const-wide v2, 0x4076d00000000000L    # 365.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static basis4(II)D
    .locals 6
    .param p0, "startDateVal"    # I
    .param p1, "endDateVal"    # I

    .prologue
    const/16 v4, 0x1f

    .line 157
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v3

    .line 158
    .local v3, "startDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    invoke-static {p1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v2

    .line 159
    .local v2, "endDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    iget v0, v3, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    .line 160
    .local v0, "date1day":I
    iget v1, v2, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    .line 164
    .local v1, "date2day":I
    if-ne v0, v4, :cond_0

    .line 165
    const/16 v0, 0x1e

    .line 167
    :cond_0
    if-ne v1, v4, :cond_1

    .line 168
    const/16 v1, 0x1e

    .line 171
    :cond_1
    invoke-static {v3, v2, v0, v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->calculateAdjusted(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;II)D

    move-result-wide v4

    return-wide v4
.end method

.method public static calculate(DDI)D
    .locals 8
    .param p0, "pStartDateVal"    # D
    .param p2, "pEndDateVal"    # D
    .param p4, "basis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 58
    if-ltz p4, :cond_0

    const/4 v3, 0x5

    if-lt p4, v3, :cond_1

    .line 60
    :cond_0
    new-instance v3, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v3

    .line 66
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 67
    .local v1, "startDateVal":I
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 68
    .local v0, "endDateVal":I
    if-ne v1, v0, :cond_2

    .line 70
    const-wide/16 v4, 0x0

    .line 84
    :goto_0
    return-wide v4

    .line 73
    :cond_2
    if-le v1, v0, :cond_3

    .line 74
    move v2, v1

    .line 75
    .local v2, "temp":I
    move v1, v0

    .line 76
    move v0, v2

    .line 79
    .end local v2    # "temp":I
    :cond_3
    packed-switch p4, :pswitch_data_0

    .line 86
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cannot happen"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :pswitch_0
    invoke-static {v1, v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->basis0(II)D

    move-result-wide v4

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-static {v1, v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->basis1(II)D

    move-result-wide v4

    goto :goto_0

    .line 82
    :pswitch_2
    invoke-static {v1, v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->basis2(II)D

    move-result-wide v4

    goto :goto_0

    .line 83
    :pswitch_3
    int-to-double v4, v1

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->basis3(DD)D

    move-result-wide v4

    goto :goto_0

    .line 84
    :pswitch_4
    invoke-static {v1, v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->basis4(II)D

    move-result-wide v4

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static calculateAdjusted(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;II)D
    .locals 5
    .param p0, "startDate"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    .param p1, "endDate"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    .param p2, "date1day"    # I
    .param p3, "date2day"    # I

    .prologue
    .line 177
    iget v2, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    iget v3, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x168

    iget v3, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    iget v4, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x1e

    add-int/2addr v2, v3

    sub-int v3, p3, p2

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    int-to-double v0, v2

    .line 181
    .local v0, "dayCount":D
    const-wide v2, 0x4076800000000000L    # 360.0

    div-double v2, v0, v2

    return-wide v2
.end method

.method private static createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    .locals 3
    .param p0, "dayCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 319
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 320
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    invoke-static {v0, p0, v2, v2, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->setCalendar(Ljava/util/Calendar;IIZZ)V

    .line 321
    new-instance v1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method private static dateDiff(JJ)I
    .locals 10
    .param p0, "startDateMS"    # J
    .param p2, "endDateMS"    # J

    .prologue
    .line 255
    sub-long v0, p2, p0

    .line 258
    .local v0, "msDiff":J
    const-wide/32 v4, 0x5265c00

    rem-long v4, v0, v4

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 259
    .local v2, "remainderHours":I
    packed-switch v2, :pswitch_data_0

    .line 266
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected date diff between "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    :pswitch_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    long-to-double v6, v0

    const-wide v8, 0x4194997000000000L    # 8.64E7

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    return v3

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static getLastDayOfMonth(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)I
    .locals 1
    .param p0, "date"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    .prologue
    .line 192
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    packed-switch v0, :pswitch_data_0

    .line 207
    :pswitch_0
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/16 v0, 0x1d

    .line 210
    :goto_0
    return v0

    .line 200
    :pswitch_1
    const/16 v0, 0x1f

    goto :goto_0

    .line 205
    :pswitch_2
    const/16 v0, 0x1e

    goto :goto_0

    .line 210
    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static isGreaterThanOneYear(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z
    .locals 4
    .param p0, "start"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    .param p1, "end"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    iget v2, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    iget v3, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    iget v2, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    if-ne v2, v3, :cond_0

    .line 308
    iget v2, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    iget v3, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 309
    goto :goto_0

    .line 311
    :cond_2
    iget v2, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    iget v3, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    if-lt v2, v3, :cond_0

    .line 315
    iget v2, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    iget v3, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static isLastDayOfMonth(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z
    .locals 3
    .param p0, "date"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    .prologue
    const/4 v0, 0x0

    .line 185
    iget v1, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->getLastDayOfMonth(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isLeapYear(I)Z
    .locals 3
    .param p0, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 286
    rem-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    rem-int/lit16 v2, p0, 0x190

    if-nez v2, :cond_2

    move v0, v1

    .line 291
    goto :goto_0

    .line 294
    :cond_2
    rem-int/lit8 v2, p0, 0x64

    if-eqz v2, :cond_0

    move v0, v1

    .line 297
    goto :goto_0
.end method

.method private static shouldCountFeb29(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z
    .locals 6
    .param p0, "start"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    .param p1, "end"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    iget v4, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    invoke-static {v4}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLeapYear(I)Z

    move-result v1

    .line 219
    .local v1, "startIsLeapYear":Z
    if-eqz v1, :cond_1

    iget v4, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    iget v5, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    if-ne v4, v5, :cond_1

    .line 247
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 224
    :cond_1
    iget v4, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    invoke-static {v4}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLeapYear(I)Z

    move-result v0

    .line 225
    .local v0, "endIsLeapYear":Z
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    move v2, v3

    .line 226
    goto :goto_0

    .line 228
    :cond_2
    if-eqz v1, :cond_3

    .line 229
    iget v4, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 234
    goto :goto_0

    .line 236
    :cond_3
    if-eqz v0, :cond_4

    .line 237
    iget v4, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    move v2, v3

    .line 239
    goto :goto_0

    .line 245
    :pswitch_2
    iget v4, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v3

    .line 247
    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 237
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
