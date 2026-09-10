.class public Lcom/isaigu/gymapp/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static date2GMTString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .line 175
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd-MMM-yy HH:mm:ss zzz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 176
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 177
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "dateString":Ljava/lang/String;
    return-object v1
.end method

.method public static getCurrentDateyyyy_MM_dd()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentDateyyyy_MM_dd_HH_mm_ss()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentDayTimeInMillis000()J
    .locals 3

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 126
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 130
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getDateWithFormat_yyyy_MM_dd(III)Ljava/lang/String;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 64
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0, p0}, Ljava/util/Date;->setYear(I)V

    .line 65
    invoke-virtual {v0, p1}, Ljava/util/Date;->setMonth(I)V

    .line 66
    invoke-virtual {v0, p2}, Ljava/util/Date;->setDate(I)V

    .line 67
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDateWithFormat_yyyy_MM_dd(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateWithFormat_yyyy_MM_dd_HH_mm_ss(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateWithRealFormat_yyyy_MM_dd_HH_mm_ss(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getGMT8_yyyy_MM_dd_HH_mm_ss()Ljava/lang/String;
    .locals 3

    .line 186
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 188
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/util/Date;->setHours(I)V

    .line 189
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTimeInMillis(III)J
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 110
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 111
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 112
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 114
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 115
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 117
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getTimeInMillis000WithDate(Ljava/util/Date;)J
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 141
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 142
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 143
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 144
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 145
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static isDateEqual(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .line 155
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getDay()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Date;->getDay()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 156
    const/4 v0, 0x1

    return v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .line 45
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static utc2GMTString(J)Ljava/lang/String;
    .locals 4
    .param p0, "utcTime"    # J

    .line 168
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd-MMM-yy HH:mm:ss zzz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 169
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 170
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x2710

    div-long v2, p0, v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "dateString":Ljava/lang/String;
    return-object v1
.end method

.method public static validate(Ljava/lang/String;)Z
    .locals 11
    .param p0, "dateString"    # Ljava/lang/String;

    .line 18
    const-string v0, "\\d{4}+[-]\\d{1,2}+[-]\\d{1,2}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 19
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 20
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 23
    :cond_0
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "array":[Ljava/lang/String;
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 25
    .local v4, "year":I
    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 26
    .local v6, "month":I
    const/4 v7, 0x2

    aget-object v8, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 28
    .local v8, "day":I
    if-lt v6, v5, :cond_5

    const/16 v9, 0xc

    if-le v6, v9, :cond_1

    goto :goto_2

    .line 29
    :cond_1
    const/16 v9, 0xd

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    .line 30
    .local v9, "monthLengths":[I
    invoke-static {v4}, Lcom/isaigu/gymapp/utils/TimeUtils;->isLeapYear(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 31
    const/16 v10, 0x1d

    aput v10, v9, v7

    goto :goto_0

    .line 33
    :cond_2
    const/16 v10, 0x1c

    aput v10, v9, v7

    .line 35
    :goto_0
    aget v7, v9, v6

    .line 36
    .local v7, "monthLength":I
    if-lt v8, v5, :cond_4

    if-le v8, v7, :cond_3

    goto :goto_1

    .line 39
    :cond_3
    return v5

    .line 37
    :cond_4
    :goto_1
    return v3

    .line 28
    .end local v7    # "monthLength":I
    .end local v9    # "monthLengths":[I
    :cond_5
    :goto_2
    return v3

    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        -0x1
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method
