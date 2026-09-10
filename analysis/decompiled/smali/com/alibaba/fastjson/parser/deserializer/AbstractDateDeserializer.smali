.class public abstract Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "AbstractDateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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

    .prologue
    .line 15
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 22
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "features"    # I
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
    .line 21
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 24
    .local v10, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 25
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 26
    .local v18, "val":Ljava/lang/Long;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-interface {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 138
    .end local v18    # "val":Ljava/lang/Long;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    return-object v19

    .line 27
    :cond_1
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 28
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v13

    .line 30
    .local v13, "strVal":Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 31
    const/4 v11, 0x0

    .line 33
    .local v11, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v12, Ljava/text/SimpleDateFormat;

    sget-object v19, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .local v12, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    move-object v11, v12

    .line 45
    .end local v12    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v11    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v11, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 64
    .end local v11    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_2
    if-nez v18, :cond_0

    .line 65
    move-object/from16 v18, v13

    .line 66
    .local v18, "val":Ljava/lang/String;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-interface {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 68
    sget-object v19, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 69
    new-instance v8, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v8, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 70
    .local v8, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 71
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    .line 73
    .end local v18    # "val":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    .line 34
    .end local v8    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .restart local v11    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v6

    .line 35
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v19, "yyyy-MM-ddTHH:mm:ss.SSS"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 36
    const-string/jumbo p4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    .line 37
    new-instance v11, Ljava/text/SimpleDateFormat;

    .end local v11    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v11    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_1

    .line 38
    :cond_4
    const-string/jumbo v19, "yyyy-MM-ddTHH:mm:ss"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 39
    const-string/jumbo p4, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 40
    new-instance v11, Ljava/text/SimpleDateFormat;

    .end local v11    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v11    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_1

    .line 46
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 47
    .local v6, "ex":Ljava/text/ParseException;
    const-string/jumbo v19, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 48
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x13

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 50
    :try_start_2
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v18

    .local v18, "val":Ljava/util/Date;
    goto/16 :goto_2

    .line 51
    .end local v18    # "val":Ljava/util/Date;
    :catch_2
    move-exception v7

    .line 53
    .local v7, "ex2":Ljava/text/ParseException;
    const/16 v18, 0x0

    .line 54
    .local v18, "val":Ljava/lang/Object;
    goto/16 :goto_2

    .line 57
    .end local v7    # "ex2":Ljava/text/ParseException;
    .end local v18    # "val":Ljava/lang/Object;
    :cond_5
    const/16 v18, 0x0

    .restart local v18    # "val":Ljava/lang/Object;
    goto/16 :goto_2

    .line 61
    .end local v6    # "ex":Ljava/text/ParseException;
    .end local v11    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v18    # "val":Ljava/lang/Object;
    :cond_6
    const/16 v18, 0x0

    .restart local v18    # "val":Ljava/lang/Object;
    goto/16 :goto_2

    .line 76
    .end local v13    # "strVal":Ljava/lang/String;
    .end local v18    # "val":Ljava/lang/Object;
    :cond_7
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 77
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 78
    const/16 v18, 0x0

    .restart local v18    # "val":Ljava/lang/Object;
    goto/16 :goto_0

    .line 79
    .end local v18    # "val":Ljava/lang/Object;
    :cond_8
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v19

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 80
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 83
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 84
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "key":Ljava/lang/String;
    sget-object v19, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 87
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 88
    const/16 v19, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 90
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v17

    .line 91
    .local v17, "typeName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v21

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v16

    .line 92
    .local v16, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v16, :cond_9

    .line 93
    move-object/from16 p2, v16

    .line 96
    :cond_9
    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 97
    const/16 v19, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 100
    .end local v16    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "typeName":Ljava/lang/String;
    :cond_a
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-interface {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 106
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 107
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v14

    .line 108
    .local v14, "timeMillis":J
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 113
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 115
    .local v18, "val":Ljava/lang/Long;
    const/16 v19, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 102
    .end local v9    # "key":Ljava/lang/String;
    .end local v14    # "timeMillis":J
    .end local v18    # "val":Ljava/lang/Long;
    :cond_b
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    const-string v20, "syntax error"

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 110
    .restart local v9    # "key":Ljava/lang/String;
    :cond_c
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "syntax error : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 116
    .end local v9    # "key":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 117
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 118
    const/16 v19, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 120
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 121
    const-string/jumbo v19, "val"

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 122
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    const-string v20, "syntax error"

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 124
    :cond_e
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 129
    const/16 v19, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v18

    .line 133
    .local v18, "val":Ljava/lang/Object;
    const/16 v19, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 126
    .end local v18    # "val":Ljava/lang/Object;
    :cond_f
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    const-string v20, "syntax error"

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 135
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "val":Ljava/lang/Object;
    goto/16 :goto_0
.end method
