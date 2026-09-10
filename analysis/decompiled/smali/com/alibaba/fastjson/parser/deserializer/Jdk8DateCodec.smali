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

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    .line 30
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .line 31
    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    .line 32
    const-string/jumbo v0, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    .line 33
    const-string/jumbo v0, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .line 34
    const-string/jumbo v0, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    .line 35
    const-string v0, "MM/dd/yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    .line 36
    const-string v0, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 37
    const-string v0, "dd.MM.yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    .line 38
    const-string v0, "dd-MM-yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    .line 40
    const-string/jumbo v0, "yyyyMMdd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .line 41
    const-string/jumbo v0, "yyyy/MM/dd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    .line 42
    const-string/jumbo v0, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    .line 43
    const-string/jumbo v0, "yyyy\ub144M\uc6d4d\uc77c"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    .line 44
    const-string v0, "MM/dd/yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    .line 45
    const-string v0, "dd/MM/yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    .line 46
    const-string v0, "dd.MM.yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    .line 47
    const-string v0, "dd-MM-yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    .line 49
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 50
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 53
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .param p2, "object"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "format"    # Ljava/lang/String;

    .prologue
    .line 410
    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    if-ne p3, v2, :cond_0

    .line 411
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    .line 416
    .local v0, "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 418
    return-void

    .line 413
    .end local v0    # "formatter":Ljava/time/format/DateTimeFormatter;
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .restart local v0    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_0
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 19
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

    .prologue
    .line 57
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 58
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 59
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 60
    const/4 v6, 0x0

    .line 161
    :goto_0
    return-object v6

    .line 63
    :cond_0
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    .line 64
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v13

    .line 65
    .local v13, "text":Ljava/lang/String;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 67
    const/4 v3, 0x0

    .line 68
    .local v3, "formatter":Ljava/time/format/DateTimeFormatter;
    if-eqz p4, :cond_1

    .line 69
    const-string/jumbo v15, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 70
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .line 76
    :cond_1
    :goto_1
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 77
    const/4 v6, 0x0

    goto :goto_0

    .line 72
    :cond_2
    invoke-static/range {p4 .. p4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    goto :goto_1

    .line 80
    :cond_3
    const-class v15, Ljava/time/LocalDateTime;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_6

    .line 82
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 83
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v13, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v6

    .line 84
    .local v6, "localDate":Ljava/time/LocalDate;
    sget-object v15, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v6, v15}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v7

    .end local v6    # "localDate":Ljava/time/LocalDate;
    .local v7, "localDateTime":Ljava/time/LocalDateTime;
    :goto_2
    move-object v6, v7

    .line 88
    goto :goto_0

    .line 86
    .end local v7    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v7

    .restart local v7    # "localDateTime":Ljava/time/LocalDateTime;
    goto :goto_2

    .line 89
    .end local v7    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_6
    const-class v15, Ljava/time/LocalDate;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_8

    .line 91
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x17

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 92
    invoke-static {v13}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v7

    .line 93
    .restart local v7    # "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getYear()I

    move-result v15

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v16

    .line 94
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v17

    .line 93
    invoke-static/range {v15 .. v17}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v6

    .line 95
    .restart local v6    # "localDate":Ljava/time/LocalDate;
    goto/16 :goto_0

    .line 96
    .end local v6    # "localDate":Ljava/time/LocalDate;
    .end local v7    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v13, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v6

    .restart local v6    # "localDate":Ljava/time/LocalDate;
    goto/16 :goto_0

    .line 100
    .end local v6    # "localDate":Ljava/time/LocalDate;
    :cond_8
    const-class v15, Ljava/time/LocalTime;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_a

    .line 102
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x17

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 103
    invoke-static {v13}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v7

    .line 104
    .restart local v7    # "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getHour()I

    move-result v15

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v16

    .line 105
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v17

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getNano()I

    move-result v18

    .line 104
    invoke-static/range {v15 .. v18}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v6

    .line 106
    .local v6, "localDate":Ljava/time/LocalTime;
    goto/16 :goto_0

    .line 107
    .end local v6    # "localDate":Ljava/time/LocalTime;
    .end local v7    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_9
    invoke-static {v13}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v6

    .restart local v6    # "localDate":Ljava/time/LocalTime;
    goto/16 :goto_0

    .line 110
    .end local v6    # "localDate":Ljava/time/LocalTime;
    :cond_a
    const-class v15, Ljava/time/ZonedDateTime;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_c

    .line 111
    sget-object v15, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    if-ne v3, v15, :cond_b

    .line 112
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 115
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v14

    .local v14, "zonedDateTime":Ljava/time/ZonedDateTime;
    move-object v6, v14

    .line 117
    goto/16 :goto_0

    .line 118
    .end local v14    # "zonedDateTime":Ljava/time/ZonedDateTime;
    :cond_c
    const-class v15, Ljava/time/OffsetDateTime;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_d

    .line 119
    invoke-static {v13}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v10

    .local v10, "offsetDateTime":Ljava/time/OffsetDateTime;
    move-object v6, v10

    .line 121
    goto/16 :goto_0

    .line 122
    .end local v10    # "offsetDateTime":Ljava/time/OffsetDateTime;
    :cond_d
    const-class v15, Ljava/time/OffsetTime;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_e

    .line 123
    invoke-static {v13}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v11

    .local v11, "offsetTime":Ljava/time/OffsetTime;
    move-object v6, v11

    .line 125
    goto/16 :goto_0

    .line 126
    .end local v11    # "offsetTime":Ljava/time/OffsetTime;
    :cond_e
    const-class v15, Ljava/time/ZoneId;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_f

    .line 127
    invoke-static {v13}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v11

    .local v11, "offsetTime":Ljava/time/ZoneId;
    move-object v6, v11

    .line 129
    goto/16 :goto_0

    .line 130
    .end local v11    # "offsetTime":Ljava/time/ZoneId;
    :cond_f
    const-class v15, Ljava/time/Period;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_10

    .line 131
    invoke-static {v13}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object v12

    .local v12, "period":Ljava/time/Period;
    move-object v6, v12

    .line 133
    goto/16 :goto_0

    .line 134
    .end local v12    # "period":Ljava/time/Period;
    :cond_10
    const-class v15, Ljava/time/Duration;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_11

    .line 135
    invoke-static {v13}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v2

    .local v2, "duration":Ljava/time/Duration;
    move-object v6, v2

    .line 137
    goto/16 :goto_0

    .line 138
    .end local v2    # "duration":Ljava/time/Duration;
    :cond_11
    const-class v15, Ljava/time/Instant;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_17

    .line 139
    invoke-static {v13}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v4

    .local v4, "instant":Ljava/time/Instant;
    move-object v6, v4

    .line 141
    goto/16 :goto_0

    .line 143
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .end local v4    # "instant":Ljava/time/Instant;
    .end local v13    # "text":Ljava/lang/String;
    :cond_12
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    .line 144
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v8

    .line 145
    .local v8, "millis":J
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 147
    const-class v15, Ljava/time/LocalDateTime;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_13

    .line 148
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v15

    sget-object v16, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v6

    goto/16 :goto_0

    .line 150
    :cond_13
    const-class v15, Ljava/time/LocalDate;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_14

    .line 151
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v15

    sget-object v16, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v6

    goto/16 :goto_0

    .line 153
    :cond_14
    const-class v15, Ljava/time/LocalTime;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_15

    .line 154
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v15

    sget-object v16, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    goto/16 :goto_0

    .line 157
    :cond_15
    new-instance v15, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v15}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v15

    .line 159
    .end local v8    # "millis":J
    :cond_16
    new-instance v15, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v15}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v15

    .line 161
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v13    # "text":Ljava/lang/String;
    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x4

    return v0
