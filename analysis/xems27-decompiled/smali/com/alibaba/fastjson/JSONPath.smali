.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$Filter;,
        Lcom/alibaba/fastjson/JSONPath$FilterSegement;,
        Lcom/alibaba/fastjson/JSONPath$Operator;,
        Lcom/alibaba/fastjson/JSONPath$StringOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$RlikeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntInSegement;,
        Lcom/alibaba/fastjson/JSONPath$ValueSegment;,
        Lcom/alibaba/fastjson/JSONPath$NullSegement;,
        Lcom/alibaba/fastjson/JSONPath$NotNullSegement;,
        Lcom/alibaba/fastjson/JSONPath$RangeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;,
        Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;,
        Lcom/alibaba/fastjson/JSONPath$WildCardSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$PropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$SizeSegement;,
        Lcom/alibaba/fastjson/JSONPath$Segement;,
        Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    }
.end annotation


# static fields
.field static final LENGTH:J = -0x15eea8c0e50a614bL

.field static final SIZE:J = 0x4dea9618e618ae3cL

.field private static pathCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private final path:Ljava/lang/String;

.field private segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "serializeConfig"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p3, "parserConfig"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 48
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 49
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    const-string v1, "json-path can not be null or empty"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs arrayAdd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 379
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 380
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 394
    if-eqz p0, :cond_1

    .line 398
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 399
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    if-nez v0, :cond_0

    .line 400
    new-instance v1, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v1, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 401
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    const/16 v2, 0x400

    if-ge v1, v2, :cond_0

    .line 402
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 406
    :cond_0
    return-object v0

    .line 395
    .end local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    const-string v1, "jsonpath can not be null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .line 365
    if-nez p0, :cond_0

    .line 366
    const/4 v0, 0x0

    return v0

    .line 369
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 370
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static containsValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 374
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 375
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 2197
    if-ne p0, p1, :cond_0

    .line 2198
    const/4 v0, 0x1

    return v0

    .line 2201
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_0

    .line 2205
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 2206
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2209
    :cond_2
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_4

    .line 2210
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 2211
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    return v0

    .line 2214
    :cond_3
    return v0

    .line 2217
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2202
    :cond_5
    :goto_0
    return v0
.end method

