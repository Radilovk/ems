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
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 23
    return-void
.end method

.method private createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    .local p3, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 163
    .local v2, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    .line 164
    .local v3, "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v0, 0x0

    .line 165
    .local v0, "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v1, v6, v5

    .line 166
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 167
    .local v4, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v8, v4

    if-nez v8, :cond_1

    .line 168
    move-object v2, v1

    .line 165
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 172
    :cond_1
    array-length v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_2

    .line 173
    move-object v3, v1

    .line 174
    goto :goto_1

    .line 177
    :cond_2
    array-length v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-class v9, Ljava/lang/Throwable;

    if-ne v8, v9, :cond_0

    .line 178
    move-object v0, v1

    .line 179
    goto :goto_1

    .line 183
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    if-eqz v0, :cond_4

    .line 184
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    .line 195
    :goto_2
    return-object v5

    .line 187
    :cond_4
    if-eqz v3, :cond_5

    .line 188
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    goto :goto_2

    .line 191
    :cond_5
    if-eqz v2, :cond_6

    .line 192
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    goto :goto_2

    .line 195
    :cond_6
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
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

    .prologue
    .line 27
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    .line 29
    .local v16, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 30
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 31
    const/4 v8, 0x0

    .line 158
    :cond_0
    return-object v8

    .line 34
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 35
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 42
    :cond_2
    const/4 v4, 0x0

    .line 43
    .local v4, "cause":Ljava/lang/Throwable;
    const/4 v11, 0x0

    .line 45
    .local v11, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v5, p2

    .line 46
    check-cast v5, Ljava/lang/Class;

    .line 47
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v21, Ljava/lang/Throwable;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 48
    move-object v11, v5

    .line 52
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/16 v17, 0x0

    .line 53
    .local v17, "message":Ljava/lang/String;
    const/16 v19, 0x0

    .line 54
    .local v19, "stackTrace":[Ljava/lang/StackTraceElement;
    const/16 v18, 0x0

    .line 59
    .local v18, "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, "key":Ljava/lang/String;
    if-nez v15, :cond_b

    .line 62
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v21

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 63
    const/16 v21, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 109
    :goto_0
    const/4 v8, 0x0

    .line 110
    .local v8, "ex":Ljava/lang/Throwable;
    if-nez v11, :cond_14

    .line 111
    new-instance v8, Ljava/lang/Exception;

    .end local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    invoke-direct {v8, v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .restart local v8    # "ex":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    if-eqz v19, :cond_6

    .line 128
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 131
    :cond_6
    if-eqz v18, :cond_0

    .line 132
    const/4 v10, 0x0

    .line 134
    .local v10, "exBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v11, :cond_7

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-ne v11, v0, :cond_16

    .line 136
    move-object/from16 v10, p0

    .line 145
    :cond_7
    :goto_2
    if-eqz v10, :cond_0

    .line 146
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_8
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 147
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "key":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 148
    .restart local v15    # "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    .line 150
    .local v20, "value":Ljava/lang/Object;
    invoke-virtual {v10, v15}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v14

    .line 151
    .local v14, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v14, :cond_8

    .line 152
    move-object/from16 v0, v20

    invoke-virtual {v14, v8, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 37
    .end local v4    # "cause":Ljava/lang/Throwable;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "ex":Ljava/lang/Throwable;
    .end local v10    # "exBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v11    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "message":Ljava/lang/String;
    .end local v18    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v20    # "value":Ljava/lang/Object;
    :cond_9
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v21

    const/16 v22, 0xc

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 38
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string v22, "syntax error"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 66
    .restart local v4    # "cause":Ljava/lang/Throwable;
    .restart local v11    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v17    # "message":Ljava/lang/String;
    .restart local v18    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_a
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v21

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 67
    sget-object v21, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 73
    :cond_b
    const/16 v21, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 75
    sget-object v21, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 76
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 77
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, "exClassName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v21

    const-class v22, Ljava/lang/Throwable;

    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v11

    .line 82
    const/16 v21, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 103
    .end local v12    # "exClassName":Ljava/lang/String;
    :goto_4
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v21

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 104
    const/16 v21, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0

    .line 80
    :cond_c
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string v22, "syntax error"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 83
    :cond_d
    const-string v21, "message"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 84
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 85
    const/16 v17, 0x0

    .line 91
    :goto_5
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_4

    .line 86
    :cond_e
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 87
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 89
    :cond_f
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string v22, "syntax error"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 92
    :cond_10
    const-string v21, "cause"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 93
    const/16 v21, 0x0

    const-string v22, "cause"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cause":Ljava/lang/Throwable;
    check-cast v4, Ljava/lang/Throwable;

    .restart local v4    # "cause":Ljava/lang/Throwable;
    goto :goto_4

    .line 94
    :cond_11
    const-string v21, "stackTrace"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 95
    const-class v21, [Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    check-cast v19, [Ljava/lang/StackTraceElement;

    .restart local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    goto/16 :goto_4

    .line 97
    :cond_12
    if-nez v18, :cond_13

    .line 98
    new-instance v18, Ljava/util/HashMap;

    .end local v18    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 100
    .restart local v18    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 113
    .restart local v8    # "ex":Ljava/lang/Throwable;
    :cond_14
    const-class v21, Ljava/lang/Throwable;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_15

    .line 114
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "type not match, not Throwable. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 118
    :cond_15
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4, v11}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v8

    .line 119
    if-nez v8, :cond_5

    .line 120
    new-instance v9, Ljava/lang/Exception;

    move-object/from16 v0, v17

    invoke-direct {v9, v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "ex":Ljava/lang/Throwable;
    .local v9, "ex":Ljava/lang/Throwable;
    move-object v8, v9

    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_1

    .line 122
    :catch_0
    move-exception v6

    .line 123
    .local v6, "e":Ljava/lang/Exception;
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string v22, "create instance error"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 138
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "exBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v13

    .line 139
    .local v13, "exDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v0, v13, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    move-object v10, v13

    .line 140
    check-cast v10, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto/16 :goto_2
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0xc

    return v0
.end method