.end method

.method protected parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 165
    if-nez p2, :cond_1

    .line 166
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x13

    if-ne v14, v15, :cond_0

    .line 167
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 168
    .local v8, "c4":C
    const/4 v14, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 169
    .local v10, "c7":C
    const/16 v14, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 170
    .local v3, "c10":C
    const/16 v14, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 171
    .local v4, "c13":C
    const/16 v14, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 172
    .local v5, "c16":C
    const/16 v14, 0x3a

    if-ne v4, v14, :cond_0

    const/16 v14, 0x3a

    if-ne v5, v14, :cond_0

    .line 173
    const/16 v14, 0x2d

    if-ne v8, v14, :cond_3

    const/16 v14, 0x2d

    if-ne v10, v14, :cond_3

    .line 174
    const/16 v14, 0x54

    if-ne v3, v14, :cond_2

    .line 175
    sget-object p2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 215
    .end local v3    # "c10":C
    .end local v4    # "c13":C
    .end local v5    # "c16":C
    .end local v8    # "c4":C
    .end local v10    # "c7":C
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x11

    if-lt v14, v15, :cond_1

    .line 216
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 217
    .restart local v8    # "c4":C
    const/16 v14, 0x5e74

    if-ne v8, v14, :cond_d

    .line 218
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x79d2

    if-ne v14, v15, :cond_c

    .line 219
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .line 229
    .end local v8    # "c4":C
    :cond_1
    :goto_1
    if-nez p2, :cond_e

    .line 230
    invoke-static/range {p1 .. p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v14

    .line 229
    :goto_2
    return-object v14

    .line 176
    .restart local v3    # "c10":C
    .restart local v4    # "c13":C
    .restart local v5    # "c16":C
    .restart local v8    # "c4":C
    .restart local v10    # "c7":C
    :cond_2
    const/16 v14, 0x20

    if-ne v3, v14, :cond_0

    .line 177
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 179
    :cond_3
    const/16 v14, 0x2d

    if-ne v8, v14, :cond_4

    const/16 v14, 0x2d

    if-ne v10, v14, :cond_4

    .line 180
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 181
    :cond_4
    const/16 v14, 0x2f

    if-ne v8, v14, :cond_5

    const/16 v14, 0x2f

    if-ne v10, v14, :cond_5

    .line 182
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 184
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 185
    .local v1, "c0":C
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 186
    .local v2, "c1":C
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 187
    .local v6, "c2":C
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 188
    .local v7, "c3":C
    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 189
    .local v9, "c5":C
    const/16 v14, 0x2f

    if-ne v6, v14, :cond_a

    const/16 v14, 0x2f

    if-ne v9, v14, :cond_a

    .line 190
    add-int/lit8 v14, v1, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v15, v2, -0x30

    add-int v12, v14, v15

    .line 191
    .local v12, "v0":I
    add-int/lit8 v14, v7, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v15, v8, -0x30

    add-int v13, v14, v15

    .line 192
    .local v13, "v1":I
    const/16 v14, 0xc

    if-le v12, v14, :cond_6

    .line 193
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 194
    :cond_6
    const/16 v14, 0xc

    if-le v13, v14, :cond_7

    .line 195
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 197
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 199
    .local v11, "country":Ljava/lang/String;
    const-string v14, "US"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 200
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 201
    :cond_8
    const-string v14, "BR"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "AU"

    .line 202
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 203
    :cond_9
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 206
    .end local v11    # "country":Ljava/lang/String;
    .end local v12    # "v0":I
    .end local v13    # "v1":I
    :cond_a
    const/16 v14, 0x2e

    if-ne v6, v14, :cond_b

    const/16 v14, 0x2e

    if-ne v9, v14, :cond_b

    .line 207
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 208
    :cond_b
    const/16 v14, 0x2d

    if-ne v6, v14, :cond_0

    const/16 v14, 0x2d

    if-ne v9, v14, :cond_0

    .line 209
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 221
    .end local v1    # "c0":C
    .end local v2    # "c1":C
    .end local v3    # "c10":C
    .end local v4    # "c13":C
    .end local v5    # "c16":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v9    # "c5":C
    .end local v10    # "c7":C
    :cond_c
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_1

    .line 223
    :cond_d
    const v14, 0xb144

    if-ne v8, v14, :cond_1

    .line 224
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_1

    .line 231
    .end local v8    # "c4":C
    :cond_e
    invoke-static/range {p1 .. p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v14

    goto/16 :goto_2
.end method

.method protected parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 235
    if-nez p3, :cond_3

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    .line 237
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_2

    .line 241
    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 242
    .local v4, "c4":C
    const/4 v10, 0x7

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 243
    .local v6, "c7":C
    const/16 v10, 0x2f

    if-ne v4, v10, :cond_1

    const/16 v10, 0x2f

    if-ne v6, v10, :cond_1

    .line 244
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    .line 247
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 248
    .local v0, "c0":C
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 249
    .local v1, "c1":C
    const/4 v10, 0x2

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 250
    .local v2, "c2":C
    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 251
    .local v3, "c3":C
    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 252
    .local v5, "c5":C
    const/16 v10, 0x2f

    if-ne v2, v10, :cond_8

    const/16 v10, 0x2f

    if-ne v5, v10, :cond_8

    .line 253
    add-int/lit8 v10, v0, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v11, v1, -0x30

    add-int v8, v10, v11

    .line 254
    .local v8, "v0":I
    add-int/lit8 v10, v3, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v11, v4, -0x30

    add-int v9, v10, v11

    .line 255
    .local v9, "v1":I
    const/16 v10, 0xc

    if-le v8, v10, :cond_4

    .line 256
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    .line 276
    .end local v0    # "c0":C
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    .end local v3    # "c3":C
    .end local v4    # "c4":C
    .end local v5    # "c5":C
    .end local v6    # "c7":C
    .end local v8    # "v0":I
    .end local v9    # "v1":I
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x9

    if-lt v10, v11, :cond_3

    .line 277
    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 278
    .restart local v4    # "c4":C
    const/16 v10, 0x5e74

    if-ne v4, v10, :cond_a

    .line 279
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    .line 286
    .end local v4    # "c4":C
    :cond_3
    :goto_1
    if-nez p3, :cond_b

    .line 287
    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v10

    .line 286
    :goto_2
    return-object v10

    .line 257
    .restart local v0    # "c0":C
    .restart local v1    # "c1":C
    .restart local v2    # "c2":C
    .restart local v3    # "c3":C
    .restart local v4    # "c4":C
    .restart local v5    # "c5":C
    .restart local v6    # "c7":C
    .restart local v8    # "v0":I
    .restart local v9    # "v1":I
    :cond_4
    const/16 v10, 0xc

    if-le v9, v10, :cond_5

    .line 258
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 260
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "country":Ljava/lang/String;
    const-string v10, "US"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 263
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 264
    :cond_6
    const-string v10, "BR"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "AU"

    .line 265
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 266
    :cond_7
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 269
    .end local v7    # "country":Ljava/lang/String;
    .end local v8    # "v0":I
    .end local v9    # "v1":I
    :cond_8
    const/16 v10, 0x2e

    if-ne v2, v10, :cond_9

    const/16 v10, 0x2e

    if-ne v5, v10, :cond_9

    .line 270
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 271
    :cond_9
    const/16 v10, 0x2d

    if-ne v2, v10, :cond_2

    const/16 v10, 0x2d

    if-ne v5, v10, :cond_2

    .line 272
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 280
    .end local v0    # "c0":C
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    .end local v3    # "c3":C
    .end local v5    # "c5":C
    .end local v6    # "c7":C
    :cond_a
    const v10, 0xb144

    if-ne v4, v10, :cond_3

    .line 281
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    .line 288
    .end local v4    # "c4":C
    :cond_b
    invoke-static {p1, p3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v10

    goto :goto_2
.end method

.method protected parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 292
    if-nez p2, :cond_1

    .line 293
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x13

    if-ne v14, v15, :cond_0

    .line 294
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 295
    .local v8, "c4":C
    const/4 v14, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 296
    .local v10, "c7":C
    const/16 v14, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 297
    .local v3, "c10":C
    const/16 v14, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 298
    .local v4, "c13":C
    const/16 v14, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 299
    .local v5, "c16":C
    const/16 v14, 0x3a

    if-ne v4, v14, :cond_0

    const/16 v14, 0x3a

    if-ne v5, v14, :cond_0

    .line 300
    const/16 v14, 0x2d

    if-ne v8, v14, :cond_3

    const/16 v14, 0x2d

    if-ne v10, v14, :cond_3

    .line 301
    const/16 v14, 0x54

    if-ne v3, v14, :cond_2

    .line 302
    sget-object p2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 342
    .end local v3    # "c10":C
    .end local v4    # "c13":C
    .end local v5    # "c16":C
    .end local v8    # "c4":C
    .end local v10    # "c7":C
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x11

    if-lt v14, v15, :cond_1

    .line 343
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 344
    .restart local v8    # "c4":C
    const/16 v14, 0x5e74

    if-ne v8, v14, :cond_d

    .line 345
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x79d2

    if-ne v14, v15, :cond_c

    .line 346
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .line 356
    .end local v8    # "c4":C
    :cond_1
    :goto_1
    if-nez p2, :cond_e

    .line 357
    invoke-static/range {p1 .. p1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v14

    .line 356
    :goto_2
    return-object v14

    .line 303
    .restart local v3    # "c10":C
    .restart local v4    # "c13":C
    .restart local v5    # "c16":C
    .restart local v8    # "c4":C
    .restart local v10    # "c7":C
    :cond_2
    const/16 v14, 0x20

    if-ne v3, v14, :cond_0

    .line 304
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 306
    :cond_3
    const/16 v14, 0x2d

    if-ne v8, v14, :cond_4

    const/16 v14, 0x2d

    if-ne v10, v14, :cond_4

    .line 307
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 308
    :cond_4
    const/16 v14, 0x2f

    if-ne v8, v14, :cond_5

    const/16 v14, 0x2f

    if-ne v10, v14, :cond_5

    .line 309
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 311
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 312
    .local v1, "c0":C
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 313
    .local v2, "c1":C
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 314
    .local v6, "c2":C
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 315
    .local v7, "c3":C
    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 316
    .local v9, "c5":C
    const/16 v14, 0x2f

    if-ne v6, v14, :cond_a

    const/16 v14, 0x2f

    if-ne v9, v14, :cond_a

    .line 317
    add-int/lit8 v14, v1, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v15, v2, -0x30

    add-int v12, v14, v15

    .line 318
    .local v12, "v0":I
    add-int/lit8 v14, v7, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v15, v8, -0x30

    add-int v13, v14, v15

    .line 319
    .local v13, "v1":I
    const/16 v14, 0xc

    if-le v12, v14, :cond_6

    .line 320
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 321
    :cond_6
    const/16 v14, 0xc

    if-le v13, v14, :cond_7

    .line 322
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 324
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 326
    .local v11, "country":Ljava/lang/String;
    const-string v14, "US"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 327
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 328
    :cond_8
    const-string v14, "BR"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "AU"

    .line 329
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 330
    :cond_9
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 333
    .end local v11    # "country":Ljava/lang/String;
    .end local v12    # "v0":I
    .end local v13    # "v1":I
    :cond_a
    const/16 v14, 0x2e

    if-ne v6, v14, :cond_b

    const/16 v14, 0x2e

    if-ne v9, v14, :cond_b

    .line 334
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 335
    :cond_b
    const/16 v14, 0x2d

    if-ne v6, v14, :cond_0

    const/16 v14, 0x2d

    if-ne v9, v14, :cond_0

    .line 336
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 348
    .end local v1    # "c0":C
    .end local v2    # "c1":C
    .end local v3    # "c10":C
    .end local v4    # "c13":C
    .end local v5    # "c16":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v9    # "c5":C
    .end local v10    # "c7":C
    :cond_c
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_1

    .line 350
    :cond_d
    const v14, 0xb144

    if-ne v8, v14, :cond_1

    .line 351
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_1

    .line 358
    .end local v8    # "c4":C
    :cond_e
    invoke-static/range {p1 .. p2}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v14

    goto/16 :goto_2
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .locals 2
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/BeanContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 404
    .local v1, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "format":Ljava/lang/String;
    check-cast p2, Ljava/time/temporal/TemporalAccessor;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, v1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

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

    .prologue
    .line 367
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 368
    .local v3, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 369
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 400
    :goto_0
    return-void

    .line 371
    :cond_0
    if-nez p4, :cond_1

    .line 372
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 375
    :cond_1
    const-class v4, Ljava/time/LocalDateTime;

    if-ne p4, v4, :cond_9

    .line 376
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v2

    .local v2, "mask":I
    move-object v0, p2

    .line 377
    check-cast v0, Ljava/time/LocalDateTime;

    .line 378
    .local v0, "dateTime":Ljava/time/LocalDateTime;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "format":Ljava/lang/String;
    if-nez v1, :cond_2

    and-int v4, p5, v2

    if-nez v4, :cond_3

    :cond_2
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    :cond_3
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 384
    :cond_4
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_7

    .line 386
    :cond_5
    if-nez v1, :cond_6

    .line 387
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 389
    :cond_6
    invoke-direct {p0, v3, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_7
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 392
    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_8
    sget-object v4, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_0

    .line 397
    .end local v0    # "dateTime":Ljava/time/LocalDateTime;
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "mask":I
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
