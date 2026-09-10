.class public Lorg/apache/commons/lang3/time/FastDatePrinter;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/DatePrinter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field private static final MAX_DIGITS:I = 0xa

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1306
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 153
    iput-object p3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 155
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->init()V

    .line 156
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Appendable;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Appendable;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->appendDigits(Ljava/lang/Appendable;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Appendable;II)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Appendable;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->appendFullDigits(Ljava/lang/Appendable;II)V

    return-void
.end method

.method private static appendDigits(Ljava/lang/Appendable;I)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/Appendable;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 682
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 683
    return-void
.end method

.method private static appendFullDigits(Ljava/lang/Appendable;II)V
    .locals 9
    .param p0, "buffer"    # Ljava/lang/Appendable;
    .param p1, "value"    # I
    .param p2, "minFieldWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x64

    const/16 v7, 0xa

    const/16 v6, 0x30

    .line 696
    const/16 v5, 0x2710

    if-ge p1, v5, :cond_5

    .line 699
    const/4 v3, 0x4

    .line 700
    .local v3, "nDigits":I
    const/16 v5, 0x3e8

    if-ge p1, v5, :cond_0

    .line 701
    add-int/lit8 v3, v3, -0x1

    .line 702
    if-ge p1, v8, :cond_0

    .line 703
    add-int/lit8 v3, v3, -0x1

    .line 704
    if-ge p1, v7, :cond_0

    .line 705
    add-int/lit8 v3, v3, -0x1

    .line 710
    :cond_0
    sub-int v2, p2, v3

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    .line 711
    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 710
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 714
    :cond_1
    packed-switch v3, :pswitch_data_0

    .line 757
    .end local v2    # "i":I
    .end local v3    # "nDigits":I
    :cond_2
    :goto_1
    return-void

    .line 716
    .restart local v2    # "i":I
    .restart local v3    # "nDigits":I
    :pswitch_0
    div-int/lit16 v5, p1, 0x3e8

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-interface {p0, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 717
    rem-int/lit16 p1, p1, 0x3e8

    .line 719
    :pswitch_1
    if-lt p1, v8, :cond_3

    .line 720
    div-int/lit8 v5, p1, 0x64

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-interface {p0, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 721
    rem-int/lit8 p1, p1, 0x64

    .line 726
    :goto_2
    :pswitch_2
    if-lt p1, v7, :cond_4

    .line 727
    div-int/lit8 v5, p1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-interface {p0, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 728
    rem-int/lit8 p1, p1, 0xa

    .line 733
    :goto_3
    :pswitch_3
    add-int/lit8 v5, p1, 0x30

    int-to-char v5, v5

    invoke-interface {p0, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 723
    :cond_3
    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 730
    :cond_4
    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_3

    .line 739
    .end local v2    # "i":I
    .end local v3    # "nDigits":I
    :cond_5
    new-array v4, v7, [C

    .line 740
    .local v4, "work":[C
    const/4 v0, 0x0

    .local v0, "digit":I
    move v1, v0

    .line 741
    .end local v0    # "digit":I
    .local v1, "digit":I
    :goto_4
    if-eqz p1, :cond_6

    .line 742
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "digit":I
    .restart local v0    # "digit":I
    rem-int/lit8 v5, p1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v4, v1

    .line 743
    div-int/lit8 p1, p1, 0xa

    move v1, v0

    .end local v0    # "digit":I
    .restart local v1    # "digit":I
    goto :goto_4

    .line 747
    :cond_6
    :goto_5
    if-ge v1, p2, :cond_7

    .line 748
    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 749
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 753
    .end local v1    # "digit":I
    .restart local v0    # "digit":I
    :goto_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 754
    aget-char v5, v4, v0

    invoke-interface {p0, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_6

    .end local v0    # "digit":I
    .restart local v1    # "digit":I
    :cond_7
    move v0, v1

    .end local v1    # "digit":I
    .restart local v0    # "digit":I
    goto :goto_6

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 5
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .prologue
    .line 572
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 573
    .local v1, "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    invoke-interface {v1, p2, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    .end local v1    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :catch_0
    move-exception v0

    .line 576
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->rethrow(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 578
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    return-object p2
.end method

.method private applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1318
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 1319
    .local v0, "key":Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;
    sget-object v3, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1320
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1322
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1323
    sget-object v3, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1324
    .local v1, "prior":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1325
    move-object v2, v1

    .line 1328
    .end local v1    # "prior":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private init()V
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->parsePattern()Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, "rulesList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    iput-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "len":I
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    array-length v0, v3

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 167
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->estimateLength()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 170
    :cond_0
    iput v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    .line 171
    return-void
.end method

.method private newCalendar()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 671
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->init()V

    .line 672
    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 558
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 630
    instance-of v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;

    if-nez v2, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 633
    check-cast v0, Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 634
    .local v0, "other":Lorg/apache/commons/lang3/time/FastDatePrinter;
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 635
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 636
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public format(JLjava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 3
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(JTB;)TB;"
        }
    .end annotation

    .prologue
    .line 518
    .local p3, "buf":Ljava/lang/Appendable;, "TB;"
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 519
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 520
    invoke-direct {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    return-object v1
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .prologue
    .line 539
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "calendar":Ljava/util/Calendar;
    check-cast p1, Ljava/util/Calendar;

    .line 541
    .restart local p1    # "calendar":Ljava/util/Calendar;
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 543
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Date;",
            "TB;)TB;"
        }
    .end annotation

    .prologue
    .line 528
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 529
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 530
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    return-object v1
.end method

.method public format(J)Ljava/lang/String;
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 444
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 445
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 446
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 427
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 428
    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 429
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 430
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 431
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 432
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 434
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_3

    const-string v0, "<null>"

    .line 435
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 471
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 472
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 473
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "millis"    # J
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 489
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 490
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 491
    invoke-direct {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuffer;

    return-object v1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 408
    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    .line 409
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 410
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 411
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 412
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 414
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_3

    const-string v0, "<null>"

    .line 415
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 510
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 499
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 500
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 501
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuffer;

    return-object v1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 646
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method protected parsePattern()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v16, Ljava/text/DateFormatSymbols;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 183
    .local v16, "symbols":Ljava/text/DateFormatSymbols;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v12, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "ERAs":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, "months":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, "shortMonths":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v19

    .line 189
    .local v19, "weekdays":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "shortWeekdays":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "AmPmStrings":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v8

    .line 193
    .local v8, "length":I
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v7, v0, [I

    .line 195
    .local v7, "indexRef":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 196
    const/16 v20, 0x0

    aput v6, v7, v20

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lorg/apache/commons/lang3/time/FastDatePrinter;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v17

    .line 198
    .local v17, "token":Ljava/lang/String;
    const/16 v20, 0x0

    aget v6, v7, v20

    .line 200
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    .line 201
    .local v18, "tokenLen":I
    if-nez v18, :cond_1

    .line 313
    .end local v17    # "token":Ljava/lang/String;
    .end local v18    # "tokenLen":I
    :cond_0
    return-object v12

    .line 206
    .restart local v17    # "token":Ljava/lang/String;
    .restart local v18    # "tokenLen":I
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 208
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_0

    .line 307
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Illegal pattern component: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 210
    :sswitch_0
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v10, v0, v4}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 310
    .end local v18    # "tokenLen":I
    .local v10, "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :goto_1
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 214
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    .restart local v18    # "tokenLen":I
    :sswitch_1
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 215
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    move-object v11, v10

    .line 219
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    .end local v18    # "tokenLen":I
    .local v11, "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :goto_2
    const/16 v20, 0x59

    move/from16 v0, v20

    if-ne v5, v0, :cond_c

    .line 220
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;

    check-cast v11, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    .end local v11    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    invoke-direct {v10, v11}, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 217
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    .restart local v18    # "tokenLen":I
    :cond_2
    const/16 v20, 0x1

    const/16 v21, 0x4

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    const/16 v18, 0x4

    .end local v18    # "tokenLen":I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    move-object v11, v10

    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    .restart local v11    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_2

    .line 224
    .end local v11    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    .restart local v18    # "tokenLen":I
    :sswitch_2
    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 225
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-direct {v10, v0, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 226
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_4
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 227
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-direct {v10, v0, v13}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 228
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_5
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 229
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 231
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_6
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;

    .line 233
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 235
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_3
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 236
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 238
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_4
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;

    const/16 v20, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    .line 239
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 241
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_5
    const/16 v20, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 242
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 244
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_6
    const/16 v20, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 245
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 247
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_7
    const/16 v20, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 248
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 250
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_8
    const/16 v20, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 251
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 253
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_9
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v21, 0x7

    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    move-object/from16 v20, v14

    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 254
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_7
    move-object/from16 v20, v19

    .line 253
    goto :goto_3

    .line 256
    :sswitch_a
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;

    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    .line 257
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 259
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_b
    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 260
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 262
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_c
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 263
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 265
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_d
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 266
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 268
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_e
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 269
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 271
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_f
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v20, 0x9

    move/from16 v0, v20

    invoke-direct {v10, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 272
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 274
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_10
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;

    const/16 v20, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    .line 275
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 277
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_11
    const/16 v20, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 278
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 280
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_12
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->getRule(I)Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    move-result-object v10

    .line 281
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 283
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_13
    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_8

    .line 284
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v10, v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 286
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_8
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v10, v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .line 288
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 290
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_14
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 291
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 292
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_9
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 293
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 295
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_a
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    .line 297
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 299
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_15
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 300
    .local v15, "sub":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 301
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    invoke-direct {v10, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;-><init>(C)V

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 303
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_b
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;

    invoke-direct {v10, v15}, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;-><init>(Ljava/lang/String;)V

    .line 305
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    .end local v15    # "sub":Ljava/lang/String;
    .end local v18    # "tokenLen":I
    .restart local v11    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_c
    move-object v10, v11

    .end local v11    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_15
        0x44 -> :sswitch_b
        0x45 -> :sswitch_9
        0x46 -> :sswitch_c
        0x47 -> :sswitch_0
        0x48 -> :sswitch_5
        0x4b -> :sswitch_11
        0x4d -> :sswitch_2
        0x53 -> :sswitch_8
        0x57 -> :sswitch_e
        0x58 -> :sswitch_12
        0x59 -> :sswitch_1
        0x5a -> :sswitch_14
        0x61 -> :sswitch_f
        0x64 -> :sswitch_3
        0x68 -> :sswitch_4
        0x6b -> :sswitch_10
        0x6d -> :sswitch_6
        0x73 -> :sswitch_7
        0x75 -> :sswitch_a
        0x77 -> :sswitch_d
        0x79 -> :sswitch_1
        0x7a -> :sswitch_13
    .end sparse-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "indexRef"    # [I

    .prologue
    const/16 v11, 0x61

    const/16 v10, 0x5a

    const/16 v9, 0x41

    const/16 v8, 0x27

    const/4 v6, 0x0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v0, "buf":Ljava/lang/StringBuilder;
    aget v2, p2, v6

    .line 327
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 329
    .local v4, "length":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 330
    .local v1, "c":C
    if-lt v1, v9, :cond_0

    if-le v1, v10, :cond_1

    :cond_0
    if-lt v1, v11, :cond_2

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_2

    .line 333
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    :goto_0
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_8

    .line 336
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 337
    .local v5, "peek":C
    if-ne v5, v1, :cond_8

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    add-int/lit8 v2, v2, 0x1

    .line 343
    goto :goto_0

    .line 346
    .end local v5    # "peek":C
    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    const/4 v3, 0x0

    .line 350
    .local v3, "inLiteral":Z
    :goto_1
    if-ge v2, v4, :cond_8

    .line 351
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 353
    if-ne v1, v8, :cond_5

    .line 354
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_3

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_3

    .line 356
    add-int/lit8 v2, v2, 0x1

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    :cond_3
    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    goto :goto_2

    :cond_4
    move v3, v6

    goto :goto_3

    .line 361
    :cond_5
    if-nez v3, :cond_9

    if-lt v1, v9, :cond_6

    if-le v1, v10, :cond_7

    :cond_6
    if-lt v1, v11, :cond_9

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_9

    .line 363
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 371
    .end local v3    # "inLiteral":Z
    :cond_8
    aput v2, p2, v6

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 366
    .restart local v3    # "inLiteral":Z
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method protected selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;
    .locals 1
    .param p1, "field"    # I
    .param p2, "padding"    # I

    .prologue
    .line 383
    packed-switch p2, :pswitch_data_0

    .line 389
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;-><init>(II)V

    :goto_0
    return-object v0

    .line 385
    :pswitch_0
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;-><init>(I)V

    goto :goto_0

    .line 387
    :pswitch_1
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;-><init>(I)V

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDatePrinter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
