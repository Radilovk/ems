.class public Lcom/alibaba/fastjson/serializer/DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 166
    return-object v0

    .line 169
    :cond_0
    instance-of v1, p4, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 170
    return-object p4

    .line 171
    :cond_1
    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 172
    new-instance v0, Ljava/util/Date;

    move-object v1, p4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 173
    :cond_2
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 174
    move-object v1, p4

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 176
    return-object v0

    .line 180
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 183
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, "calendar":Ljava/util/Calendar;
    const-class v3, Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne p2, v3, :cond_4

    .line 186
    nop

    .line 192
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 186
    return-object v0

    .line 189
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 189
    return-object v3

    .line 192
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 193
    nop

    .line 196
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFomartPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_6

    .line 197
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x16

    if-ne v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFomartPattern()Ljava/lang/String;

    move-result-object v2

    const-string v4, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 198
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v2

    .line 200
    .local v2, "dateFormat":Ljava/text/DateFormat;
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 201
    :catch_0
    move-exception v4

    .line 206
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    :cond_7
    const-string v2, "/Date("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, ")/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 207
    const/4 v2, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "dotnetDateStr":Ljava/lang/String;
    move-object v1, v2

    .line 211
    .end local v2    # "dotnetDateStr":Ljava/lang/String;
    :cond_8
    const-string v2, "0000-00-00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 212
    const-string v2, "0000-00-00T00:00:00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 213
    const-string v2, "0001-01-01T00:00:00+08:00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    .line 217
    :cond_9
    const/16 v0, 0x7c

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 218
    .local v0, "index":I
    const/16 v2, 0x14

    if-le v0, v2, :cond_c

    .line 219
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "tzStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 221
    .local v4, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GMT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 222
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "subStr":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 225
    .local v6, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_3
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 226
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    .line 228
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 230
    const-class v7, Ljava/util/Calendar;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v7, :cond_a

    .line 231
    nop

    .line 237
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 231
    return-object v3

    .line 234
    :cond_a
    :try_start_4
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 234
    return-object v7

    .line 237
    .end local v3    # "calendar":Ljava/util/Calendar;
    :cond_b
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 238
    goto :goto_0

    .line 237
    :catchall_0
    move-exception v3

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v3

    .line 244
    .end local v2    # "tzStr":Ljava/lang/String;
    .end local v4    # "timeZone":Ljava/util/TimeZone;
    .end local v5    # "subStr":Ljava/lang/String;
    .end local v6    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_c
    :goto_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 245
    .local v2, "longVal":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v4

    .line 214
    .end local v0    # "index":I
    .end local v2    # "longVal":J
    :cond_d
    :goto_1
    return-object v0

    .line 192
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 248
    .end local v1    # "strVal":Ljava/lang/String;
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "parse error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 252
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 19
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

    .line 45
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 47
    .local v2, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v1, :cond_0

    .line 48
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 49
    return-void

    .line 53
    :cond_0
    instance-of v3, v1, Ljava/util/Date;

    if-eqz v3, :cond_1

    .line 54
    move-object v3, v1

    check-cast v3, Ljava/util/Date;

    .local v3, "date":Ljava/util/Date;
    goto :goto_0

    .line 56
    .end local v3    # "date":Ljava/util/Date;
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v3

    .line 59
    .restart local v3    # "date":Ljava/util/Date;
    :goto_0
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v4

    .line 61
    .local v4, "format":Ljava/text/DateFormat;
    if-nez v4, :cond_2

    .line 62
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v4, v5

    .line 63
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    :cond_2
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 67
    return-void

    .line 70
    .end local v4    # "format":Ljava/text/DateFormat;
    .end local v5    # "text":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 71
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v5, p4

    if-eq v4, v5, :cond_6

    .line 72
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Ljava/util/Date;

    if-ne v4, v6, :cond_4

    .line 73
    const-string v4, "new Date("

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 74
    move-object v4, v1

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 75
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .line 77
    :cond_4
    const/16 v4, 0x7b

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 78
    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 80
    const/16 v4, 0x2c

    move-object v6, v1

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-string v8, "val"

    invoke-virtual {v2, v4, v8, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;J)V

    .line 81
    const/16 v4, 0x7d

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 83
    :goto_1
    return-void

    .line 70
    :cond_5
    move-object/from16 v5, p4

    .line 87
    :cond_6
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 88
    .local v6, "time":J
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 89
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x27

    goto :goto_2

    :cond_7
    const/16 v4, 0x22

    .line 90
    .local v4, "quote":C
    :goto_2
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 92
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    .line 93
    .local v8, "calendar":Ljava/util/Calendar;
    invoke-virtual {v8, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 95
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 96
    .local v10, "year":I
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v9

    .line 97
    .local v11, "month":I
    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 98
    .local v9, "day":I
    const/16 v12, 0xb

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 99
    .local v12, "hour":I
    const/16 v13, 0xc

    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 100
    .local v13, "minute":I
    const/16 v14, 0xd

    invoke-virtual {v8, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 101
    .local v15, "second":I
    const/16 v14, 0xe

    invoke-virtual {v8, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 104
    .local v14, "millis":I
    if-eqz v14, :cond_8

    .line 105
    const-string v18, "0000-00-00T00:00:00.000"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 106
    .local v0, "buf":[C
    const/16 v1, 0x17

    invoke-static {v14, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 107
    const/16 v1, 0x13

    invoke-static {v15, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 108
    const/16 v1, 0x10

    invoke-static {v13, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 109
    const/16 v1, 0xd

    invoke-static {v12, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 110
    const/16 v1, 0xa

    invoke-static {v9, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 111
    const/4 v1, 0x7

    invoke-static {v11, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 112
    const/4 v1, 0x4

    invoke-static {v10, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_3

    .line 115
    .end local v0    # "buf":[C
    :cond_8
    if-nez v15, :cond_9

    if-nez v13, :cond_9

    if-nez v12, :cond_9

    .line 116
    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 117
    .restart local v0    # "buf":[C
    const/16 v1, 0xa

    invoke-static {v9, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 118
    const/4 v1, 0x7

    invoke-static {v11, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 119
    const/4 v1, 0x4

    invoke-static {v10, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_3

    .line 121
    .end local v0    # "buf":[C
    :cond_9
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 122
    .restart local v0    # "buf":[C
    const/16 v1, 0x13

    invoke-static {v15, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 123
    const/16 v1, 0x10

    invoke-static {v13, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 124
    const/16 v1, 0xd

    invoke-static {v12, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 125
    const/16 v1, 0xa

    invoke-static {v9, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 126
    const/4 v1, 0x7

    invoke-static {v11, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 127
    const/4 v1, 0x4

    invoke-static {v10, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 131
    :goto_3
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 133
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v16, 0x36ee80

    div-int v1, v1, v16

    .line 134
    .local v1, "timeZone":I
    if-nez v1, :cond_a

    .line 135
    move-object/from16 v16, v0

    .end local v0    # "buf":[C
    .local v16, "buf":[C
    const/16 v0, 0x5a

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move-object/from16 v17, v3

    goto :goto_5

    .line 137
    .end local v16    # "buf":[C
    .restart local v0    # "buf":[C
    :cond_a
    move-object/from16 v16, v0

    .end local v0    # "buf":[C
    .restart local v16    # "buf":[C
    const/16 v0, 0x9

    move-object/from16 v17, v3

    .end local v3    # "date":Ljava/util/Date;
    .local v17, "date":Ljava/util/Date;
    const/16 v3, 0x2b

    if-le v1, v0, :cond_b

    .line 138
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 139
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_4

    .line 140
    :cond_b
    const/16 v0, 0x30

    if-lez v1, :cond_c

    .line 141
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 142
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 143
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_4

    .line 144
    :cond_c
    const/16 v3, -0x9

    const/16 v0, 0x2d

    if-ge v1, v3, :cond_d

    .line 145
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 146
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_4

    .line 147
    :cond_d
    if-gez v1, :cond_e

    .line 148
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 149
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 150
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 153
    :cond_e
    :goto_4
    const-string v0, ":00"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 156
    :goto_5
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 157
    .end local v1    # "timeZone":I
    .end local v4    # "quote":C
    .end local v8    # "calendar":Ljava/util/Calendar;
    .end local v9    # "day":I
    .end local v10    # "year":I
    .end local v11    # "month":I
    .end local v12    # "hour":I
    .end local v13    # "minute":I
    .end local v14    # "millis":I
    .end local v15    # "second":I
    .end local v16    # "buf":[C
    goto :goto_6

    .line 158
    .end local v17    # "date":Ljava/util/Date;
    .restart local v3    # "date":Ljava/util/Date;
    :cond_f
    move-object/from16 v17, v3

    .end local v3    # "date":Ljava/util/Date;
    .restart local v17    # "date":Ljava/util/Date;
    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 160
    :goto_6
    return-void
.end method
