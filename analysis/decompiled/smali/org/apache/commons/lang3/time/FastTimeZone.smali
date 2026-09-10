.class public Lorg/apache/commons/lang3/time/FastTimeZone;
.super Ljava/lang/Object;
.source "FastTimeZone.java"


# static fields
.field private static final GMT_PATTERN:Ljava/util/regex/Pattern;

.field private static final GREENWICH:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-string v0, "^(?:(?i)GMT)?([+-])?(\\d\\d?)?(:?(\\d\\d?))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GMT_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    new-instance v0, Lorg/apache/commons/lang3/time/GmtTimeZone;

    invoke-direct {v0, v1, v1, v1}, Lorg/apache/commons/lang3/time/GmtTimeZone;-><init>(ZII)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static getGmtTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v3, "Z"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "UTC"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    :cond_0
    sget-object v3, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    .line 63
    :goto_0
    return-object v3

    .line 54
    :cond_1
    sget-object v3, Lorg/apache/commons/lang3/time/FastTimeZone;->GMT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 55
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, "hours":I
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 58
    .local v2, "minutes":I
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 59
    sget-object v3, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    goto :goto_0

    .line 61
    :cond_2
    new-instance v3, Lorg/apache/commons/lang3/time/GmtTimeZone;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseSign(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, v4, v0, v2}, Lorg/apache/commons/lang3/time/GmtTimeZone;-><init>(ZII)V

    goto :goto_0

    .line 63
    .end local v0    # "hours":I
    .end local v2    # "minutes":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p0}, Lorg/apache/commons/lang3/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 77
    .local v0, "tz":Ljava/util/TimeZone;
    if-eqz v0, :cond_0

    .line 80
    .end local v0    # "tz":Ljava/util/TimeZone;
    :goto_0
    return-object v0

    .restart local v0    # "tz":Ljava/util/TimeZone;
    :cond_0
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseSign(Ljava/lang/String;)Z
    .locals 3
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 88
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
