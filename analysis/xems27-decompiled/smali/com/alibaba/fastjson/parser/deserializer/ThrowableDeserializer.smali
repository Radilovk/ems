.class public Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 22
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 23
    return-void
.end method

.method private createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    .local p3, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 163
    .local v0, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x0

    .line 164
    .local v1, "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    .line 165
    .local v2, "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v4, :cond_3

    aget-object v9, v3, v6

    .line 166
    .local v9, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 167
    .local v10, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v11, v10

    if-nez v11, :cond_0

    .line 168
    move-object v0, v9

    .line 169
    goto :goto_1

    .line 172
    :cond_0
    array-length v11, v10

    if-ne v11, v8, :cond_1

    aget-object v11, v10, v5

    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_1

    .line 173
    move-object v1, v9

    .line 174
    goto :goto_1

    .line 177
    :cond_1
    array-length v11, v10

    if-ne v11, v7, :cond_2

    aget-object v7, v10, v5

    const-class v11, Ljava/lang/String;

    if-ne v7, v11, :cond_2

    aget-object v7, v10, v8

    const-class v8, Ljava/lang/Throwable;

    if-ne v7, v8, :cond_2

    .line 178
    move-object v2, v9

    .line 165
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 183
    :cond_3
    if-eqz v2, :cond_4

    .line 184
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    return-object v3

    .line 187
    :cond_4
    if-eqz v1, :cond_5

    .line 188
    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    return-object v3

    .line 191
    :cond_5
    if-eqz v0, :cond_6

    .line 192
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    return-object v3

    .line 195
    :cond_6
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
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

    .line 27
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 29
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_0

    .line 30
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 31
    return-object v5

    .line 34
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v0

    const/4 v7, 0x2

    const-string v8, "syntax error"

    if-ne v0, v7, :cond_1

    .line 35
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v7, 0xc

    if-ne v0, v7, :cond_16

    .line 42
    :goto_0
    const/4 v0, 0x0

    .line 43
    .local v0, "cause":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 45
    .local v7, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_2

    instance-of v9, v3, Ljava/lang/Class;

    if-eqz v9, :cond_2

    .line 46
    move-object v9, v3

    check-cast v9, Ljava/lang/Class;

    .line 47
    .local v9, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Ljava/lang/Throwable;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 48
    move-object v7, v9

    .line 52
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v9, 0x0

    .line 53
    .local v9, "message":Ljava/lang/String;
    const/4 v10, 0x0

    .line 54
    .local v10, "stackTrace":[Ljava/lang/StackTraceElement;
    const/4 v11, 0x0

    .line 59
    .local v11, "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v12

    invoke-interface {v4, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, "key":Ljava/lang/String;
    const/16 v13, 0xd

    const/16 v14, 0x10

    if-nez v12, :cond_4

    .line 62
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    if-ne v15, v13, :cond_3

    .line 63
    invoke-interface {v4, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 64
    move-object v5, v0

    goto/16 :goto_4

    .line 66
    :cond_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    if-ne v15, v14, :cond_4

    .line 67
    sget-object v15, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 68
    goto :goto_1

    .line 73
    :cond_4
    const/4 v15, 0x4

    invoke-interface {v4, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 75
    sget-object v13, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 76
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    if-ne v13, v15, :cond_5

    .line 77
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, "exClassName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v15

    const-class v5, Ljava/lang/Throwable;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v6

    invoke-virtual {v15, v13, v5, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v5

    .line 79
    .end local v7    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "exClassName":Ljava/lang/String;
    .local v5, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 82
    invoke-interface {v4, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v7, v5

    const/16 v6, 0x8

    const/4 v13, 0x0

    goto :goto_3

    .line 80
    .end local v5    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v5, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    :cond_6
    const-string v5, "message"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 84
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7

    .line 85
    const/4 v5, 0x0

    .end local v9    # "message":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    goto :goto_2

    .line 86
    .end local v5    # "message":Ljava/lang/String;
    .restart local v9    # "message":Ljava/lang/String;
    :cond_7
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v15, :cond_8

    .line 87
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 91
    .end local v9    # "message":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/String;
    :goto_2
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v9, v5

    const/4 v13, 0x0

    goto :goto_3

    .line 89
    .end local v5    # "message":Ljava/lang/String;
    .restart local v9    # "message":Ljava/lang/String;
    :cond_8
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v5, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_9
    const/16 v6, 0x8

    const-string v5, "cause"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 93
    const/4 v13, 0x0

    invoke-virtual {v1, v2, v13, v5}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_3

    .line 94
    :cond_a
    const/4 v13, 0x0

    const-string v5, "stackTrace"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 95
    const-class v5, [Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/StackTraceElement;

    move-object v10, v5

    .end local v10    # "stackTrace":[Ljava/lang/StackTraceElement;
    .local v5, "stackTrace":[Ljava/lang/StackTraceElement;
    goto :goto_3

    .line 97
    .end local v5    # "stackTrace":[Ljava/lang/StackTraceElement;
    .restart local v10    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_b
    if-nez v11, :cond_c

    .line 98
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v11, v5

    .line 100
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v15, 0xd

    if-ne v5, v15, :cond_15

    .line 104
    invoke-interface {v4, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 105
    move-object v5, v0

    .line 109
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v12    # "key":Ljava/lang/String;
    .local v5, "cause":Ljava/lang/Throwable;
    :goto_4
    const/4 v6, 0x0

    .line 110
    .local v6, "ex":Ljava/lang/Throwable;
    if-nez v7, :cond_d

    .line 111
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v9, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "ex":Ljava/lang/Throwable;
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_6

    .line 113
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "ex":Ljava/lang/Throwable;
    :cond_d
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 118
    :try_start_0
    invoke-direct {v1, v9, v5, v7}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v0

    move-object v6, v0

    .line 119
    if-nez v6, :cond_e

    .line 120
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v9, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_5

    .line 119
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "ex":Ljava/lang/Throwable;
    :cond_e
    move-object v0, v6

    .line 124
    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :goto_5
    nop

    .line 127
    :goto_6
    if-eqz v10, :cond_f

    .line 128
    invoke-virtual {v0, v10}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 131
    :cond_f
    if-eqz v11, :cond_13

    .line 132
    const/4 v6, 0x0

    .line 134
    .local v6, "exBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v7, :cond_11

    .line 135
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->clazz:Ljava/lang/Class;

    if-ne v7, v8, :cond_10

    .line 136
    move-object/from16 v6, p0

    goto :goto_7

    .line 138
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v8

    .line 139
    .local v8, "exDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v12, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v12, :cond_11

    .line 140
    move-object v6, v8

    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 145
    .end local v8    # "exDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_11
    :goto_7
    if-eqz v6, :cond_13

    .line 146
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 147
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 148
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 150
    .local v14, "value":Ljava/lang/Object;
    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v15

    .line 151
    .local v15, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v15, :cond_12

    .line 152
    invoke-virtual {v15, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/Object;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_12
    goto :goto_8

    .line 158
    .end local v6    # "exBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_13
    return-object v0

    .line 122
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v6, "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "create instance error"

    invoke-direct {v8, v12, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type not match, not Throwable. "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    .end local v5    # "cause":Ljava/lang/Throwable;
    .end local v6    # "ex":Ljava/lang/Throwable;
    .local v0, "cause":Ljava/lang/Throwable;
    :cond_15
    move-object v5, v13

    goto/16 :goto_1

    .line 38
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v7    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v11    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_16
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 199
    const/16 v0, 0xc

    return v0
.end method
