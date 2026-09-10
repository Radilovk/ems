.class public Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "Jdk8DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static final ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

.field private static final defaultFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final defaultPatttern:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d8:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_iso8601:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_iso8601_pattern:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    .line 30
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .line 31
    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    .line 32
    const-string v1, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    .line 33
    const-string v1, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .line 34
    const-string v1, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    .line 35
    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    .line 36
    const-string v1, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 37
    const-string v1, "dd.MM.yyyy HH:mm:ss"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    .line 38
    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    .line 40
    const-string v1, "yyyyMMdd"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .line 41
    const-string v1, "yyyy/MM/dd"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    .line 42
    const-string v1, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    .line 43
    const-string v1, "yyyy\ub144M\uc6d4d\uc77c"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    .line 44
    const-string v1, "MM/dd/yyyy"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    .line 45
    const-string v1, "dd/MM/yyyy"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    .line 46
    const-string v1, "dd.MM.yyyy"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    .line 47
    const-string v1, "dd-MM-yyyy"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    .line 49
    nop

    .line 50
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 53
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .param p2, "object"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "format"    # Ljava/lang/String;

    .line 410
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    if-ne p3, v0, :cond_0

    .line 411
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    .local v0, "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_0

    .line 413
    .end local v0    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_0
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 416
    .restart local v0    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 418
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "feature"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 57
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 58
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 59
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 60
    return-object v3

    .line 63
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_13

    .line 64
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "text":Ljava/lang/String;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 67
    const/4 v4, 0x0

    .line 68
    .local v4, "formatter":Ljava/time/format/DateTimeFormatter;
    if-eqz p4, :cond_2

    .line 69
    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {p4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    .line 76
    :cond_2
    :goto_0
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 77
    return-object v3

    .line 80
    :cond_3
    const-class v5, Ljava/time/LocalDateTime;

    if-ne p2, v5, :cond_6

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0xa

    if-eq v3, v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_4

    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {p0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v2

    .local v2, "localDateTime":Ljava/time/LocalDateTime;
    goto :goto_2

    .line 83
    .end local v2    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, p4, v4}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v2

    .line 84
    .local v2, "localDate":Ljava/time/LocalDate;
    sget-object v3, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 85
    .local v2, "localDateTime":Ljava/time/LocalDateTime;
    nop

    .line 88
    :goto_2
    return-object v2

    .line 89
    .end local v2    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_6
    const-class v2, Ljava/time/LocalDate;

    const/16 v5, 0x17

    if-ne p2, v2, :cond_8

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 92
    invoke-static {v1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 93
    .restart local v2    # "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getYear()I

    move-result v3

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v5

    .line 94
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v6

    .line 93
    invoke-static {v3, v5, v6}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    .line 95
    .local v2, "localDate":Ljava/time/LocalDate;
    goto :goto_3

    .line 96
    .end local v2    # "localDate":Ljava/time/LocalDate;
    :cond_7
    invoke-virtual {p0, v1, p4, v4}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v2

    .line 99
    .restart local v2    # "localDate":Ljava/time/LocalDate;
    :goto_3
    return-object v2

    .line 100
    .end local v2    # "localDate":Ljava/time/LocalDate;
    :cond_8
    const-class v2, Ljava/time/LocalTime;

    if-ne p2, v2, :cond_a

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_9

    .line 103
    invoke-static {v1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 104
    .local v2, "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v5

    .line 105
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v6

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getNano()I

    move-result v7

    .line 104
    invoke-static {v3, v5, v6, v7}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v2

    .line 106
    .local v2, "localDate":Ljava/time/LocalTime;
    goto :goto_4

    .line 107
    .end local v2    # "localDate":Ljava/time/LocalTime;
    :cond_9
    invoke-static {v1}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v2

    .line 109
    .restart local v2    # "localDate":Ljava/time/LocalTime;
    :goto_4
    return-object v2

    .line 110
    .end local v2    # "localDate":Ljava/time/LocalTime;
    :cond_a
    const-class v2, Ljava/time/ZonedDateTime;

    if-ne p2, v2, :cond_c

    .line 111
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    if-ne v4, v2, :cond_b

    .line 112
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 115
    :cond_b
    invoke-virtual {p0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 117
    .local v2, "zonedDateTime":Ljava/time/ZonedDateTime;
    return-object v2

    .line 118
    .end local v2    # "zonedDateTime":Ljava/time/ZonedDateTime;
    :cond_c
    const-class v2, Ljava/time/OffsetDateTime;

    if-ne p2, v2, :cond_d

    .line 119
    invoke-static {v1}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v2

    .line 121
    .local v2, "offsetDateTime":Ljava/time/OffsetDateTime;
    return-object v2

    .line 122
    .end local v2    # "offsetDateTime":Ljava/time/OffsetDateTime;
    :cond_d
    const-class v2, Ljava/time/OffsetTime;

    if-ne p2, v2, :cond_e

    .line 123
    invoke-static {v1}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v2

    .line 125
    .local v2, "offsetTime":Ljava/time/OffsetTime;
    return-object v2

    .line 126
    .end local v2    # "offsetTime":Ljava/time/OffsetTime;
    :cond_e
    const-class v2, Ljava/time/ZoneId;

    if-ne p2, v2, :cond_f

    .line 127
    invoke-static {v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v2

    .line 129
    .local v2, "offsetTime":Ljava/time/ZoneId;
    return-object v2

    .line 130
    .end local v2    # "offsetTime":Ljava/time/ZoneId;
    :cond_f
    const-class v2, Ljava/time/Period;

    if-ne p2, v2, :cond_10

    .line 131
    invoke-static {v1}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object v2

    .line 133
    .local v2, "period":Ljava/time/Period;
    return-object v2

    .line 134
    .end local v2    # "period":Ljava/time/Period;
    :cond_10
    const-class v2, Ljava/time/Duration;

    if-ne p2, v2, :cond_11

    .line 135
    invoke-static {v1}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v2

    .line 137
    .local v2, "duration":Ljava/time/Duration;
    return-object v2

    .line 138
    .end local v2    # "duration":Ljava/time/Duration;
    :cond_11
    const-class v2, Ljava/time/Instant;

    if-ne p2, v2, :cond_12

    .line 139
    invoke-static {v1}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v2

    .line 141
    .local v2, "instant":Ljava/time/Instant;
    return-object v2

    .line 143
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "instant":Ljava/time/Instant;
    .end local v4    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_12
    nop

    .line 161
    return-object v3

    .line 143
    :cond_13
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 144
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v1

    .line 145
    .local v1, "millis":J
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 147
    const-class v3, Ljava/time/LocalDateTime;

    if-ne p2, v3, :cond_14

    .line 148
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v3

    return-object v3

    .line 150
    :cond_14
    const-class v3, Ljava/time/LocalDate;

    if-ne p2, v3, :cond_15

    .line 151
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v3

    return-object v3

    .line 153
    :cond_15
    const-class v3, Ljava/time/LocalTime;

    if-ne p2, v3, :cond_16

    .line 154
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v3

    return-object v3

    .line 157
    :cond_16
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 159
    .end local v1    # "millis":J
    :cond_17
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 362
    const/4 v0, 0x4

    return v0
.end method

.method protected parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 165
    move-object/from16 v0, p1

    if-nez p2, :cond_f

    .line 166
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v1, v2, :cond_b

    .line 167
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 168
    .local v1, "c4":C
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 169
    .local v2, "c7":C
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 170
    .local v6, "c10":C
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 171
    .local v7, "c13":C
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 172
    .local v8, "c16":C
    const/16 v9, 0x3a

    if-ne v7, v9, :cond_b

    if-ne v8, v9, :cond_b

    .line 173
    const/16 v9, 0x2d

    if-ne v1, v9, :cond_1

    if-ne v2, v9, :cond_1

    .line 174
    const/16 v5, 0x54

    if-ne v6, v5, :cond_0

    .line 175
    sget-object v5, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v5, "formatter":Ljava/time/format/DateTimeFormatter;
    goto/16 :goto_2

    .line 176
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_0
    const/16 v5, 0x20

    if-ne v6, v5, :cond_b

    .line 177
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto/16 :goto_2

    .line 179
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_1
    if-ne v1, v9, :cond_2

    if-ne v2, v9, :cond_2

    .line 180
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto/16 :goto_2

    .line 181
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_2
    const/16 v10, 0x2f

    if-ne v1, v10, :cond_3

    if-ne v2, v10, :cond_3

    .line 182
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto/16 :goto_2

    .line 184
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 185
    .local v11, "c0":C
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 186
    .local v12, "c1":C
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 187
    .local v13, "c2":C
    const/4 v14, 0x3

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 188
    .local v14, "c3":C
    const/4 v15, 0x5

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 189
    .local v15, "c5":C
    if-ne v13, v10, :cond_9

    if-ne v15, v10, :cond_9

    .line 190
    add-int/lit8 v9, v11, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v10, v12, -0x30

    add-int/2addr v9, v10

    .line 191
    .local v9, "v0":I
    add-int/lit8 v10, v14, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v5, v1, -0x30

    add-int/2addr v10, v5

    .line 192
    .local v10, "v1":I
    const/16 v5, 0xc

    if-le v9, v5, :cond_4

    .line 193
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    move-object v3, v5

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_1

    .line 194
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_4
    if-le v10, v5, :cond_5

    .line 195
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    move-object v3, v5

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_1

    .line 197
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "country":Ljava/lang/String;
    const-string v3, "US"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 200
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v3, "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_1

    .line 201
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_6
    const-string v3, "BR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 202
    const-string v3, "AU"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    move-object/from16 v3, p2

    goto :goto_1

    .line 203
    :cond_8
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 206
    .end local v5    # "country":Ljava/lang/String;
    .end local v9    # "v0":I
    .end local v10    # "v1":I
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_1
    move-object v5, v3

    goto :goto_2

    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_9
    const/16 v3, 0x2e

    if-ne v13, v3, :cond_a

    if-ne v15, v3, :cond_a

    .line 207
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    move-object v5, v3

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_2

    .line 208
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_a
    if-ne v13, v9, :cond_b

    if-ne v15, v9, :cond_b

    .line 209
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    move-object v5, v3

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_2

    .line 215
    .end local v1    # "c4":C
    .end local v2    # "c7":C
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .end local v6    # "c10":C
    .end local v7    # "c13":C
    .end local v8    # "c16":C
    .end local v11    # "c0":C
    .end local v12    # "c1":C
    .end local v13    # "c2":C
    .end local v14    # "c3":C
    .end local v15    # "c5":C
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_b
    move-object/from16 v5, p2

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v5, "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_e

    .line 216
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 217
    .restart local v1    # "c4":C
    const/16 v2, 0x5e74

    if-ne v1, v2, :cond_d

    .line 218
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x79d2

    if-ne v2, v3, :cond_c

    .line 219
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v2, "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_3

    .line 221
    .end local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_c
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_3

    .line 223
    .end local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_d
    const v2, 0xb144

    if-ne v1, v2, :cond_e

    .line 224
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_3

    .line 229
    .end local v1    # "c4":C
    .end local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_e
    move-object v2, v5

    goto :goto_3

    .line 165
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_f
    move-object/from16 v2, p2

    .line 229
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_3
    if-nez v2, :cond_10

    .line 230
    invoke-static/range {p1 .. p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_4

    .line 231
    :cond_10
    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 229
    :goto_4
    return-object v1
.end method

.method protected parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 235
    if-nez p3, :cond_b

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 237
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0xa

    if-ne v0, v2, :cond_9

    .line 241
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 242
    .local v0, "c4":C
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 243
    .local v3, "c7":C
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    .line 244
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    .line 247
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 248
    .local v5, "c0":C
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 249
    .local v6, "c1":C
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 250
    .local v7, "c2":C
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 251
    .local v8, "c3":C
    const/4 v9, 0x5

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 252
    .local v9, "c5":C
    if-ne v7, v4, :cond_7

    if-ne v9, v4, :cond_7

    .line 253
    add-int/lit8 v4, v5, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v10, v6, -0x30

    add-int/2addr v4, v10

    .line 254
    .local v4, "v0":I
    add-int/lit8 v10, v8, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v2, v0, -0x30

    add-int/2addr v10, v2

    .line 255
    .local v10, "v1":I
    const/16 v2, 0xc

    if-le v4, v2, :cond_2

    .line 256
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 257
    :cond_2
    if-le v10, v2, :cond_3

    .line 258
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 260
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "country":Ljava/lang/String;
    const-string v11, "US"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 263
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 264
    :cond_4
    const-string v11, "BR"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 265
    const-string v11, "AU"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 266
    :cond_5
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    .line 269
    .end local v2    # "country":Ljava/lang/String;
    .end local v4    # "v0":I
    .end local v10    # "v1":I
    :cond_6
    :goto_0
    goto :goto_1

    :cond_7
    const/16 v2, 0x2e

    if-ne v7, v2, :cond_8

    if-ne v9, v2, :cond_8

    .line 270
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    .line 271
    :cond_8
    const/16 v2, 0x2d

    if-ne v7, v2, :cond_9

    if-ne v9, v2, :cond_9

    .line 272
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    .line 276
    .end local v0    # "c4":C
    .end local v3    # "c7":C
    .end local v5    # "c0":C
    .end local v6    # "c1":C
    .end local v7    # "c2":C
    .end local v8    # "c3":C
    .end local v9    # "c5":C
    :cond_9
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_b

    .line 277
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 278
    .restart local v0    # "c4":C
    const/16 v1, 0x5e74

    if-ne v0, v1, :cond_a

    .line 279
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 280
    :cond_a
    const v1, 0xb144

    if-ne v0, v1, :cond_b

    .line 281
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    .line 286
    .end local v0    # "c4":C
    :cond_b
    :goto_2
    if-nez p3, :cond_c

    .line 287
    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_3

    .line 288
    :cond_c
    invoke-static {p1, p3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    .line 286
    :goto_3
    return-object v0
.end method

.method protected parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 292
    move-object/from16 v0, p1

    if-nez p2, :cond_f

    .line 293
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v1, v2, :cond_b

    .line 294
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 295
    .local v1, "c4":C
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 296
    .local v2, "c7":C
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 297
    .local v6, "c10":C
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 298
    .local v7, "c13":C
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 299
    .local v8, "c16":C
    const/16 v9, 0x3a

    if-ne v7, v9, :cond_b

    if-ne v8, v9, :cond_b

    .line 300
    const/16 v9, 0x2d

    if-ne v1, v9, :cond_1

    if-ne v2, v9, :cond_1

    .line 301
    const/16 v5, 0x54

    if-ne v6, v5, :cond_0

    .line 302
    sget-object v5, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v5, "formatter":Ljava/time/format/DateTimeFormatter;
    goto/16 :goto_2

    .line 303
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_0
    const/16 v5, 0x20

    if-ne v6, v5, :cond_b

    .line 304
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto/16 :goto_2

    .line 306
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_1
    if-ne v1, v9, :cond_2

    if-ne v2, v9, :cond_2

    .line 307
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto/16 :goto_2

    .line 308
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_2
    const/16 v10, 0x2f

    if-ne v1, v10, :cond_3

    if-ne v2, v10, :cond_3

    .line 309
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto/16 :goto_2

    .line 311
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 312
    .local v11, "c0":C
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 313
    .local v12, "c1":C
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 314
    .local v13, "c2":C
    const/4 v14, 0x3

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 315
    .local v14, "c3":C
    const/4 v15, 0x5

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 316
    .local v15, "c5":C
    if-ne v13, v10, :cond_9

    if-ne v15, v10, :cond_9

    .line 317
    add-int/lit8 v9, v11, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v10, v12, -0x30

    add-int/2addr v9, v10

    .line 318
    .local v9, "v0":I
    add-int/lit8 v10, v14, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v5, v1, -0x30

    add-int/2addr v10, v5

    .line 319
    .local v10, "v1":I
    const/16 v5, 0xc

    if-le v9, v5, :cond_4

    .line 320
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    move-object v3, v5

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_1

    .line 321
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_4
    if-le v10, v5, :cond_5

    .line 322
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    move-object v3, v5

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_1

    .line 324
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "country":Ljava/lang/String;
    const-string v3, "US"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 327
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v3, "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_1

    .line 328
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_6
    const-string v3, "BR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 329
    const-string v3, "AU"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    move-object/from16 v3, p2

    goto :goto_1

    .line 330
    :cond_8
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 333
    .end local v5    # "country":Ljava/lang/String;
    .end local v9    # "v0":I
    .end local v10    # "v1":I
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_1
    move-object v5, v3

    goto :goto_2

    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_9
    const/16 v3, 0x2e

    if-ne v13, v3, :cond_a

    if-ne v15, v3, :cond_a

    .line 334
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    move-object v5, v3

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_2

    .line 335
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_a
    if-ne v13, v9, :cond_b

    if-ne v15, v9, :cond_b

    .line 336
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    move-object v5, v3

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_2

    .line 342
    .end local v1    # "c4":C
    .end local v2    # "c7":C
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .end local v6    # "c10":C
    .end local v7    # "c13":C
    .end local v8    # "c16":C
    .end local v11    # "c0":C
    .end local v12    # "c1":C
    .end local v13    # "c2":C
    .end local v14    # "c3":C
    .end local v15    # "c5":C
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_b
    move-object/from16 v5, p2

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v5, "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_e

    .line 343
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 344
    .restart local v1    # "c4":C
    const/16 v2, 0x5e74

    if-ne v1, v2, :cond_d

    .line 345
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x79d2

    if-ne v2, v3, :cond_c

    .line 346
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v2, "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_3

    .line 348
    .end local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_c
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_3

    .line 350
    .end local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_d
    const v2, 0xb144

    if-ne v1, v2, :cond_e

    .line 351
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_3

    .line 356
    .end local v1    # "c4":C
    .end local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_e
    move-object v2, v5

    goto :goto_3

    .line 292
    .end local v5    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_f
    move-object/from16 v2, p2

    .line 356
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_3
    if-nez v2, :cond_10

    .line 357
    invoke-static/range {p1 .. p1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    goto :goto_4

    .line 358
    :cond_10
    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 356
    :goto_4
    return-object v1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/BeanContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 404
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    check-cast v2, Ljava/time/temporal/TemporalAccessor;

    invoke-direct {p0, v0, v2, v1}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 6
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 368
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_2

    .line 371
    :cond_0
    if-nez p4, :cond_1

    .line 372
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 375
    :cond_1
    const-class v1, Ljava/time/LocalDateTime;

    if-ne p4, v1, :cond_9

    .line 376
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    .line 377
    .local v1, "mask":I
    move-object v2, p2

    check-cast v2, Ljava/time/LocalDateTime;

    .line 378
    .local v2, "dateTime":Ljava/time/LocalDateTime;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "format":Ljava/lang/String;
    if-nez v3, :cond_2

    and-int v4, p5, v1

    if-nez v4, :cond_3

    :cond_2
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    :cond_3
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 384
    :cond_4
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getNano()I

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_5

    goto :goto_0

    .line 390
    :cond_5
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 392
    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_1

    .line 394
    :cond_6
    sget-object v4, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_1

    .line 386
    :cond_7
    :goto_0
    if-nez v3, :cond_8

    .line 387
    sget-object v3, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 389
    :cond_8
    invoke-direct {p0, v0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    .line 396
    .end local v1    # "mask":I
    .end local v2    # "dateTime":Ljava/time/LocalDateTime;
    .end local v3    # "format":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 397
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 400
    :goto_2
    return-void
.end method
