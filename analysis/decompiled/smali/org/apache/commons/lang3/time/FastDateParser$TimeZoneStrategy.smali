.class Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    }
.end annotation


# static fields
.field private static final GMT_OPTION:Ljava/lang/String; = "GMT[+-]\\d{1,2}:\\d{2}"

.field private static final ID:I = 0x0

.field private static final RFC_822_TIME_ZONE:Ljava/lang/String; = "[+-]\\d{4}"


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final tzNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 14
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 844
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 823
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    .line 845
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v11, "((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    new-instance v3, Ljava/util/TreeSet;

    invoke-static {}, Lorg/apache/commons/lang3/time/FastDateParser;->access$800()Ljava/util/Comparator;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 852
    .local v3, "sorted":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v11

    invoke-virtual {v11}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v10

    .line 853
    .local v10, "zones":[[Ljava/lang/String;
    array-length v12, v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_3

    aget-object v9, v10, v11

    .line 855
    .local v9, "zoneNames":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v6, v9, v13

    .line 856
    .local v6, "tzId":Ljava/lang/String;
    const-string v13, "GMT"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 853
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 859
    :cond_1
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 862
    .local v5, "tz":Ljava/util/TimeZone;
    new-instance v4, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    const/4 v13, 0x0

    invoke-direct {v4, v5, v13}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    .line 863
    .local v4, "standard":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    move-object v7, v4

    .line 864
    .local v7, "tzInfo":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v13, v9

    if-ge v0, v13, :cond_0

    .line 865
    packed-switch v0, :pswitch_data_0

    .line 876
    :goto_2
    :pswitch_0
    aget-object v13, v9, v0

    if-eqz v13, :cond_2

    .line 877
    aget-object v13, v9, v0

    invoke-virtual {v13, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 881
    iget-object v13, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-interface {v13, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 868
    :pswitch_1
    new-instance v7, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    .end local v7    # "tzInfo":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    const/4 v13, 0x1

    invoke-direct {v7, v5, v13}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    .line 869
    .restart local v7    # "tzInfo":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    goto :goto_2

    .line 871
    :pswitch_2
    move-object v7, v4

    .line 872
    goto :goto_2

    .line 888
    .end local v0    # "i":I
    .end local v4    # "standard":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    .end local v5    # "tz":Ljava/util/TimeZone;
    .end local v6    # "tzId":Ljava/lang/String;
    .end local v7    # "tzInfo":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    .end local v9    # "zoneNames":[Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 889
    .local v8, "zoneName":Ljava/lang/String;
    const/16 v12, 0x7c

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v12, v8}, Lorg/apache/commons/lang3/time/FastDateParser;->access$900(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 891
    .end local v8    # "zoneName":Ljava/lang/String;
    :cond_4
    const-string v11, ")"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->createPattern(Ljava/lang/StringBuilder;)V

    .line 893
    return-void

    .line 865
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 6
    .param p1, "parser"    # Lorg/apache/commons/lang3/time/FastDateParser;
    .param p2, "cal"    # Ljava/util/Calendar;
    .param p3, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 900
    invoke-static {p3}, Lorg/apache/commons/lang3/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 901
    .local v1, "tz":Ljava/util/TimeZone;
    if-eqz v1, :cond_0

    .line 902
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 913
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {p3, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "lowerCase":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    .line 906
    .local v2, "tzInfo":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    if-nez v2, :cond_1

    .line 908
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tzInfo":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    check-cast v2, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    .line 910
    .restart local v2    # "tzInfo":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    :cond_1
    const/16 v3, 0x10

    iget v4, v2, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->dstOffset:I

    invoke-virtual {p2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 911
    const/16 v3, 0xf

    iget-object v4, v2, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->zone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method
