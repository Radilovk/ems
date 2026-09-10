.class public Lorg/apache/poi/ss/usermodel/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
    }
.end annotation


# static fields
.field private static final BAD_DATE:I = -0x1

.field public static final DAY_MILLISECONDS:J = 0x5265c00L

.field public static final HOURS_PER_DAY:I = 0x18

.field public static final MINUTES_PER_HOUR:I = 0x3c

.field public static final SECONDS_PER_DAY:I = 0x15180

.field public static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final date_ptrn1:Ljava/util/regex/Pattern;

.field private static final date_ptrn2:Ljava/util/regex/Pattern;

.field private static final date_ptrn3a:Ljava/util/regex/Pattern;

.field private static final date_ptrn3b:Ljava/util/regex/Pattern;

.field private static final date_ptrn4:Ljava/util/regex/Pattern;

.field private static lastCachedResult:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static lastFormatIndex:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static lastFormatString:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-string v0, ":"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 56
    const-string v0, "^\\[\\$\\-.*?\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn1:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "^\\[[a-zA-Z]+\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn2:Ljava/util/regex/Pattern;

    .line 58
    const-string v0, "[yYmMdDhHsS]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3a:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "^[\\[\\]yYmMdDhHsS\\-T/,. :\"\\\\]+0*[ampAMP/]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3b:Ljava/util/regex/Pattern;

    .line 61
    const-string v0, "^\\[([hH]+|[mM]+|[sS]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn4:Ljava/util/regex/Pattern;

    .line 64
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 334
    new-instance v0, Lorg/apache/poi/ss/usermodel/DateUtil$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DateUtil$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    .line 339
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    .line 340
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method protected static absoluteDay(Ljava/util/Calendar;Z)I
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "use1904windowing"    # Z

    .line 555
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->daysInPriorYears(IZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static cache(Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "formatString"    # Ljava/lang/String;
    .param p1, "formatIndex"    # I
    .param p2, "cached"    # Z

    .line 349
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 350
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 351
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method public static convertTime(Ljava/lang/String;)D
    .locals 3
    .param p0, "timeStr"    # Ljava/lang/String;

    .line 612
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->convertTimeInternal(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/usermodel/DateUtil$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad time format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' expected \'HH:MM\' or \'HH:MM:SS\' - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static convertTimeInternal(Ljava/lang/String;)D
    .locals 13
    .param p0, "timeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 621
    .local v0, "len":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 624
    sget-object v1, Lorg/apache/poi/ss/usermodel/DateUtil;->TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    move-object v2, v5

    .line 629
    .local v2, "secStr":Ljava/lang/String;
    aget-object v2, v1, v3

    goto :goto_0

    .line 627
    .end local v2    # "secStr":Ljava/lang/String;
    :cond_0
    move-object v2, v5

    .line 631
    .restart local v2    # "secStr":Ljava/lang/String;
    new-instance v3, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected 2 or 3 fields but got ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 628
    .end local v2    # "secStr":Ljava/lang/String;
    :cond_1
    const-string v2, "00"

    .line 633
    .restart local v2    # "secStr":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 634
    .local v3, "hourStr":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    .line 635
    .local v4, "minStr":Ljava/lang/String;
    const/16 v5, 0x18

    const-string v6, "hour"

    invoke-static {v3, v6, v5}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 636
    .local v5, "hours":I
    const-string v6, "minute"

    const/16 v7, 0x3c

    invoke-static {v4, v6, v7}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 637
    .local v6, "minutes":I
    const-string v8, "second"

    invoke-static {v2, v8, v7}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 639
    .local v8, "seconds":I
    mul-int/lit8 v9, v5, 0x3c

    add-int/2addr v9, v6

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v9, v8

    int-to-double v9, v9

    .line 640
    .local v9, "totalSeconds":D
    const-wide v11, 0x40f5180000000000L    # 86400.0

    div-double v11, v9, v11

    return-wide v11

    .line 622
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "secStr":Ljava/lang/String;
    .end local v3    # "hourStr":Ljava/lang/String;
    .end local v4    # "minStr":Ljava/lang/String;
    .end local v5    # "hours":I
    .end local v6    # "minutes":I
    .end local v8    # "seconds":I
    .end local v9    # "totalSeconds":D
    :cond_2
    new-instance v1, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    const-string v2, "Bad length"

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static dayStart(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "cal"    # Ljava/util/Calendar;

    .line 586
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 588
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 589
    const/16 v2, 0xc

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 590
    const/16 v2, 0xd

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 591
    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 592
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 594
    return-object p0
.end method

.method private static daysInPriorYears(IZ)I
    .locals 4
    .param p0, "yr"    # I
    .param p1, "use1904windowing"    # Z

    .line 570
    const/16 v0, 0x76c

    if-nez p1, :cond_0

    if-lt p0, v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-lt p0, v0, :cond_1

    goto :goto_0

    .line 571
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'year\' must be 1900 or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_2
    :goto_0
    add-int/lit8 v1, p0, -0x1

    .line 575
    .local v1, "yr1":I
    div-int/lit8 v2, v1, 0x4

    div-int/lit8 v3, v1, 0x64

    sub-int/2addr v2, v3

    div-int/lit16 v3, v1, 0x190

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x1cc

    .line 580
    .local v2, "leapDays":I
    if-eqz p1, :cond_3

    const/16 v0, 0x770

    :cond_3
    sub-int v0, p0, v0

    mul-int/lit16 v0, v0, 0x16d

    add-int/2addr v0, v2

    return v0
.end method

.method public static getExcelDate(Ljava/util/Calendar;Z)D
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "use1904windowing"    # Z

    .line 102
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->internalGetExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getExcelDate(Ljava/util/Date;)D
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 75
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getExcelDate(Ljava/util/Date;Z)D
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "use1904windowing"    # Z

    .line 86
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 87
    .local v0, "calStart":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 88
    invoke-static {v0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->internalGetExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v1

    return-wide v1
.end method

.method public static getJavaCalendar(D)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # D

    .line 264
    const/4 v0, 0x0

    check-cast v0, Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaCalendar(DZ)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z

    .line 276
    const/4 v0, 0x0

    check-cast v0, Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaCalendar(DZLjava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z
    .param p3, "timeZone"    # Ljava/util/TimeZone;

    .line 302
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;
    .locals 5
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "roundSeconds"    # Z

    .line 315
    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    return-object v0

    .line 318
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 319
    .local v0, "wholeDays":I
    int-to-double v1, v0

    sub-double v1, p0, v1

    const-wide v3, 0x4194997000000000L    # 8.64E7

    mul-double v1, v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 321
    .local v1, "millisecondsInDay":I
    if-eqz p3, :cond_1

    .line 322
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, p3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .local v2, "calendar":Ljava/util/Calendar;
    goto :goto_0

    .line 324
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_1
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 326
    .restart local v2    # "calendar":Ljava/util/Calendar;
    :goto_0
    invoke-static {v2, v0, v1, p2, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->setCalendar(Ljava/util/Calendar;IIZZ)V

    .line 327
    return-object v2
.end method

.method public static getJavaCalendarUTC(DZ)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z

    .line 289
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaDate(D)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # D

    .line 169
    const/4 v0, 0x0

    check-cast v0, Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaDate(DLjava/util/TimeZone;)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # D
    .param p2, "tz"    # Ljava/util/TimeZone;

    .line 149
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaDate(DZ)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z

    .line 231
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaDate(DZLjava/util/TimeZone;)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z
    .param p3, "tz"    # Ljava/util/TimeZone;

    .line 188
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "roundSeconds"    # Z

    .line 208
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static internalGetExcelDate(Ljava/util/Calendar;Z)D
    .locals 10
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "use1904windowing"    # Z

    .line 105
    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x76c

    if-lt v1, v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x770

    if-ge v0, v1, :cond_2

    .line 108
    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 117
    :cond_2
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    .line 122
    .local v0, "fraction":D
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->dayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 124
    .local v2, "calStart":Ljava/util/Calendar;
    invoke-static {v2, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->absoluteDay(Ljava/util/Calendar;Z)I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v3, v0

    .line 126
    .local v3, "value":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_3

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    cmpl-double v9, v3, v7

    if-ltz v9, :cond_3

    .line 127
    add-double/2addr v3, v5

    goto :goto_0

    .line 128
    :cond_3
    if-eqz p1, :cond_4

    .line 129
    sub-double/2addr v3, v5

    .line 132
    :cond_4
    :goto_0
    return-wide v3
.end method

.method public static isADateFormat(ILjava/lang/String;)Z
    .locals 9
    .param p0, "formatIndex"    # I
    .param p1, "formatString"    # Ljava/lang/String;

    .line 370
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isInternalDateFormat(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 371
    invoke-static {p1, p0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    .line 372
    return v1

    .line 376
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 381
    :cond_1
    invoke-static {p1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCached(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 385
    :cond_2
    move-object v2, p1

    .line 406
    .local v2, "fs":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 407
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3b

    if-ge v4, v5, :cond_6

    .line 408
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 409
    .local v5, "c":C
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v1

    if-ge v4, v7, :cond_5

    .line 410
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 411
    .local v7, "nc":C
    const/16 v8, 0x5c

    if-ne v5, v8, :cond_4

    .line 412
    const/16 v6, 0x20

    if-eq v7, v6, :cond_3

    if-eq v7, v8, :cond_3

    packed-switch v7, :pswitch_data_0

    .line 419
    goto :goto_1

    :cond_3
    :pswitch_0
    goto :goto_2

    .line 421
    :cond_4
    if-ne v5, v6, :cond_5

    const/16 v6, 0x40

    if-ne v7, v6, :cond_5

    .line 422
    add-int/lit8 v4, v4, 0x1

    .line 424
    goto :goto_2

    .line 427
    .end local v7    # "nc":C
    :cond_5
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    .end local v5    # "c":C
    :goto_2
    add-int/2addr v4, v1

    goto :goto_0

    .line 429
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    sget-object v4, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn4:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 433
    invoke-static {p1, p0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    .line 434
    return v1

    .line 439
    :cond_7
    sget-object v4, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn1:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    sget-object v4, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn2:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v4, v5, :cond_8

    .line 447
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 452
    :cond_8
    sget-object v1, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_9

    .line 453
    return v0

    .line 460
    :cond_9
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 461
    .local v0, "result":Z
    invoke-static {p1, p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    .line 462
    return v0

    .line 377
    .end local v0    # "result":Z
    .end local v2    # "fs":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isCached(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "formatString"    # Ljava/lang/String;
    .param p1, "formatIndex"    # I

    .line 343
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    .local v0, "cachedFormatString":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 6
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 499
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 500
    :cond_0
    const/4 v1, 0x0

    .line 502
    .local v1, "bDate":Z
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    .line 503
    .local v2, "d":D
    invoke-static {v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 504
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v4

    .line 505
    .local v4, "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    if-nez v4, :cond_1

    return v0

    .line 506
    :cond_1
    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v0

    .line 507
    .local v0, "i":I
    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, "f":Ljava/lang/String;
    invoke-static {v0, v5}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v1

    .line 510
    .end local v0    # "i":I
    .end local v4    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v5    # "f":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public static isCellInternalDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 5
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 521
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 522
    :cond_0
    const/4 v0, 0x0

    .line 524
    .local v0, "bDate":Z
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    .line 525
    .local v1, "d":D
    invoke-static {v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 526
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    .line 527
    .local v3, "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v4

    .line 528
    .local v4, "i":I
    invoke-static {v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isInternalDateFormat(I)Z

    move-result v0

    .line 530
    .end local v3    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v4    # "i":I
    :cond_1
    return v0
.end method

.method public static isInternalDateFormat(I)Z
    .locals 1
    .param p0, "format"    # I

    .line 471
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 488
    const/4 v0, 0x0

    return v0

    .line 486
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidExcelDate(D)Z
    .locals 3
    .param p0, "value"    # D

    .line 543
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static parseInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "strVal"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "rangeMax"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
        }
    .end annotation

    .line 673
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private static parseInt(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p0, "strVal"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lowerLimit"    # I
    .param p3, "upperLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
        }
    .end annotation

    .line 679
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .local v0, "result":I
    nop

    .line 683
    if-lt v0, p2, :cond_0

    if-gt v0, p3, :cond_0

    .line 687
    return v0

    .line 684
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is outside the allowable range(0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 680
    .end local v0    # "result":I
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 681
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v1, "result":I
    new-instance v2, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad int format \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parseYYYYMMDDDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "dateStr"    # Ljava/lang/String;

    .line 649
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseYYYYMMDDDateInternal(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/usermodel/DateUtil$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad time format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " expected \'YYYY/MM/DD\' - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseYYYYMMDDDateInternal(Ljava/lang/String;)Ljava/util/Date;
    .locals 15
    .param p0, "timeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
        }
    .end annotation

    .line 657
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 661
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "yearStr":Ljava/lang/String;
    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "monthStr":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "dayStr":Ljava/lang/String;
    const/16 v4, -0x8000

    const/16 v5, 0x7fff

    const-string v6, "year"

    invoke-static {v0, v6, v4, v5}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 665
    .local v4, "year":I
    const/16 v5, 0xc

    const-string v6, "month"

    const/4 v7, 0x1

    invoke-static {v3, v6, v7, v5}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v5

    .line 666
    .local v5, "month":I
    const/16 v6, 0x1f

    const-string v8, "day"

    invoke-static {v1, v8, v7, v6}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    .line 668
    .local v6, "day":I
    new-instance v14, Ljava/util/GregorianCalendar;

    add-int/lit8 v9, v5, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v14

    move v8, v4

    move v10, v6

    invoke-direct/range {v7 .. v13}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 669
    .local v7, "cal":Ljava/util/Calendar;
    const/16 v8, 0xe

    invoke-virtual {v7, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 670
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 658
    .end local v0    # "yearStr":Ljava/lang/String;
    .end local v1    # "dayStr":Ljava/lang/String;
    .end local v3    # "monthStr":Ljava/lang/String;
    .end local v4    # "year":I
    .end local v5    # "month":I
    .end local v6    # "day":I
    .end local v7    # "cal":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    const-string v1, "Bad length"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCalendar(Ljava/util/Calendar;IIZZ)V
    .locals 9
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "wholeDays"    # I
    .param p2, "millisecondsInDay"    # I
    .param p3, "use1904windowing"    # Z
    .param p4, "roundSeconds"    # Z

    .line 237
    const/16 v0, 0x76c

    .line 238
    .local v0, "startYear":I
    const/4 v1, -0x1

    .line 239
    .local v1, "dayAdjust":I
    if-eqz p3, :cond_0

    .line 240
    const/16 v0, 0x770

    .line 241
    const/4 v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    const/16 v2, 0x3d

    if-ge p1, v2, :cond_1

    .line 246
    const/4 v1, 0x0

    .line 248
    :cond_1
    :goto_0
    const/4 v4, 0x0

    add-int v5, p1, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v3, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 249
    const/16 v2, 0xe

    invoke-virtual {p0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 250
    if-eqz p4, :cond_2

    .line 251
    const/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 252
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->clear(I)V

    .line 254
    :cond_2
    return-void
.end method
