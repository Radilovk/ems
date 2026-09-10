.class public Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;
.super Ljava/lang/Object;
.source "WorkdayCalculator.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

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

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "nonWeekendHolidays":I
    cmpg-double v1, p1, p3

    if-gez v1, :cond_0

    move-wide v3, p1

    goto :goto_0

    :cond_0
    move-wide v3, p3

    .line 115
    .local v3, "startDay":D
    :goto_0
    cmpl-double v1, p3, p1

    if-lez v1, :cond_1

    move-wide v5, p3

    goto :goto_1

    :cond_1
    move-wide v5, p1

    .line 116
    .local v5, "endDay":D
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p5

    if-ge v1, v2, :cond_3

    .line 117
    aget-wide v7, p5, v1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isInARange(DDD)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    aget-wide v7, p5, v1

    invoke-virtual {p0, v7, v8}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isWeekend(D)Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 116
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    .end local v1    # "i":I
    :cond_3
    cmpg-double v1, p1, p3

    if-gez v1, :cond_4

    move v1, v0

    goto :goto_3

    :cond_4
    neg-int v1, v0

    :goto_3
    return v1
.end method

.method public calculateWorkdays(DD[D)I
    .locals 7
    .param p1, "start"    # D
    .param p3, "end"    # D
    .param p5, "holidays"    # [D

    .line 50
    const/4 v5, 0x7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->pastDaysOfWeek(DDI)I

    move-result v0

    .line 51
    .local v0, "saturdaysPast":I
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->pastDaysOfWeek(DDI)I

    move-result v1

    .line 52
    .local v1, "sundaysPast":I
    invoke-virtual/range {p0 .. p5}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->calculateNonWeekendHolidays(DD[D)I

    move-result v2

    .line 53
    .local v2, "nonWeekendHolidays":I
    sub-double v3, p3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    double-to-int v3, v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    return v3
.end method

.method public calculateWorkdays(DI[D)Ljava/util/Date;
    .locals 8
    .param p1, "start"    # D
    .param p3, "workdays"    # I
    .param p4, "holidays"    # [D

    .line 65
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object v0

    .line 66
    .local v0, "startDate":Ljava/util/Date;
    const/4 v1, 0x1

    if-gez p3, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 67
    .local v2, "direction":I
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 68
    .local v3, "endDate":Ljava/util/Calendar;
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 69
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v4

    .line 70
    .local v4, "excelEndDate":D
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 71
    const/4 v6, 0x6

    invoke-virtual {v3, v6, v2}, Ljava/util/Calendar;->add(II)V

    .line 72
    int-to-double v6, v2

    add-double/2addr v4, v6

    .line 73
    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v7, v6, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v6, v1, :cond_1

    invoke-virtual {p0, v4, v5, p4}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isHoliday(D[D)Z

    move-result v6

    if-nez v6, :cond_1

    .line 76
    sub-int/2addr p3, v2

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method protected isHoliday(D[D)Z
    .locals 6
    .param p1, "aDate"    # D
    .param p3, "holidays"    # [D

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 143
    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 144
    const/4 v1, 0x1

    return v1

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected isInARange(DDD)Z
    .locals 1
    .param p1, "start"    # D
    .param p3, "end"    # D
    .param p5, "aDate"    # D

    .line 166
    cmpl-double v0, p5, p1

    if-ltz v0, :cond_0

    cmpg-double v0, p5, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isNonWorkday(D[D)I
    .locals 1
    .param p1, "aDate"    # D
    .param p3, "holidays"    # [D

    .line 156
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isWeekend(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isHoliday(D[D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isWeekend(D)Z
    .locals 4
    .param p1, "aDate"    # D

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 132
    .local v0, "date":Ljava/util/Calendar;
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 133
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method

.method protected pastDaysOfWeek(DDI)I
    .locals 6
    .param p1, "start"    # D
    .param p3, "end"    # D
    .param p5, "dayOfWeek"    # I

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "pastDaysOfWeek":I
    cmpg-double v1, p1, p3

    if-gez v1, :cond_0

    move-wide v1, p1

    goto :goto_0

    :cond_0
    move-wide v1, p3

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 93
    .local v1, "startDay":I
    cmpl-double v2, p3, p1

    if-lez v2, :cond_1

    move-wide v2, p3

    goto :goto_1

    :cond_1
    move-wide v2, p1

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 94
    .local v2, "endDay":I
    :goto_2
    if-gt v1, v2, :cond_3

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 96
    .local v3, "today":Ljava/util/Calendar;
    int-to-double v4, v1

    invoke-static {v4, v5}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 97
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, p5, :cond_2

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 94
    .end local v3    # "today":Ljava/util/Calendar;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    :cond_3
    cmpg-double v3, p1, p3

    if-gez v3, :cond_4

    move v3, v0

    goto :goto_3

    :cond_4
    neg-int v3, v0

    :goto_3
    return v3
.end method
