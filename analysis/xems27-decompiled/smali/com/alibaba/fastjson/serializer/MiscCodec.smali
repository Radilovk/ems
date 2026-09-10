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

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    .line 50
    new-instance v1, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    .line 52
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    .line 55
    const-string v0, "fastjson.deserializer.fileRelativePathSupport"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
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

    .line 176
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Path deserialize erorr"

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 178
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const-class v0, Ljava/net/InetSocketAddress;

    const/16 v5, 0xd

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x11

    if-ne v2, v0, :cond_5

    .line 179
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 180
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 181
    return-object v7

    .line 184
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "address":Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 189
    .local v3, "port":I
    :goto_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 192
    const-string v10, "address"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 193
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 194
    const-class v10, Ljava/net/InetAddress;

    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/InetAddress;

    goto :goto_1

    .line 195
    :cond_1
    const-string v10, "port"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 196
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 197
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v8, :cond_2

    .line 200
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    .line 201
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    .line 198
    :cond_2
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "port is not int"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_3
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 207
    :goto_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v6, :cond_4

    .line 208
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 209
    goto :goto_0

    .line 215
    .end local v7    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 217
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v5

    .line 222
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v3    # "port":I
    :cond_5
    iget v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v10, 0x0

    if-ne v0, v8, :cond_8

    .line 223
    iput v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 224
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 226
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v6, 0x4

    const-string v11, "syntax error"

    if-ne v0, v6, :cond_7

    .line 227
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v6, "val"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 230
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 235
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 239
    .local v0, "objVal":Ljava/lang/Object;
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    move-object v5, v0

    goto :goto_2

    .line 228
    .end local v0    # "objVal":Ljava/lang/Object;
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    .line 246
    .local v5, "objVal":Ljava/lang/Object;
    :goto_2
    if-nez v5, :cond_9

    .line 247
    const/4 v0, 0x0

    move-object v6, v0

    .local v0, "strVal":Ljava/lang/String;
    goto :goto_3

    .line 248
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_9
    instance-of v0, v5, Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 249
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 275
    .local v6, "strVal":Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_20

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_6

    .line 279
    :cond_a
    const-class v0, Ljava/util/UUID;

    if-ne v2, v0, :cond_b

    .line 280
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0

    .line 283
    :cond_b
    const-class v0, Ljava/net/URI;

    if-ne v2, v0, :cond_c

    .line 284
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 287
    :cond_c
    const-class v0, Ljava/net/URL;

    if-ne v2, v0, :cond_d

    .line 289
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "create url error"

    invoke-direct {v3, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 295
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_d
    const-class v0, Ljava/util/regex/Pattern;

    if-ne v2, v0, :cond_e

    .line 296
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0

    .line 299
    :cond_e
    const-class v0, Ljava/util/Locale;

    if-ne v2, v0, :cond_f

    .line 300
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 303
    :cond_f
    const-class v0, Ljava/text/SimpleDateFormat;

    if-ne v2, v0, :cond_10

    .line 304
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v6, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 305
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 306
    return-object v0

    .line 309
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_10
    const-class v0, Ljava/net/InetAddress;

    if-eq v2, v0, :cond_1f

    const-class v0, Ljava/net/Inet4Address;

    if-eq v2, v0, :cond_1f

    const-class v0, Ljava/net/Inet6Address;

    if-ne v2, v0, :cond_11

    goto/16 :goto_5

    .line 317
    :cond_11
    const-class v0, Ljava/io/File;

    if-ne v2, v0, :cond_14

    .line 318
    const-string v0, ".."

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    sget-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    if-eqz v0, :cond_12

    goto :goto_4

    .line 319
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "file relative path not support."

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_13
    :goto_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 325
    :cond_14
    const-class v0, Ljava/util/TimeZone;

    if-ne v2, v0, :cond_15

    .line 326
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 329
    :cond_15
    instance-of v0, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_16

    .line 330
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 331
    .local v0, "parmeterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 334
    .end local v0    # "parmeterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local p2    # "clazz":Ljava/lang/reflect/Type;
    .local v2, "clazz":Ljava/lang/reflect/Type;
    :cond_16
    const-class v0, Ljava/lang/Class;

    if-ne v2, v0, :cond_17

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 338
    :cond_17
    const-class v0, Ljava/nio/charset/Charset;

    if-ne v2, v0, :cond_18

    .line 339
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    .line 342
    :cond_18
    const-class v0, Ljava/util/Currency;

    if-ne v2, v0, :cond_19

    .line 343
    invoke-static {v6}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0

    .line 346
    :cond_19
    const-class v0, Lcom/alibaba/fastjson/JSONPath;

    if-ne v2, v0, :cond_1a

    .line 347
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 352
    :cond_1a
    instance-of v0, v2, Ljava/lang/Class;

    const-string v9, "MiscCodec not support "

    if-eqz v0, :cond_1e

    .line 353
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 355
    .local v11, "className":Ljava/lang/String;
    const-string v0, "java.nio.file.Path"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 357
    const/4 v12, 0x1

    :try_start_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    if-nez v0, :cond_1b

    .line 358
    const-string v0, "java.nio.file.Paths"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 359
    .local v0, "paths":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v13, "get"

    new-array v14, v8, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v10

    const-class v15, [Ljava/lang/String;

    aput-object v15, v14, v12

    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    sput-object v13, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    .line 361
    .end local v0    # "paths":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    .line 362
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v10

    new-array v10, v10, [Ljava/lang/String;

    aput-object v10, v8, v12

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 365
    :cond_1c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v2    # "clazz":Ljava/lang/reflect/Type;
    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v5    # "objVal":Ljava/lang/Object;
    .end local v6    # "strVal":Ljava/lang/String;
    .end local v11    # "className":Ljava/lang/String;
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    .restart local v2    # "clazz":Ljava/lang/reflect/Type;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v5    # "objVal":Ljava/lang/Object;
    .restart local v6    # "strVal":Ljava/lang/String;
    .restart local v11    # "className":Ljava/lang/String;
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 371
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v7, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 368
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 369
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v7, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 366
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 367
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    sput-boolean v12, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    .line 375
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_1d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    .end local v11    # "className":Ljava/lang/String;
    :cond_1e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    .end local v2    # "clazz":Ljava/lang/reflect/Type;
    .restart local p2    # "clazz":Ljava/lang/reflect/Type;
    :cond_1f
    :goto_5
    :try_start_2
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4

    return-object v0

    .line 312
    :catch_4
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 313
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "deserialize inet adress error"

    invoke-direct {v3, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 276
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_20
    :goto_6
    return-object v7

    .line 251
    .end local v6    # "strVal":Ljava/lang/String;
    :cond_21
    instance-of v0, v5, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_25

    .line 252
    move-object v0, v5

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 254
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-class v3, Ljava/util/Currency;

    if-ne v2, v3, :cond_23

    .line 255
    const-string v3, "currency"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "currency":Ljava/lang/String;
    if-eqz v3, :cond_22

    .line 257
    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v6

    return-object v6

    .line 260
    :cond_22
    const-string v6, "currencyCode"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "symbol":Ljava/lang/String;
    if-eqz v6, :cond_23

    .line 262
    invoke-static {v6}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v7

    return-object v7

    .line 266
    .end local v3    # "currency":Ljava/lang/String;
    .end local v6    # "symbol":Ljava/lang/String;
    :cond_23
    const-class v3, Ljava/util/Map$Entry;

    if-ne v2, v3, :cond_24

    .line 267
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 270
    :cond_24
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 272
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_25
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "expect string"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 382
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 9
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

    .line 60
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 62
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 70
    .local v1, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/text/SimpleDateFormat;

    const/16 v3, 0x2c

    const/16 v4, 0x7d

    const/16 v5, 0x7b

    if-ne v1, v2, :cond_2

    .line 71
    move-object v2, p2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "pattern":Ljava/lang/String;
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v6, p4, :cond_1

    .line 75
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 76
    sget-object v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 78
    const-string v5, "val"

    invoke-virtual {v0, v3, v5, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 80
    return-void

    .line 84
    :cond_1
    nop

    .line 85
    .local v2, "strVal":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "strVal":Ljava/lang/String;
    :cond_2
    const-class v2, Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    .line 86
    move-object v2, p2

    check-cast v2, Ljava/lang/Class;

    .line 87
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "strVal":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "strVal":Ljava/lang/String;
    :cond_3
    const-class v2, Ljava/net/InetSocketAddress;

    if-ne v1, v2, :cond_5

    .line 89
    move-object v2, p2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 91
    .local v2, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 93
    .local v6, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 94
    if-eqz v6, :cond_4

    .line 95
    const-string v5, "address"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 99
    :cond_4
    const-string v3, "port"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 101
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 102
    return-void

    .line 103
    .end local v2    # "address":Ljava/net/InetSocketAddress;
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    :cond_5
    instance-of v2, p2, Ljava/io/File;

    if-eqz v2, :cond_6

    .line 104
    move-object v2, p2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, "strVal":Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_6
    instance-of v2, p2, Ljava/net/InetAddress;

    if-eqz v2, :cond_7

    .line 106
    move-object v2, p2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "strVal":Ljava/lang/String;
    goto :goto_0

    .line 107
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_7
    instance-of v2, p2, Ljava/util/TimeZone;

    if-eqz v2, :cond_8

    .line 108
    move-object v2, p2

    check-cast v2, Ljava/util/TimeZone;

    .line 109
    .local v2, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "strVal":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "strVal":Ljava/lang/String;
    :cond_8
    instance-of v2, p2, Ljava/util/Currency;

    if-eqz v2, :cond_9

    .line 111
    move-object v2, p2

    check-cast v2, Ljava/util/Currency;

    .line 112
    .local v2, "currency":Ljava/util/Currency;
    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "strVal":Ljava/lang/String;
    nop

    .line 156
    :goto_0
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 157
    return-void

    .line 113
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_9
    instance-of v2, p2, Lcom/alibaba/fastjson/JSONStreamAware;

    if-eqz v2, :cond_a

    .line 114
    move-object v2, p2

    check-cast v2, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 115
    .local v2, "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    .line 116
    return-void

    .line 117
    .end local v2    # "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    :cond_a
    instance-of v2, p2, Ljava/util/Iterator;

    if-eqz v2, :cond_b

    .line 118
    move-object v2, p2

    check-cast v2, Ljava/util/Iterator;

    .line 119
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p0, p1, v0, v2}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    .line 120
    return-void

    .line 121
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_b
    instance-of v2, p2, Ljava/lang/Iterable;

    if-eqz v2, :cond_c

    .line 122
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 123
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p0, p1, v0, v2}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    .line 124
    return-void

    .line 125
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_c
    instance-of v2, p2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_f

    .line 126
    move-object v2, p2

    check-cast v2, Ljava/util/Map$Entry;

    .line 127
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 128
    .local v3, "objKey":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 130
    .local v6, "objVal":Ljava/lang/Object;
    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_e

    .line 131
    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 133
    .local v7, "key":Ljava/lang/String;
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_d

    .line 134
    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    .line 135
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v0, v5, v7, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_1

    .line 137
    :cond_d
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 138
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 141
    .end local v7    # "key":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 142
    :cond_e
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 143
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 144
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 145
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 147
    :goto_2
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 148
    return-void

    .line 149
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "objKey":Ljava/lang/Object;
    .end local v6    # "objVal":Ljava/lang/Object;
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "net.sf.json.JSONNull"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 150
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 151
    return-void

    .line 153
    :cond_10
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support class : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V
    .locals 2
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/JSONSerializer;",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 160
    .local p3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 161
    .local v0, "i":I
    const/16 v1, 0x5b

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 162
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    if-eqz v0, :cond_0

    .line 164
    const/16 v1, 0x2c

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 166
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 168
    nop

    .end local v1    # "item":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    .line 169
    goto :goto_0

    .line 170
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 171
    return-void
.end method
