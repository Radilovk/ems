.class public Lcom/alibaba/fastjson/serializer/MiscCodec;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static FILE_RELATIVE_PATH_SUPPORT:Z

.field public static final instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

.field private static method_paths_get:Ljava/lang/reflect/Method;

.field private static method_paths_get_error:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    .line 50
    new-instance v0, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    .line 52
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    .line 55
    const-string/jumbo v0, "true"

    const-string v1, "fastjson.deserializer.fileRelativePathSupport"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
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
    .line 176
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 178
    .local v10, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const-class v17, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 179
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 180
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 181
    const/4 v5, 0x0

    .line 362
    :goto_0
    return-object v5

    .line 184
    :cond_0
    const/16 v17, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 186
    const/4 v2, 0x0

    .line 187
    .local v2, "address":Ljava/net/InetAddress;
    const/4 v14, 0x0

    .line 189
    .local v14, "port":I
    :goto_1
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "key":Ljava/lang/String;
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 192
    const-string v17, "address"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 193
    const/16 v17, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 194
    const-class v17, Ljava/net/InetAddress;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "address":Ljava/net/InetAddress;
    check-cast v2, Ljava/net/InetAddress;

    .line 207
    .restart local v2    # "address":Ljava/net/InetAddress;
    :goto_2
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 208
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    .line 195
    :cond_1
    const-string v17, "port"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 196
    const/16 v17, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 197
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 198
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "port is not int"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 200
    :cond_2
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v14

    .line 201
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2

    .line 203
    :cond_3
    const/16 v17, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    goto :goto_2

    .line 215
    :cond_4
    const/16 v17, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 217
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v2, v14}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto/16 :goto_0

    .line 222
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v9    # "key":Ljava/lang/String;
    .end local v14    # "port":I
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 223
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 224
    const/16 v17, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 226
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 227
    const-string/jumbo v17, "val"

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 228
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "syntax error"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 230
    :cond_6
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 235
    const/16 v17, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v11

    .line 239
    .local v11, "objVal":Ljava/lang/Object;
    const/16 v17, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 246
    :goto_3
    if-nez v11, :cond_a

    .line 247
    const/4 v15, 0x0

    .line 275
    .local v15, "strVal":Ljava/lang/String;
    :goto_4
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_10

    .line 276
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 232
    .end local v11    # "objVal":Ljava/lang/Object;
    .end local v15    # "strVal":Ljava/lang/String;
    :cond_8
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "syntax error"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 241
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "objVal":Ljava/lang/Object;
    goto :goto_3

    .line 248
    :cond_a
    instance-of v0, v11, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object v15, v11

    .line 249
    check-cast v15, Ljava/lang/String;

    .restart local v15    # "strVal":Ljava/lang/String;
    goto :goto_4

    .line 251
    .end local v15    # "strVal":Ljava/lang/String;
    :cond_b
    instance-of v0, v11, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v17, v0

    if-eqz v17, :cond_f

    move-object v8, v11

    .line 252
    check-cast v8, Lcom/alibaba/fastjson/JSONObject;

    .line 254
    .local v8, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-class v17, Ljava/util/Currency;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 255
    const-string v17, "currency"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "currency":Ljava/lang/String;
    if-eqz v4, :cond_c

    .line 257
    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    goto/16 :goto_0

    .line 260
    :cond_c
    const-string v17, "currencyCode"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 261
    .local v16, "symbol":Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 262
    invoke-static/range {v16 .. v16}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    goto/16 :goto_0

    .line 266
    .end local v4    # "currency":Ljava/lang/String;
    .end local v16    # "symbol":Ljava/lang/String;
    :cond_d
    const-class v17, Ljava/util/Map$Entry;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 267
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 270
    :cond_e
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 272
    .end local v8    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_f
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "expect string"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 279
    .restart local v15    # "strVal":Ljava/lang/String;
    :cond_10
    const-class v17, Ljava/util/UUID;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 280
    invoke-static {v15}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    goto/16 :goto_0

    .line 283
    :cond_11
    const-class v17, Ljava/net/URI;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 284
    invoke-static {v15}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    goto/16 :goto_0

    .line 287
    :cond_12
    const-class v17, Ljava/net/URL;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 289
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 290
    :catch_0
    move-exception v6

    .line 291
    .local v6, "e":Ljava/net/MalformedURLException;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "create url error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 295
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :cond_13
    const-class v17, Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 296
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    goto/16 :goto_0

    .line 299
    :cond_14
    const-class v17, Ljava/util/Locale;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 300
    invoke-static {v15}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    goto/16 :goto_0

    .line 303
    :cond_15
    const-class v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 304
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 305
    .local v5, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_0

    .line 309
    .end local v5    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_16
    const-class v17, Ljava/net/InetAddress;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_17

    const-class v17, Ljava/net/Inet4Address;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_17

    const-class v17, Ljava/net/Inet6Address;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 311
    :cond_17
    :try_start_1
    invoke-static {v15}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto/16 :goto_0

    .line 312
    :catch_1
    move-exception v6

    .line 313
    .local v6, "e":Ljava/net/UnknownHostException;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "deserialize inet adress error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 317
    .end local v6    # "e":Ljava/net/UnknownHostException;
    :cond_18
    const-class v17, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1a

    .line 318
    const-string v17, ".."

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-ltz v17, :cond_19

    sget-boolean v17, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    if-nez v17, :cond_19

    .line 319
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "file relative path not support."

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 322
    :cond_19
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :cond_1a
    const-class v17, Ljava/util/TimeZone;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1b

    .line 326
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    goto/16 :goto_0

    .line 329
    :cond_1b
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    move-object/from16 v12, p2

    .line 330
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .line 331
    .local v12, "parmeterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 334
    .end local v12    # "parmeterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_1c
    const-class v17, Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1d

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    goto/16 :goto_0

    .line 338
    :cond_1d
    const-class v17, Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1e

    .line 339
    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    goto/16 :goto_0

    .line 342
    :cond_1e
    const-class v17, Ljava/util/Currency;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1f

    .line 343
    invoke-static {v15}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    goto/16 :goto_0

    .line 346
    :cond_1f
    const-class v17, Lcom/alibaba/fastjson/JSONPath;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_20

    .line 347
    new-instance v5, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v5, v15}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    :cond_20
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v17, v0

    if-eqz v17, :cond_24

    move-object/from16 v17, p2

    .line 353
    check-cast v17, Ljava/lang/Class;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "className":Ljava/lang/String;
    const-string v17, "java.nio.file.Path"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 357
    :try_start_2
    sget-object v17, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-nez v17, :cond_21

    sget-boolean v17, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    if-nez v17, :cond_21

    .line 358
    const-string v17, "java.nio.file.Paths"

    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 359
    .local v13, "paths":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v17, "get"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-class v20, [Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    sput-object v17, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    .line 361
    .end local v13    # "paths":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_21
    sget-object v17, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-eqz v17, :cond_22

    .line 362
    sget-object v17, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 365
    :cond_22
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "Path deserialize erorr"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    .line 366
    :catch_2
    move-exception v7

    .line 367
    .local v7, "ex":Ljava/lang/NoSuchMethodException;
    const/16 v17, 0x1

    sput-boolean v17, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    .line 375
    .end local v7    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_23
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MiscCodec not support "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 368
    :catch_3
    move-exception v7

    .line 369
    .local v7, "ex":Ljava/lang/IllegalAccessException;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "Path deserialize erorr"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 370
    .end local v7    # "ex":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v7

    .line 371
    .local v7, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "Path deserialize erorr"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 378
    .end local v3    # "className":Ljava/lang/String;
    .end local v7    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_24
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MiscCodec not support "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 21
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
    .line 60
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 62
    .local v13, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 63
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 157
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 67
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 70
    .local v10, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v18, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v18

    if-ne v10, v0, :cond_2

    move-object/from16 v18, p2

    .line 71
    check-cast v18, Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v18 .. v18}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v14

    .line 73
    .local v14, "pattern":Ljava/lang/String;
    sget-object v18, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 74
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_1

    .line 75
    const/16 v18, 0x7b

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 76
    sget-object v18, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 78
    const/16 v18, 0x2c

    const-string/jumbo v19, "val"

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 79
    const/16 v18, 0x7d

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 84
    :cond_1
    move-object v15, v14

    .line 156
    .end local v14    # "pattern":Ljava/lang/String;
    .end local p2    # "object":Ljava/lang/Object;
    .local v15, "strVal":Ljava/lang/String;
    :goto_1
    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v15    # "strVal":Ljava/lang/String;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_2
    const-class v18, Ljava/lang/Class;

    move-object/from16 v0, v18

    if-ne v10, v0, :cond_3

    move-object/from16 v4, p2

    .line 86
    check-cast v4, Ljava/lang/Class;

    .line 87
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 88
    .restart local v15    # "strVal":Ljava/lang/String;
    goto :goto_1

    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "strVal":Ljava/lang/String;
    :cond_3
    const-class v18, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v18

    if-ne v10, v0, :cond_5

    move-object/from16 v2, p2

    .line 89
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 91
    .local v2, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 93
    .local v7, "inetAddress":Ljava/net/InetAddress;
    const/16 v18, 0x7b

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 94
    if-eqz v7, :cond_4

    .line 95
    const-string v18, "address"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 97
    const/16 v18, 0x2c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 99
    :cond_4
    const-string v18, "port"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 101
    const/16 v18, 0x7d

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 103
    .end local v2    # "address":Ljava/net/InetSocketAddress;
    .end local v7    # "inetAddress":Ljava/net/InetAddress;
    :cond_5
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/io/File;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 104
    check-cast p2, Ljava/io/File;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "strVal":Ljava/lang/String;
    goto :goto_1

    .line 105
    .end local v15    # "strVal":Ljava/lang/String;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/net/InetAddress;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 106
    check-cast p2, Ljava/net/InetAddress;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "strVal":Ljava/lang/String;
    goto :goto_1

    .line 107
    .end local v15    # "strVal":Ljava/lang/String;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/TimeZone;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v16, p2

    .line 108
    check-cast v16, Ljava/util/TimeZone;

    .line 109
    .local v16, "timeZone":Ljava/util/TimeZone;
    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v15

    .line 110
    .restart local v15    # "strVal":Ljava/lang/String;
    goto/16 :goto_1

    .end local v15    # "strVal":Ljava/lang/String;
    .end local v16    # "timeZone":Ljava/util/TimeZone;
    :cond_8
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Currency;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v5, p2

    .line 111
    check-cast v5, Ljava/util/Currency;

    .line 112
    .local v5, "currency":Ljava/util/Currency;
    invoke-virtual {v5}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v15

    .line 113
    .restart local v15    # "strVal":Ljava/lang/String;
    goto/16 :goto_1

    .end local v5    # "currency":Ljava/util/Currency;
    .end local v15    # "strVal":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONStreamAware;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v3, p2

    .line 114
    check-cast v3, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 115
    .local v3, "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    invoke-interface {v3, v13}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    goto/16 :goto_0

    .line 117
    .end local v3    # "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    :cond_a
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Iterator;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v8, p2

    .line 118
    check-cast v8, Ljava/util/Iterator;

    .line 119
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v8}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    goto/16 :goto_0

    .line 121
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_b
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 122
    check-cast p2, Ljava/lang/Iterable;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 123
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v8}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    goto/16 :goto_0

    .line 125
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Map$Entry;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v6, p2

    .line 126
    check-cast v6, Ljava/util/Map$Entry;

    .line 127
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 128
    .local v11, "objKey":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 130
    .local v12, "objVal":Ljava/lang/Object;
    instance-of v0, v11, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_e

    move-object v9, v11

    .line 131
    check-cast v9, Ljava/lang/String;

    .line 133
    .local v9, "key":Ljava/lang/String;
    instance-of v0, v12, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v17, v12

    .line 134
    check-cast v17, Ljava/lang/String;

    .line 135
    .local v17, "value":Ljava/lang/String;
    const/16 v18, 0x7b

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v9    # "key":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :goto_2
    const/16 v18, 0x7d

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 137
    .restart local v9    # "key":Ljava/lang/String;
    :cond_d
    const/16 v18, 0x7b

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 138
    invoke-virtual {v13, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_2

    .line 142
    .end local v9    # "key":Ljava/lang/String;
    :cond_e
    const/16 v18, 0x7b

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 143
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 144
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 145
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_2

    .line 149
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "objKey":Ljava/lang/Object;
    .end local v12    # "objVal":Ljava/lang/Object;
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "net.sf.json.JSONNull"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 150
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_0

    .line 153
    :cond_10
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "not support class : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18
.end method

.method protected writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/JSONSerializer;",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/util/Iterator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 161
    .local v0, "i":I
    const/16 v2, 0x5b

    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 162
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    if-eqz v0, :cond_0

    .line 164
    const/16 v2, 0x2c

    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 166
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 169
    goto :goto_0

    .line 170
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 171
    return-void
.end method
