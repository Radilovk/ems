.class public Lcom/alibaba/fastjson/serializer/CalendarCodec;
.super Ljava/lang/Object;
.source "CalendarCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;


# instance fields
.field private dateFactory:Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CalendarCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 126
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;

    if-nez v0, :cond_0

    .line 128
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not obtain an instance of DatatypeFactory."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 133
    .end local v0    # "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;

    move-object v1, p1

    check-cast v1, Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/DateCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 106
    return-object v0

    .line 109
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Date;

    .line 110
    .local v1, "date":Ljava/util/Date;
    if-nez v1, :cond_1

    .line 111
    const/4 v2, 0x0

    return-object v2

    .line 114
    :cond_1
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 115
    .local v2, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 116
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 118
    const-class v4, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-ne p2, v4, :cond_2

    .line 119
    move-object v4, v3

    check-cast v4, Ljava/util/GregorianCalendar;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/CalendarCodec;->createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v4

    return-object v4

    .line 122
    :cond_2
    return-object v3
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 137
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 20
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

    .line 27
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 29
    .local v2, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v1, :cond_0

    .line 30
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 31
    return-void

    .line 35
    :cond_0
    instance-of v3, v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-eqz v3, :cond_1

    .line 36
    move-object v3, v1

    check-cast v3, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v3

    .local v3, "calendar":Ljava/util/Calendar;
    goto :goto_0

    .line 38
    .end local v3    # "calendar":Ljava/util/Calendar;
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/Calendar;

    .line 41
    .restart local v3    # "calendar":Ljava/util/Calendar;
    :goto_0
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 42
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x27

    goto :goto_1

    :cond_2
    const/16 v4, 0x22

    .line 45
    .local v4, "quote":C
    :goto_1
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 47
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 48
    .local v6, "year":I
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v5

    .line 49
    .local v7, "month":I
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 50
    .local v8, "day":I
    const/16 v9, 0xb

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 51
    .local v9, "hour":I
    const/16 v10, 0xc

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 52
    .local v10, "minute":I
    const/16 v11, 0xd

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 53
    .local v12, "second":I
    const/16 v13, 0xe

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 56
    .local v13, "millis":I
    const/16 v14, 0x10

    const/16 v15, 0x13

    if-eqz v13, :cond_3

    .line 57
    const-string v19, "0000-00-00T00:00:00.000"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 58
    .local v5, "buf":[C
    const/16 v11, 0x17

    invoke-static {v13, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 59
    invoke-static {v12, v15, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 60
    invoke-static {v10, v14, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 61
    const/16 v11, 0xd

    invoke-static {v9, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 62
    const/16 v11, 0xa

    invoke-static {v8, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 63
    const/4 v11, 0x7

    invoke-static {v7, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 64
    const/4 v11, 0x4

    invoke-static {v6, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_2

    .line 67
    .end local v5    # "buf":[C
    :cond_3
    if-nez v12, :cond_4

    if-nez v10, :cond_4

    if-nez v9, :cond_4

    .line 68
    const-string v5, "0000-00-00"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 69
    .restart local v5    # "buf":[C
    const/16 v11, 0xa

    invoke-static {v8, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 70
    const/4 v11, 0x7

    invoke-static {v7, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 71
    const/4 v11, 0x4

    invoke-static {v6, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_2

    .line 73
    .end local v5    # "buf":[C
    :cond_4
    const-string v5, "0000-00-00T00:00:00"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 74
    .restart local v5    # "buf":[C
    invoke-static {v12, v15, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 75
    invoke-static {v10, v14, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 76
    const/16 v11, 0xd

    invoke-static {v9, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 77
    const/16 v11, 0xa

    invoke-static {v8, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 78
    const/4 v11, 0x7

    invoke-static {v7, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 79
    const/4 v11, 0x4

    invoke-static {v6, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 83
    :goto_2
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 85
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v11

    const v14, 0x36ee80

    div-int/2addr v11, v14

    .line 86
    .local v11, "timeZone":I
    if-nez v11, :cond_5

    .line 87
    const-string v14, "Z"

    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v18, v5

    move/from16 v16, v6

    goto :goto_3

    .line 88
    :cond_5
    const-string v14, ":00"

    const-string v15, "%02d"

    if-lez v11, :cond_6

    .line 89
    const-string v1, "+"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    move-object/from16 v18, v5

    const/4 v5, 0x1

    .end local v5    # "buf":[C
    .local v18, "buf":[C
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v5, v17

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move/from16 v16, v6

    goto :goto_3

    .line 91
    .end local v18    # "buf":[C
    .restart local v5    # "buf":[C
    :cond_6
    move-object/from16 v18, v5

    const/4 v5, 0x1

    const/16 v17, 0x0

    .end local v5    # "buf":[C
    .restart local v18    # "buf":[C
    const-string v1, "-"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    move/from16 v16, v6

    .end local v6    # "year":I
    .local v16, "year":I
    neg-int v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v17

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 94
    :goto_3
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 95
    .end local v4    # "quote":C
    .end local v7    # "month":I
    .end local v8    # "day":I
    .end local v9    # "hour":I
    .end local v10    # "minute":I
    .end local v11    # "timeZone":I
    .end local v12    # "second":I
    .end local v13    # "millis":I
    .end local v16    # "year":I
    .end local v18    # "buf":[C
    goto :goto_4

    .line 96
    :cond_7
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 97
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 99
    .end local v1    # "date":Ljava/util/Date;
    :goto_4
    return-void
.end method