.method static eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 13
    .param p0, "a"    # Ljava/lang/Number;
    .param p1, "b"    # Ljava/lang/Number;

    .line 2222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2223
    .local v0, "clazzA":Ljava/lang/Class;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v1

    .line 2225
    .local v1, "isIntA":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2226
    .local v2, "clazzB":Ljava/lang/Class;
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v3

    .line 2228
    .local v3, "isIntB":Z
    instance-of v4, p0, Ljava/math/BigDecimal;

    if-eqz v4, :cond_0

    .line 2229
    move-object v4, p0

    check-cast v4, Ljava/math/BigDecimal;

    .line 2231
    .local v4, "decimalA":Ljava/math/BigDecimal;
    if-eqz v3, :cond_0

    .line 2232
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 2236
    .end local v4    # "decimalA":Ljava/math/BigDecimal;
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 2237
    if-eqz v3, :cond_2

    .line 2238
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 2241
    :cond_2
    instance-of v6, p1, Ljava/math/BigInteger;

    if-eqz v6, :cond_3

    .line 2242
    move-object v4, p0

    check-cast v4, Ljava/math/BigInteger;

    .line 2243
    .local v4, "bigIntB":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 2245
    .local v5, "bigIntA":Ljava/math/BigInteger;
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    return v6

    .line 2249
    .end local v4    # "bigIntB":Ljava/math/BigInteger;
    .end local v5    # "bigIntA":Ljava/math/BigInteger;
    :cond_3
    if-eqz v3, :cond_4

    .line 2250
    instance-of v6, p0, Ljava/math/BigInteger;

    if-eqz v6, :cond_4

    .line 2251
    move-object v4, p0

    check-cast v4, Ljava/math/BigInteger;

    .line 2252
    .local v4, "bigIntA":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 2254
    .local v5, "bigIntB":Ljava/math/BigInteger;
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    return v6

    .line 2259
    .end local v4    # "bigIntA":Ljava/math/BigInteger;
    .end local v5    # "bigIntB":Ljava/math/BigInteger;
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v6

    .line 2260
    .local v6, "isDoubleA":Z
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v7

    .line 2262
    .local v7, "isDoubleB":Z
    if-eqz v6, :cond_5

    if-nez v7, :cond_7

    :cond_5
    if-eqz v6, :cond_6

    if-nez v3, :cond_7

    :cond_6
    if-eqz v7, :cond_9

    if-eqz v1, :cond_9

    .line 2263
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpl-double v12, v8, v10

    if-nez v12, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 2267
    :cond_9
    return v5
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .line 354
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 355
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected static isDouble(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2271
    .local p0, "clazzA":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected static isInt(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2275
    .local p0, "clazzA":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 422
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;
    .locals 3
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 427
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 429
    .local v1, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "/"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 430
    return-object v1
.end method

.method private static paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 10
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "javaObject"    # Ljava/lang/Object;
    .param p3, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    .line 524
    .local p0, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 525
    return-void

    .line 528
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    return-void

    .line 532
    :cond_1
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    instance-of v0, p2, Ljava/util/Map;

    const-string v1, "/"

    if-eqz v0, :cond_5

    .line 535
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    .line 537
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 538
    .local v3, "entryObj":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/util/Map$Entry;

    .line 539
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 541
    .local v5, "key":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 542
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 543
    .local v6, "path":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v6, v7, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 545
    .end local v3    # "entryObj":Ljava/lang/Object;
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "path":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 546
    :cond_4
    return-void

    .line 549
    .end local v0    # "map":Ljava/util/Map;
    :cond_5
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_8

    .line 550
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    .line 552
    .local v0, "collection":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 553
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 554
    .local v4, "item":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 555
    .local v5, "path":Ljava/lang/String;
    invoke-static {p0, v5, v4, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 556
    nop

    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 557
    goto :goto_2

    .line 559
    :cond_7
    return-void

    .line 562
    .end local v0    # "collection":Ljava/util/Collection;
    .end local v2    # "i":I
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 564
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 565
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 567
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_a

    .line 568
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 570
    .restart local v4    # "item":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 571
    .restart local v5    # "path":Ljava/lang/String;
    invoke-static {p0, v5, v4, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 567
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "path":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 574
    .end local v3    # "i":I
    :cond_a
    return-void

    .line 577
    .end local v2    # "len":I
    :cond_b
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_8

    .line 581
    :cond_c
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 582
    .local v2, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v3, v2, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v3, :cond_10

    .line 583
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 586
    .local v3, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :try_start_0
    invoke-virtual {v3, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 587
    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 588
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 590
    .local v7, "key":Ljava/lang/String;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_e

    .line 591
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 592
    .local v8, "path":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {p0, v8, v9, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    :cond_e
    goto :goto_6

    .line 597
    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_f
    nop

    .line 598
    return-void

    .line 595
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "toJSON error"

    invoke-direct {v4, v5, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 601
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :cond_10
    return-void

    .line 578
    .end local v2    # "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_11
    :goto_8
    return-void
.end method

.method private static paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 11
    .param p2, "parent"    # Ljava/lang/String;
    .param p3, "javaObject"    # Ljava/lang/Object;
    .param p4, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    .line 434
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    .local p1, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p3, :cond_0

    .line 435
    return-void

    .line 438
    :cond_0
    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 440
    instance-of v1, p3, Ljava/lang/String;

    if-nez v1, :cond_2

    instance-of v1, p3, Ljava/lang/Number;

    if-nez v1, :cond_2

    instance-of v1, p3, Ljava/util/Date;

    if-nez v1, :cond_2

    instance-of v1, p3, Ljava/util/UUID;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 445
    .local v1, "basicType":Z
    :goto_1
    if-nez v1, :cond_3

    .line 446
    return-void

    .line 450
    .end local v1    # "basicType":Z
    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    instance-of v1, p3, Ljava/util/Map;

    const-string v2, "/"

    if-eqz v1, :cond_7

    .line 453
    move-object v1, p3

    check-cast v1, Ljava/util/Map;

    .line 455
    .local v1, "map":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 456
    .local v4, "entryObj":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    .line 457
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 459
    .local v6, "key":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 460
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 461
    .local v7, "path":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, p1, v7, v8, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 463
    .end local v4    # "entryObj":Ljava/lang/Object;
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "path":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 464
    :cond_6
    return-void

    .line 467
    .end local v1    # "map":Ljava/util/Map;
    :cond_7
    instance-of v1, p3, Ljava/util/Collection;

    if-eqz v1, :cond_a

    .line 468
    move-object v1, p3

    check-cast v1, Ljava/util/Collection;

    .line 470
    .local v1, "collection":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 471
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 472
    .local v5, "item":Ljava/lang/Object;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, "path":Ljava/lang/String;
    invoke-static {p0, p1, v6, v5, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 474
    nop

    .end local v5    # "item":Ljava/lang/Object;
    .end local v6    # "path":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 475
    goto :goto_4

    .line 477
    :cond_9
    return-void

    .line 480
    .end local v1    # "collection":Ljava/util/Collection;
    .end local v3    # "i":I
    :cond_a
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 482
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 483
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 485
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v4, v3, :cond_c

    .line 486
    invoke-static {p3, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 488
    .restart local v5    # "item":Ljava/lang/Object;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 489
    .restart local v6    # "path":Ljava/lang/String;
    invoke-static {p0, p1, v6, v5, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 485
    .end local v5    # "item":Ljava/lang/Object;
    .end local v6    # "path":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 492
    .end local v4    # "i":I
    :cond_c
    return-void

    .line 495
    .end local v3    # "len":I
    :cond_d
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_a

    .line 499
    :cond_e
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 500
    .local v3, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v4, v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v4, :cond_12

    .line 501
    move-object v4, v3

    check-cast v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 504
    .local v4, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :try_start_0
    invoke-virtual {v4, p3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 505
    .local v5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 506
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 508
    .local v8, "key":Ljava/lang/String;
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_10

    .line 509
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 510
    .local v9, "path":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {p0, p1, v9, v10, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    :cond_10
    goto :goto_8

    .line 515
    .end local v5    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_11
    nop

    .line 516
    return-void

    .line 513
    :catch_0
    move-exception v2

    .line 514
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "toJSON error"

    invoke-direct {v5, v6, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 519
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :cond_12
    return-void

    .line 496
    .end local v3    # "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_13
    :goto_a
    return-void
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 416
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v1

    .line 418
    .local v1, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "root"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .line 389
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 390
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 384
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 385
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static size(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 3
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .line 359
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 360
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 361
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public varargs arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 141
    if-eqz p2, :cond_b

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 145
    :cond_0
    if-nez p1, :cond_1

    .line 146
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 151
    move-object v0, p1

    .line 152
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 153
    .local v1, "parentObject":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 154
    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    .line 155
    move-object v1, v0

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v3, v3, v2

    invoke-interface {v3, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "i":I
    :cond_3
    move-object v2, v0

    .line 162
    .local v2, "result":Ljava/lang/Object;
    if-eqz v2, :cond_a

    .line 166
    instance-of v3, v2, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 167
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    .line 168
    .local v3, "collection":Ljava/util/Collection;
    array-length v5, p2

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v6, p2, v4

    .line 169
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    :cond_4
    return-void

    .line 174
    .end local v3    # "collection":Ljava/util/Collection;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 177
    .local v3, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 178
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 179
    .local v5, "length":I
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    array-length v7, p2

    add-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    .line 181
    .local v6, "descArray":Ljava/lang/Object;
    invoke-static {v2, v4, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v7, p2

    if-ge v4, v7, :cond_6

    .line 183
    add-int v7, v5, v4

    aget-object v8, p2, v4

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 186
    .end local v4    # "i":I
    :cond_6
    move-object v4, v6

    .line 187
    .end local v5    # "length":I
    .end local v6    # "descArray":Ljava/lang/Object;
    .local v4, "newResult":Ljava/lang/Object;
    nop

    .line 191
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    .line 192
    .local v5, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v6, v5, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v6, :cond_7

    .line 193
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 194
    .local v6, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    invoke-virtual {v6, p0, v1, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    return-void

    .line 198
    .end local v6    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_7
    instance-of v6, v5, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v6, :cond_8

    .line 199
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-virtual {v6, p0, v1, v4}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    return-void

    .line 203
    :cond_8
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 188
    .end local v4    # "newResult":Ljava/lang/Object;
    .end local v5    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_9
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported array put operation. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 163
    .end local v3    # "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value not found in path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    .end local v0    # "currentObject":Ljava/lang/Object;
    .end local v1    # "parentObject":Ljava/lang/Object;
    .end local v2    # "result":Ljava/lang/Object;
    :cond_b
    :goto_3
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "rootObject"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 81
    return v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 86
    move-object v1, p1

    .line 87
    .local v1, "currentObject":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 88
    aget-object v3, v3, v2

    invoke-interface {v3, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    if-nez v1, :cond_1

    .line 90
    return v0

    .line 87
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 99
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    .line 102
    return v1

    .line 105
    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 106
    return v2

    .line 109
    :cond_1
    instance-of v3, v0, Ljava/lang/Iterable;

    if-eqz v3, :cond_4

    .line 110
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 111
    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 113
    .local v4, "item":Ljava/lang/Object;
    invoke-static {v4, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    return v1

    .line 116
    .end local v4    # "item":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 118
    :cond_3
    return v2

    .line 121
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_4
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2380
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v0, "getFieldValue error."

    if-nez p1, :cond_0

    .line 2381
    return-void

    .line 2384
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 2385
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 2387
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2388
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2389
    .local v1, "val":Ljava/lang/Object;
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2390
    return-void

    .line 2393
    .end local v1    # "val":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2394
    .local v2, "val":Ljava/lang/Object;
    invoke-virtual {p0, v2, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 2395
    .end local v2    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 2396
    :cond_2
    return-void

    .line 2399
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2401
    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v2

    .line 2402
    .local v2, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v2, :cond_6

    .line 2404
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2405
    .local v3, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-eqz v3, :cond_4

    .line 2407
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2408
    .local v4, "val":Ljava/lang/Object;
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2413
    .end local v4    # "val":Ljava/lang/Object;
    nop

    .line 2414
    return-void

    .line 2411
    :catch_0
    move-exception v4

    .line 2412
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local p1    # "currentObject":Ljava/lang/Object;
    .end local p2    # "propertyName":Ljava/lang/String;
    .end local p3    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v5

    .line 2409
    .end local v4    # "ex":Ljava/lang/IllegalAccessException;
    .restart local v1    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .restart local p1    # "currentObject":Ljava/lang/Object;
    .restart local p2    # "propertyName":Ljava/lang/String;
    .restart local p3    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_1
    move-exception v4

    .line 2410
    .local v4, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local p1    # "currentObject":Ljava/lang/Object;
    .end local p2    # "propertyName":Ljava/lang/String;
    .end local p3    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v5

    .line 2416
    .end local v4    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .restart local p1    # "currentObject":Ljava/lang/Object;
    .restart local p2    # "propertyName":Ljava/lang/String;
    .restart local p3    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2417
    .local v0, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 2418
    .local v5, "val":Ljava/lang/Object;
    invoke-virtual {p0, v5, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2419
    .end local v5    # "val":Ljava/lang/Object;
    goto :goto_1

    .line 2420
    :cond_5
    return-void

    .line 2421
    .end local v0    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_2
    move-exception v0

    .line 2422
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonpath error, path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", segement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2426
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_8

    .line 2427
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 2429
    .local v0, "list":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 2430
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2431
    .local v4, "val":Ljava/lang/Object;
    invoke-virtual {p0, v4, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 2429
    .end local v4    # "val":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2433
    .end local v3    # "i":I
    :cond_7
    return-void

    .line 2435
    .end local v0    # "list":Ljava/util/List;
    :cond_8
    return-void
.end method

.method protected deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 16
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyNameHash"    # J
    .param p5, "value"    # Ljava/lang/Object;

    .line 2438
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    if-nez v8, :cond_0

    .line 2439
    return-void

    .line 2442
    :cond_0
    instance-of v0, v8, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2443
    move-object v0, v8

    check-cast v0, Ljava/util/Map;

    .line 2445
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2446
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2447
    .local v1, "val":Ljava/lang/Object;
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    return-void

    .line 2451
    .end local v1    # "val":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 2452
    .local v12, "val":Ljava/lang/Object;
    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2453
    .end local v12    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 2454
    :cond_2
    return-void

    .line 2457
    .end local v0    # "map":Ljava/util/Map;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 2459
    .local v11, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v12

    .line 2460
    .local v12, "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v12, :cond_6

    .line 2462
    :try_start_0
    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 2463
    .local v0, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v0, :cond_4

    .line 2464
    invoke-virtual {v0, v8, v10}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2465
    return-void

    .line 2468
    :cond_4
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    move-object v13, v1

    .line 2469
    .local v13, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    invoke-virtual {v13, v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v14, v1

    .line 2470
    .local v14, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2471
    .local v2, "val":Ljava/lang/Object;
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2472
    .end local v2    # "val":Ljava/lang/Object;
    goto :goto_1

    .line 2473
    :cond_5
    return-void

    .line 2474
    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v13    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v14    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 2475
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonpath error, path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", segement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2479
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    instance-of v0, v8, Ljava/util/List;

    if-eqz v0, :cond_8

    .line 2480
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 2482
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_7

    .line 2483
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 2484
    .local v14, "val":Ljava/lang/Object;
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2482
    .end local v14    # "val":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2486
    .end local v13    # "i":I
    :cond_7
    return-void

    .line 2488
    .end local v0    # "list":Ljava/util/List;
    :cond_8
    return-void
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "rootObject"    # Ljava/lang/Object;

    .line 65
    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 71
    move-object v0, p1

    .line 72
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 73
    aget-object v2, v2, v1

    .line 74
    .local v2, "segement":Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .end local v2    # "segement":Lcom/alibaba/fastjson/JSONPath$Segement;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method evalSize(Ljava/lang/Object;)I
    .locals 5
    .param p1, "currentObject"    # Ljava/lang/Object;

    .line 2578
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 2579
    return v0

    .line 2582
    :cond_0
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 2583
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0

    .line 2586
    :cond_1
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 2587
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    return v0

    .line 2590
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2591
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 2594
    :cond_3
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 2595
    const/4 v0, 0x0

    .line 2597
    .local v0, "count":I
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2598
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 2599
    add-int/lit8 v0, v0, 0x1

    .line 2601
    .end local v2    # "value":Ljava/lang/Object;
    :cond_4
    goto :goto_0

    .line 2602
    :cond_5
    return v0

    .line 2605
    .end local v0    # "count":I
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    .line 2607
    .local v1, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-nez v1, :cond_7

    .line 2608
    return v0

    .line 2612
    :cond_7
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getSize(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2613
    :catch_0
    move-exception v0

    .line 2614
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evalSize error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .line 2057
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2058
    return-object v0

    .line 2061
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 2062
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 2064
    .local v1, "list":Ljava/util/List;
    if-ltz p2, :cond_2

    .line 2065
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 2066
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2068
    :cond_1
    return-object v0

    .line 2070
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 2071
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2073
    :cond_3
    return-object v0

    .line 2077
    .end local v1    # "list":Ljava/util/List;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2078
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 2080
    .local v1, "arrayLenth":I
    if-ltz p2, :cond_6

    .line 2081
    if-ge p2, v1, :cond_5

    .line 2082
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2084
    :cond_5
    return-object v0

    .line 2086
    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_7

    .line 2087
    add-int v0, v1, p2

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2089
    :cond_7
    return-object v0

    .line 2093
    .end local v1    # "arrayLenth":I
    :cond_8
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 2094
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 2095
    .local v0, "map":Ljava/util/Map;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2096
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_9

    .line 2097
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2099
    :cond_9
    return-object v1

    .line 2102
    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_d

    .line 2103
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 2104
    .local v1, "collection":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 2105
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2106
    .local v4, "item":Ljava/lang/Object;
    if-ne v2, p2, :cond_b

    .line 2107
    return-object v4

    .line 2109
    :cond_b
    nop

    .end local v4    # "item":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 2110
    goto :goto_0

    .line 2111
    :cond_c
    return-object v0

    .line 2114
    .end local v1    # "collection":Ljava/util/Collection;
    .end local v2    # "i":I
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;"
        }
    .end annotation

    .line 2566
    .local p1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 2568
    .local v0, "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 2569
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v2, :cond_0

    .line 2570
    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 2573
    .end local v1    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_0
    return-object v0
.end method

.method protected getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;"
        }
    .end annotation

    .line 2555
    .local p1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 2557
    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 2558
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v2, :cond_0

    .line 2559
    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 2562
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_0
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 23
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyNameHash"    # J

    .line 2282
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    const/4 v0, 0x0

    if-nez v8, :cond_0

    .line 2283
    return-object v0

    .line 2286
    :cond_0
    instance-of v2, v8, Ljava/util/Map;

    const-wide v3, -0x15eea8c0e50a614bL    # -8.49505883430448E202

    const-wide v5, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    if-eqz v2, :cond_3

    .line 2287
    move-object v0, v8

    check-cast v0, Ljava/util/Map;

    .line 2288
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2290
    .local v2, "val":Ljava/lang/Object;
    if-nez v2, :cond_2

    cmp-long v7, v5, v10

    if-eqz v7, :cond_1

    cmp-long v5, v3, v10

    if-nez v5, :cond_2

    .line 2291
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2294
    :cond_2
    return-object v2

    .line 2297
    .end local v0    # "map":Ljava/util/Map;
    .end local v2    # "val":Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 2299
    .local v12, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v13

    .line 2300
    .local v13, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v13, :cond_4

    .line 2302
    const/4 v7, 0x0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2303
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2304
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonpath error, path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", segement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2308
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    instance-of v2, v8, Ljava/util/List;

    if-eqz v2, :cond_a

    .line 2309
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 2311
    .local v0, "list":Ljava/util/List;
    cmp-long v2, v5, v10

    if-eqz v2, :cond_9

    cmp-long v2, v3, v10

    if-nez v2, :cond_5

    goto :goto_3

    .line 2315
    :cond_5
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 2317
    .local v2, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 2318
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2319
    .local v4, "obj":Ljava/lang/Object;
    invoke-virtual {v1, v4, v9, v10, v11}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v5

    .line 2320
    .local v5, "itemValue":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_6

    .line 2321
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    .line 2322
    .local v6, "collection":Ljava/util/Collection;
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v6    # "collection":Ljava/util/Collection;
    goto :goto_1

    .line 2323
    :cond_6
    if-eqz v5, :cond_7

    .line 2324
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2323
    :cond_7
    :goto_1
    nop

    .line 2317
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "itemValue":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2328
    .end local v3    # "i":I
    :cond_8
    return-object v2

    .line 2312
    .end local v2    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 2331
    .end local v0    # "list":Ljava/util/List;
    :cond_a
    instance-of v2, v8, Ljava/lang/Enum;

    if-eqz v2, :cond_c

    .line 2332
    const-wide v2, -0x3b435245719ce47aL    # -1.3543099103600943E23

    .line 2333
    .local v2, "NAME":J
    const-wide v4, -0xe14383dfcdd03deL    # -5.788733405278088E240

    .line 2335
    .local v4, "ORDINAL":J
    move-object v6, v8

    check-cast v6, Ljava/lang/Enum;

    .line 2336
    .local v6, "e":Ljava/lang/Enum;
    const-wide v14, -0x3b435245719ce47aL    # -1.3543099103600943E23

    cmp-long v7, v14, v10

    if-nez v7, :cond_b

    .line 2337
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2340
    :cond_b
    const-wide v14, -0xe14383dfcdd03deL    # -5.788733405278088E240

    cmp-long v7, v14, v10

    if-nez v7, :cond_c

    .line 2341
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2345
    .end local v2    # "NAME":J
    .end local v4    # "ORDINAL":J
    .end local v6    # "e":Ljava/lang/Enum;
    :cond_c
    instance-of v2, v8, Ljava/util/Calendar;

    if-eqz v2, :cond_12

    .line 2346
    const-wide v2, 0x7c64634977425edcL

    .line 2347
    .local v2, "YEAR":J
    const-wide v4, -0xb423c6c9050a95bL

    .line 2348
    .local v4, "MONTH":J
    const-wide v6, -0x3572c6e70ba870e3L    # -1.3667045267075351E51

    .line 2349
    .local v6, "DAY":J
    const-wide v14, 0x407efecc7eb5764fL    # 495.924925526463

    .line 2350
    .local v14, "HOUR":J
    const-wide v16, 0x5bb2f9bdf2fad1e9L    # 5.387565597711505E133

    .line 2351
    .local v16, "MINUTE":J
    const-wide v18, -0x5b667a10b311df43L

    .line 2353
    .local v18, "SECOND":J
    move-object v0, v8

    check-cast v0, Ljava/util/Calendar;

    .line 2354
    .local v0, "e":Ljava/util/Calendar;
    const-wide v20, 0x7c64634977425edcL

    cmp-long v22, v20, v10

    if-nez v22, :cond_d

    .line 2355
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 2357
    :cond_d
    const-wide v20, -0xb423c6c9050a95bL

    cmp-long v1, v20, v10

    if-nez v1, :cond_e

    .line 2358
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 2360
    :cond_e
    const-wide v20, -0x3572c6e70ba870e3L    # -1.3667045267075351E51

    cmp-long v1, v20, v10

    if-nez v1, :cond_f

    .line 2361
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 2363
    :cond_f
    const-wide v20, 0x407efecc7eb5764fL    # 495.924925526463

    cmp-long v1, v20, v10

    if-nez v1, :cond_10

    .line 2364
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 2366
    :cond_10
    const-wide v20, 0x5bb2f9bdf2fad1e9L    # 5.387565597711505E133

    cmp-long v1, v20, v10

    if-nez v1, :cond_11

    .line 2367
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 2369
    :cond_11
    const-wide v20, -0x5b667a10b311df43L

    cmp-long v1, v20, v10

    if-nez v1, :cond_12

    .line 2370
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 2374
    .end local v0    # "e":Ljava/util/Calendar;
    .end local v2    # "YEAR":J
    .end local v4    # "MONTH":J
    .end local v6    # "DAY":J
    .end local v14    # "HOUR":J
    .end local v16    # "MINUTE":J
    .end local v18    # "SECOND":J
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 6
    .param p1, "currentObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2178
    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    .line 2180
    .local v1, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v1, :cond_0

    .line 2182
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2183
    :catch_0
    move-exception v2

    .line 2184
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonpath error, path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2188
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 2189
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    .line 2190
    .local v2, "map":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    return-object v3

    .line 2193
    .end local v2    # "map":Ljava/util/Map;
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected init()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    if-eqz v0, :cond_0

    .line 53
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segement;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "parser":Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->explain()[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 62
    .end local v0    # "parser":Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "rootObject"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 208
    return v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 213
    move-object v1, p1

    .line 214
    .local v1, "currentObject":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 215
    .local v2, "parentObject":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v3, v5, :cond_3

    .line 216
    array-length v5, v4

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_1

    .line 217
    move-object v2, v1

    .line 218
    goto :goto_1

    .line 220
    :cond_1
    aget-object v4, v4, v3

    invoke-interface {v4, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 221
    if-nez v1, :cond_2

    .line 222
    goto :goto_1

    .line 215
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    .end local v3    # "i":I
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 227
    return v0

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v3, v0

    sub-int/2addr v3, v6

    aget-object v3, v0, v3

    .line 231
    .local v3, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v4, v3, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v4, :cond_9

    .line 232
    move-object v4, v3

    check-cast v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 234
    .local v4, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_8

    .line 235
    array-length v5, v0

    if-le v5, v6, :cond_8

    .line 236
    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    aget-object v0, v0, v5

    .line 237
    .local v0, "parentSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v5, v0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;

    if-nez v5, :cond_5

    instance-of v5, v0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;

    if-eqz v5, :cond_8

    .line 238
    :cond_5
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    .line 239
    .local v5, "collection":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 240
    .local v6, "removedOnce":Z
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 241
    .local v8, "item":Ljava/lang/Object;
    invoke-virtual {v4, p0, v8}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v9

    .line 242
    .local v9, "removed":Z
    if-eqz v9, :cond_6

    .line 243
    const/4 v6, 0x1

    .line 245
    .end local v8    # "item":Ljava/lang/Object;
    .end local v9    # "removed":Z
    :cond_6
    goto :goto_2

    .line 246
    :cond_7
    return v6

    .line 250
    .end local v0    # "parentSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v5    # "collection":Ljava/util/Collection;
    .end local v6    # "removedOnce":Z
    :cond_8
    invoke-virtual {v4, p0, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 253
    .end local v4    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_9
    instance-of v0, v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v0, :cond_a

    .line 254
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 257
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "currentObject"    # Ljava/lang/Object;
    .param p3, "index"    # I

    .line 2151
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2152
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 2153
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    if-ltz p3, :cond_1

    .line 2154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_0

    .line 2155
    return v1

    .line 2157
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2159
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    .line 2161
    .local v2, "newIndex":I
    if-gez v2, :cond_2

    .line 2162
    return v1

    .line 2165
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2167
    .end local v2    # "newIndex":I
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2170
    .end local v0    # "list":Ljava/util/List;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2171
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported set operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected removePropertyValue(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .line 2529
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2530
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2531
    .local v0, "origin":Ljava/lang/Object;
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2534
    .end local v0    # "origin":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 2536
    .local v0, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v3, 0x0

    .line 2537
    .local v3, "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    instance-of v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v4, :cond_2

    .line 2538
    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 2541
    :cond_2
    if-eqz v3, :cond_4

    .line 2542
    invoke-virtual {v3, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 2543
    .local v4, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v4, :cond_3

    .line 2544
    return v2

    .line 2547
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v4, p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2548
    return v1

    .line 2551
    .end local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 16
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "p"    # Z

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 266
    return v3

    .line 269
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 271
    move-object/from16 v4, p1

    .line 272
    .local v4, "currentObject":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 273
    .local v5, "parentObject":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v8, v7

    const/4 v9, 0x1

    if-ge v6, v8, :cond_9

    .line 279
    move-object v5, v4

    .line 280
    aget-object v7, v7, v6

    .line 281
    .local v7, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-interface {v7, v0, v1, v4}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 282
    if-nez v4, :cond_8

    .line 283
    const/4 v8, 0x0

    .line 284
    .local v8, "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    iget-object v10, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v11, v10

    sub-int/2addr v11, v9

    if-ge v6, v11, :cond_1

    .line 285
    add-int/lit8 v11, v6, 0x1

    aget-object v8, v10, v11

    .line 288
    :cond_1
    const/4 v10, 0x0

    .line 289
    .local v10, "newObj":Ljava/lang/Object;
    instance-of v11, v8, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v11, :cond_5

    .line 290
    const/4 v11, 0x0

    .line 291
    .local v11, "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    const/4 v12, 0x0

    .line 292
    .local v12, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v13, v7, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v13, :cond_2

    .line 293
    move-object v13, v7

    check-cast v13, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-static {v13}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->access$000(Lcom/alibaba/fastjson/JSONPath$PropertySegement;)Ljava/lang/String;

    move-result-object v13

    .line 294
    .local v13, "propertyName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 295
    .local v14, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v15

    .line 296
    .local v15, "parentBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v15, :cond_2

    .line 297
    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v9

    .line 298
    .local v9, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v12, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 299
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v11

    .line 303
    .end local v9    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v13    # "propertyName":Ljava/lang/String;
    .end local v14    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "parentBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_2
    if-eqz v11, :cond_4

    .line 305
    iget-object v3, v11, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_3

    .line 306
    const/4 v3, 0x0

    invoke-virtual {v11, v3, v12}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    .end local v10    # "newObj":Ljava/lang/Object;
    .local v3, "newObj":Ljava/lang/Object;
    goto :goto_1

    .line 308
    .end local v3    # "newObj":Ljava/lang/Object;
    .restart local v10    # "newObj":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 311
    :cond_4
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v10, v3

    .end local v10    # "newObj":Ljava/lang/Object;
    .restart local v3    # "newObj":Ljava/lang/Object;
    goto :goto_1

    .line 313
    .end local v3    # "newObj":Ljava/lang/Object;
    .end local v11    # "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "newObj":Ljava/lang/Object;
    :cond_5
    instance-of v3, v8, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v3, :cond_6

    .line 314
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object v10, v3

    goto :goto_2

    .line 313
    :cond_6
    :goto_1
    nop

    .line 317
    :goto_2
    if-eqz v10, :cond_9

    .line 318
    instance-of v3, v7, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v3, :cond_7

    .line 319
    move-object v3, v7

    check-cast v3, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 320
    .local v3, "propSegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    invoke-virtual {v3, v0, v5, v10}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    move-object v4, v10

    .line 322
    goto :goto_3

    .line 323
    .end local v3    # "propSegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_7
    instance-of v3, v7, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v3, :cond_9

    .line 324
    move-object v3, v7

    check-cast v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .line 325
    .local v3, "arrayAccessSegement":Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;
    invoke-virtual {v3, v0, v5, v10}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    move-object v4, v10

    .line 273
    .end local v3    # "arrayAccessSegement":Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;
    .end local v7    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v8    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v10    # "newObj":Ljava/lang/Object;
    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 335
    .end local v6    # "i":I
    :cond_9
    if-nez v5, :cond_a

    .line 336
    const/4 v3, 0x0

    return v3

    .line 339
    :cond_a
    iget-object v3, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v6, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget-object v3, v3, v6

    .line 340
    .local v3, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v6, v3, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v6, :cond_b

    .line 341
    move-object v6, v3

    check-cast v6, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 342
    .local v6, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    invoke-virtual {v6, v0, v5, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    return v7

    .line 346
    .end local v6    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_b
    instance-of v6, v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v6, :cond_c

    .line 347
    move-object v6, v3

    check-cast v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-virtual {v6, v0, v5, v2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    return v6

    .line 350
    :cond_c
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6
.end method

.method public setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 4
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "currentObject"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "value"    # Ljava/lang/Object;

    .line 2119
    instance-of v0, p2, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2120
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 2121
    .local v0, "list":Ljava/util/List;
    if-ltz p3, :cond_0

    .line 2122
    invoke-interface {v0, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2124
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v0, v2, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2126
    :goto_0
    return v1

    .line 2129
    .end local v0    # "list":Ljava/util/List;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2130
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2131
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 2133
    .local v2, "arrayLenth":I
    if-ltz p3, :cond_2

    .line 2134
    if-ge p3, v2, :cond_3

    .line 2135
    invoke-static {p2, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 2138
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_3

    .line 2139
    add-int v3, v2, p3

    invoke-static {p2, v3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 2143
    :cond_3
    :goto_1
    return v1

    .line 2146
    .end local v2    # "arrayLenth":I
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported set operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z
    .locals 9
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "propertyNameHash"    # J
    .param p5, "value"    # Ljava/lang/Object;

    .line 2492
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2493
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    return v1

    .line 2497
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2498
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2499
    .local v2, "element":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 2500
    goto :goto_0

    .line 2502
    :cond_1
    move-object v3, p0

    move-object v4, v2

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z

    .line 2503
    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 2504
    :cond_2
    return v1

    .line 2507
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 2509
    .local v0, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v2, 0x0

    .line 2510
    .local v2, "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    instance-of v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v3, :cond_4

    .line 2511
    move-object v2, v0

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 2514
    :cond_4
    if-eqz v2, :cond_6

    .line 2515
    invoke-virtual {v2, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 2516
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v3, :cond_5

    .line 2517
    const/4 v1, 0x0

    return v1

    .line 2520
    :cond_5
    invoke-virtual {v3, p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2521
    return v1

    .line 2524
    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public size(Ljava/lang/Object;)I
    .locals 4
    .param p1, "rootObject"    # Ljava/lang/Object;

    .line 125
    if-nez p1, :cond_0

    .line 126
    const/4 v0, -0x1

    return v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 131
    move-object v0, p1

    .line 132
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 133
    aget-object v2, v2, v1

    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .line 2619
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
