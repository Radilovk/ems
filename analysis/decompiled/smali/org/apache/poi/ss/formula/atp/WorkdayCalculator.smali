.class public Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;
.super Ljava/lang/Object;
.source "WorkdayCalculator.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method protected calculateNonWeekendHolidays(DD[D)I
    .locals 9
    .param p1, "start"    # D
    .param p3, "end"    # D
    .param p5, "holidays"    # [D

    .prologue
    .line 113
    const/4 v8, 0x0

    .line 114
    .local v8, "nonWeekendHolidays":I
    cmpg-double v1, p1, p3

    if-gez v1, :cond_1

    move-wide v2, p1

    .line 115
    .local v2, "startDay":D
    :goto_0
    cmpl-double v1, p3, p1

    if-lez v1, :cond_2

    move-wide v4, p3

    .line 116
    .local v4, "endDay":D
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p5

    if-ge v0, v1, :cond_3

    .line 117
    aget-wide v6, p5, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isInARange(DDD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    aget-wide v6, p5, v0

    invoke-virtual {p0, v6, v7}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isWeekend(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    add-int/lit8 v8, v8, 0x1

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v2    # "startDay":D
    .end local v4    # "endDay":D
    :cond_1
    move-wide v2, p3

    .line 114
    goto :goto_0

    .restart local v2    # "startDay":D
    :cond_2
    move-wide v4, p1

    .line 115
    goto :goto_1

    .line 123
    .restart local v0    # "i":I
    .restart local v4    # "endDay":D
    :cond_3
    cmpg-double v1, p1, p3

    if-gez v1, :cond_4

    .end local v8    # "nonWeekendHolidays":I
    :goto_3
    return v8

    .restart local v8    # "nonWeekendHolidays":I
    :cond_4
    neg-int v8, v8

    goto :goto_3
.end method

.method public calculateWorkdays(DD[D)I
    .locals 9
    .param p1, "start"    # D
    .param p3, "end"    # D
    .param p5, "holidays"    # [D

    .prologue
    .line 50
    const/4 v6, 0x7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->pastDaysOfWeek(DDI)I

    move-result v7

    .line 51
    .local v7, "saturdaysPast":I
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->pastDaysOfWeek(DDI)I

    move-result v8

    .line 52
    .local v8, "sundaysPast":I
    invoke-virtual/range {p0 .. p5}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->calculateNonWeekendHolidays(DD[D)I

    move-result v0

    .line 53
    .local v0, "nonWeekendHolidays":I
    sub-double v2, p3, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v1, v2

    sub-int/2addr v1, v7

    sub-int/2addr v1, v8

    sub-int/2addr v1, v0

    return v1
.end method

.method public calculateWorkdays(DI[D)Ljava/util/Date;
    .locals 9
    .param p1, "start"    # D
    .param p3, "workdays"    # I
    .param p4, "holidays"    # [D

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x7

    .line 65
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object v4

    .line 66
    .local v4, "startDate":Ljava/util/Date;
    if-gez p3, :cond_1

    const/4 v0, -0x1

    .line 67
    .local v0, "direction":I
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 68
    .local v1, "endDate":Ljava/util/Calendar;
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 69
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v2

    .line 70
    .local v2, "excelEndDate":D
    :cond_0
    :goto_1
    if-eqz p3, :cond_2

    .line 71
    const/4 v6, 0x6

    invoke-virtual {v1, v6, v0}, Ljava/util/Calendar;->add(II)V

    .line 72
    int-to-double v6, v0

    add-double/2addr v2, v6

    .line 73
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v6, v8, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v6, v5, :cond_0

    invoke-virtual {p0, v2, v3, p4}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isHoliday(D[D)Z

    move-result v6

    if-nez v6, :cond_0

    .line 76
    sub-int/2addr p3, v0

    goto :goto_1

    .end local v0    # "direction":I
    .end local v1    # "endDate":Ljava/util/Calendar;
    .end local v2    # "excelEndDate":D
    :cond_1
    move v0, v5

    .line 66
    goto :goto_0

    .line 79
    .restart local v0    # "direction":I
    .restart local v1    # "endDate":Ljava/util/Calendar;
    .restart local v2    # "excelEndDate":D
    :cond_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    return-object v5
.end method

.method protected isHoliday(D[D)Z
    .locals 7
    .param p1, "aDate"    # D
    .param p3, "holidays"    # [D

    .prologue
    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 143
    aget-wide v2, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 144
    const/4 v1, 0x1

    .line 147
    :goto_1
    return v1

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected isInARange(DDD)Z
    .locals 1
    .param p1, "start"    # D
    .param p3, "end"    # D
    .param p5, "aDate"    # D

    .prologue
    .line 166
    cmpl-double v0, p5, p1

    if-ltz v0, :cond_0

    cmpg-double v0, p5, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNonWorkday(D[D)I
    .locals 1
    .param p1, "aDate"    # D
    .param p3, "holidays"    # [D

    .prologue
    .line 156
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isWeekend(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isHoliday(D[D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWeekend(D)Z
    .locals 5
    .param p1, "aDate"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x7

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 132
    .local v0, "date":Ljava/util/Calendar;
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 133
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected pastDaysOfWeek(DDI)I
    .locals 7
    .param p1, "start"    # D
    .param p3, "end"    # D
    .param p5, "dayOfWeek"    # I

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "pastDaysOfWeek":I
    cmpg-double v4, p1, p3

    if-gez v4, :cond_1

    move-wide v4, p1

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 93
    .local v2, "startDay":I
    cmpl-double v4, p3, p1

    if-lez v4, :cond_2

    move-wide v4, p3

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 94
    .local v0, "endDay":I
    :goto_2
    if-gt v2, v0, :cond_3

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 96
    .local v3, "today":Ljava/util/Calendar;
    int-to-double v4, v2

    invoke-static {v4, v5}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 97
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, p5, :cond_0

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 94
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "endDay":I
    .end local v2    # "startDay":I
    .end local v3    # "today":Ljava/util/Calendar;
    :cond_1
    move-wide v4, p3

    .line 92
    goto :goto_0

    .restart local v2    # "startDay":I
    :cond_2
    move-wide v4, p1

    .line 93
    goto :goto_1

    .line 101
    .restart local v0    # "endDay":I
    :cond_3
    cmpg-double v4, p1, p3

    if-gez v4, :cond_4

    .end local v1    # "pastDaysOfWeek":I
    :goto_3
    return v1

    .restart local v1    # "pastDaysOfWeek":I
    :cond_4
    neg-int v1, v1

    goto :goto_3
.end method
