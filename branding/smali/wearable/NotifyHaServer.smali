.class public final Lcom/isaigu/gymapp/wearable/NotifyHaServer;
.super Ljava/lang/Object;
.source "NotifyHaServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/NotifyHaServer$AcceptLoop;
    }
.end annotation


# static fields
.field private static final API_RUNNING_JSON:Ljava/lang/String; = "{\"message\":\"API running.\"}"

.field private static final DEFAULT_PORT:I = 0x1fbb

.field private static final MAX_ENTITY_HISTORY:I = 0x18

.field private static acceptThread:Ljava/lang/Thread;

.field private static bindError:Ljava/lang/String;

.field private static boundPort:I

.field private static cachedLanUrl:Ljava/lang/String;

.field private static final entityHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/wearable/HaEntityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static haHrCount:I

.field private static lastEntity:Ljava/lang/String;

.field private static postCount:I

.field private static volatile running:Z

.field private static serverSocket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->lastEntity:Ljava/lang/String;

    .line 44
    const/16 v1, 0x1fbb

    sput v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    .line 45
    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->bindError:Ljava/lang/String;

    .line 46
    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->cachedLanUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 30
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    return v0
.end method

.method static synthetic access$200()Ljava/net/ServerSocket;
    .registers 1

    .line 30
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$300(Ljava/net/Socket;)V
    .registers 1

    .line 30
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->handleClient(Ljava/net/Socket;)V

    return-void
.end method

.method private static decodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 513
    if-nez p0, :cond_5

    .line 514
    const-string p0, ""

    return-object p0

    .line 516
    :cond_5
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 517
    if-ltz v0, :cond_12

    .line 518
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 521
    :cond_12
    :try_start_12
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_19

    .line 523
    goto :goto_1a

    .line 522
    :catchall_19
    move-exception v0

    .line 524
    :goto_1a
    const-string v0, "%2F"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2f"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 528
    if-nez p0, :cond_5

    .line 529
    const-string p0, ""

    return-object p0

    .line 531
    :cond_5
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, "\\\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extractFromAttributes(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 9

    .line 409
    const-string v0, ""

    const-string v1, "attributes"

    :try_start_4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 410
    return-object v0

    .line 412
    :cond_b
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 413
    const/4 v1, 0x6

    const-string v2, "heart_rate"

    const-string v3, "heartrate"

    const-string v4, "heartRate"

    const-string v5, "bpm"

    const-string v6, "value"

    const-string v7, "hr"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    .line 416
    const/4 v3, 0x0

    :goto_21
    if-ge v3, v1, :cond_3e

    .line 417
    aget-object v4, v2, v3

    .line 418
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 419
    goto :goto_3b

    .line 421
    :cond_2c
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseHeartRate(Ljava/lang/String;)I

    move-result v5
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_3f

    if-lez v5, :cond_3b

    .line 423
    return-object v4

    .line 416
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 427
    :cond_3e
    goto :goto_40

    .line 426
    :catchall_3f
    move-exception p0

    .line 428
    :goto_40
    return-object v0
.end method

.method private static extractState(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 382
    const-string v0, "state"

    const-string v1, ""

    if-eqz p0, :cond_4c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4c

    .line 386
    :cond_d
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->extractFromAttributes(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d

    .line 389
    return-object v3

    .line 391
    :cond_1d
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 392
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_2e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_2e
    move-object v0, v1

    .line 394
    :goto_2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isUnavailableState(Ljava/lang/String;)Z

    move-result v2
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_3d

    if-nez v2, :cond_3c

    .line 395
    return-object v0

    .line 399
    :cond_3c
    goto :goto_3e

    .line 398
    :catchall_3d
    move-exception v0

    .line 400
    :goto_3e
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 401
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 402
    return-object v1

    .line 404
    :cond_4b
    return-object p0

    .line 383
    :cond_4c
    :goto_4c
    return-object v1
.end method

.method private static formatEntityState(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 189
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_e

    .line 192
    :cond_d
    return-object p0

    .line 190
    :cond_e
    :goto_e
    const-string p0, "(\u043f\u0440\u0430\u0437\u043d\u043e)"

    return-object p0
.end method

.method public static getBindError()Ljava/lang/String;
    .registers 1

    .line 113
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->bindError:Ljava/lang/String;

    return-object v0
.end method

.method public static getBoundPort()I
    .registers 1

    .line 109
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    return v0
.end method

.method public static getEntityLines()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/HaEntityRecord;

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->shortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->state:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->formatEntityState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    goto :goto_f

    .line 185
    :cond_3d
    return-object v0
.end method

.method public static getEntityListText()Ljava/lang/String;
    .registers 6

    .line 161
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    const-string v0, ""

    return-object v0

    .line 164
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/HaEntityRecord;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_31

    .line 167
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    :cond_31
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->shortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->state:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->formatEntityState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1c

    if-le v3, v4, :cond_61

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    goto :goto_1a

    .line 177
    :cond_65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHaHrCount()I
    .registers 1

    .line 101
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    return v0
.end method

.method public static getLanUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 121
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->cachedLanUrl:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 122
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->cachedLanUrl:Ljava/lang/String;

    return-object p0

    .line 124
    :cond_d
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->refreshLanUrl(Landroid/content/Context;)V

    .line 125
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->cachedLanUrl:Ljava/lang/String;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1d

    .line 126
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->cachedLanUrl:Ljava/lang/String;

    return-object p0

    .line 128
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->getLocalUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastEntity()Ljava/lang/String;
    .registers 1

    .line 105
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->lastEntity:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalUrl()Ljava/lang/String;
    .registers 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPostCount()I
    .registers 1

    .line 97
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->postCount:I

    return v0
.end method

.method private static handleClient(Ljava/net/Socket;)V
    .registers 13

    .line 269
    const-string v0, "/api/states/"

    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 270
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 271
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 273
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_109

    .line 274
    const-string v5, "text/plain"

    if-eqz v4, :cond_fc

    :try_start_1e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_26

    goto/16 :goto_fc

    .line 278
    :cond_26
    nop

    .line 279
    nop

    .line 280
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 281
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_109

    .line 282
    const-string v8, ""

    const/4 v9, 0x0

    if-lez v7, :cond_52

    if-le v6, v7, :cond_52

    .line 283
    :try_start_39
    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 284
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_53

    .line 286
    :cond_52
    move-object v4, v8

    :goto_53
    const/4 v6, 0x0

    .line 288
    :goto_54
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7e

    .line 289
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_61

    .line 290
    goto :goto_7e

    .line 292
    :cond_61
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 293
    const-string v11, "content-length:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7d

    .line 294
    const/16 v6, 0xf

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseIntSafe(Ljava/lang/String;I)I

    move-result v6

    .line 296
    :cond_7d
    goto :goto_54

    .line 297
    :cond_7e
    :goto_7e
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->readBody(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 298
    const-string v3, "GET"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_88
    .catchall {:try_start_39 .. :try_end_88} :catchall_109

    const-string v6, "application/json"

    const/16 v7, 0xc8

    if-eqz v3, :cond_a9

    :try_start_8e
    const-string v3, "/api/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, "/api"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 299
    :cond_9e
    const-string v0, "{\"message\":\"API running.\"}"

    invoke-static {v2, v7, v6, v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_8e .. :try_end_a3} :catchall_109

    .line 314
    :try_start_a3
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    .line 316
    goto :goto_a8

    .line 315
    :catch_a7
    move-exception p0

    .line 300
    :goto_a8
    return-void

    .line 302
    :cond_a9
    :try_start_a9
    const-string v3, "POST"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b9

    const-string v3, "PUT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 303
    :cond_b9
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 304
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->handleStatePost(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"result\":\"ok\",\"entity_id\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v2, v7, v6, v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_a9 .. :try_end_eb} :catchall_109

    .line 314
    :try_start_eb
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef

    .line 316
    goto :goto_f0

    .line 315
    :catch_ef
    move-exception p0

    .line 308
    :goto_f0
    return-void

    .line 310
    :cond_f1
    const/16 v0, 0x194

    :try_start_f3
    const-string v1, "not found"

    invoke-static {v2, v0, v5, v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_f3 .. :try_end_f8} :catchall_109

    .line 314
    :try_start_f8
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_10e

    goto :goto_10d

    .line 275
    :cond_fc
    :goto_fc
    const/16 v0, 0x190

    :try_start_fe
    const-string v1, "bad request"

    invoke-static {v2, v0, v5, v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_fe .. :try_end_103} :catchall_109

    .line 314
    :try_start_103
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_107

    .line 316
    goto :goto_108

    .line 315
    :catch_107
    move-exception p0

    .line 276
    :goto_108
    return-void

    .line 311
    :catchall_109
    move-exception v0

    .line 314
    :try_start_10a
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_10e

    .line 316
    :goto_10d
    goto :goto_110

    .line 315
    :catch_10e
    move-exception p0

    .line 317
    nop

    .line 318
    :goto_110
    return-void
.end method

.method private static handleStatePost(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 352
    if-nez p0, :cond_4

    .line 353
    const-string p0, ""

    .line 355
    :cond_4
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->postCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->postCount:I

    .line 356
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->lastEntity:Ljava/lang/String;

    .line 357
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->extractState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->rememberEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isHeartRateEntity(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ha:"

    if-eqz v0, :cond_3a

    .line 360
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseHeartRate(Ljava/lang/String;)I

    move-result p1

    .line 361
    if-lez p1, :cond_39

    .line 362
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(ILjava/lang/String;)V

    .line 365
    :cond_39
    goto :goto_6a

    :cond_3a
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isBatteryEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 366
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseIntSafe(Ljava/lang/String;I)I

    move-result p1

    .line 367
    if-ltz p1, :cond_69

    const/16 v0, 0x64

    if-gt p1, v0, :cond_69

    .line 368
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBattery(I)V

    goto :goto_69

    .line 370
    :cond_4f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isConnectedEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 371
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isTruthyState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 372
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_6a

    .line 373
    :cond_5f
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isFalsyState(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 374
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    goto :goto_6a

    .line 370
    :cond_69
    :goto_69
    nop

    .line 377
    :cond_6a
    :goto_6a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onRawEvent(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 379
    return-void
.end method

.method public static hasHeartRateEntity()Z
    .registers 2

    .line 140
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isHeartRateEntity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 142
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_1e
    goto :goto_a

    .line 145
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public static hasHeartRateValue()Z
    .registers 4

    .line 149
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/HaEntityRecord;

    .line 150
    iget-object v3, v1, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->entityId:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isHeartRateEntity(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 151
    goto :goto_a

    .line 153
    :cond_20
    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->state:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseHeartRate(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_29

    .line 154
    return v2

    .line 156
    :cond_29
    goto :goto_a

    .line 157
    :cond_2a
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    if-lez v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    return v2
.end method

.method private static isBatteryEntity(Ljava/lang/String;)Z
    .registers 2

    .line 471
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "battery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isConnectedEntity(Ljava/lang/String;)Z
    .registers 2

    .line 475
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 476
    const-string v0, "_connected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, ".connected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method private static isFalsyState(Ljava/lang/String;)Z
    .registers 3

    .line 489
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 490
    return v0

    .line 492
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 493
    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "false"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "disconnected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 494
    const-string v1, "no"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    :cond_36
    const/4 v0, 0x1

    .line 493
    :cond_37
    return v0
.end method

.method private static isHeartRateEntity(Ljava/lang/String;)Z
    .registers 4

    .line 456
    const/4 v0, 0x0

    if-eqz p0, :cond_57

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_57

    .line 459
    :cond_a
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 460
    const-string v1, "heartrate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_56

    const-string v1, "heart_rate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 461
    const-string v1, "heart-rate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    const-string v1, "heartr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_56

    .line 464
    :cond_32
    const-string v1, "_hr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "_hr_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_55

    .line 467
    :cond_43
    const-string v1, "heart"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "rate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 v0, 0x1

    :cond_54
    return v0

    .line 465
    :cond_55
    :goto_55
    return v2

    .line 462
    :cond_56
    :goto_56
    return v2

    .line 457
    :cond_57
    :goto_57
    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .line 93
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    return v0
.end method

.method private static isTruthyState(Ljava/lang/String;)Z
    .registers 3

    .line 480
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 481
    return v0

    .line 483
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 484
    const-string v1, "1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "connected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 485
    const-string v1, "yes"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    :cond_36
    const/4 v0, 0x1

    .line 484
    :cond_37
    return v0
.end method

.method private static isUnavailableState(Ljava/lang/String;)Z
    .registers 3

    .line 432
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 433
    return v0

    .line 435
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "unknown"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "unavailable"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 437
    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "none"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    nop

    .line 436
    :goto_38
    return v0
.end method

.method private static parseHeartRate(Ljava/lang/String;)I
    .registers 4

    .line 441
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 442
    return v0

    .line 444
    :cond_4
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseIntSafe(Ljava/lang/String;I)I

    move-result v1

    .line 445
    if-lez v1, :cond_b

    .line 446
    return v1

    .line 448
    :cond_b
    const-string v1, "[^0-9]"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 449
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 450
    return v0

    .line 452
    :cond_1a
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseIntSafe(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static parseIntSafe(Ljava/lang/String;I)I
    .registers 4

    .line 535
    if-nez p0, :cond_3

    .line 536
    return p1

    .line 539
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 540
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 541
    if-lez v0, :cond_14

    .line 542
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 544
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    return p0

    .line 545
    :catchall_19
    move-exception p0

    .line 546
    return p1
.end method

.method private static readBody(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    const/high16 v0, 0x10000

    if-le p1, v0, :cond_6

    .line 322
    const/high16 p1, 0x10000

    .line 324
    :cond_6
    const/4 v1, 0x0

    if-lez p1, :cond_21

    .line 325
    new-array v0, p1, [B

    .line 326
    const/4 v2, 0x0

    .line 327
    :goto_c
    if-ge v2, p1, :cond_19

    .line 328
    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 329
    if-gez v3, :cond_17

    .line 330
    goto :goto_19

    .line 332
    :cond_17
    add-int/2addr v2, v3

    .line 333
    goto :goto_c

    .line 334
    :cond_19
    :goto_19
    new-instance p0, Ljava/lang/String;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0

    .line 336
    :cond_21
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 337
    const-string v2, ""

    if-gtz p1, :cond_2a

    .line 338
    return-object v2

    .line 340
    :cond_2a
    if-le p1, v0, :cond_2d

    .line 341
    goto :goto_2e

    .line 340
    :cond_2d
    move v0, p1

    .line 343
    :goto_2e
    new-array p1, v0, [B

    .line 344
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    .line 345
    if-gtz p0, :cond_37

    .line 346
    return-object v2

    .line 348
    :cond_37
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static refreshLanUrl(Landroid/content/Context;)V
    .registers 8

    .line 208
    const-string v0, ":"

    const-string v1, "http://"

    const-string v2, "."

    const-string v3, ""

    sput-object v3, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->cachedLanUrl:Ljava/lang/String;

    .line 210
    :try_start_a
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 211
    :cond_e
    :goto_e
    if-eqz v3, :cond_70

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 212
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 213
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 214
    goto :goto_e

    .line 216
    :cond_2b
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 217
    :cond_2f
    :goto_2f
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 218
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 219
    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_2f

    instance-of v6, v5, Ljava/net/Inet4Address;

    if-nez v6, :cond_48

    .line 221
    goto :goto_2f

    .line 223
    :cond_48
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 224
    if-eqz v5, :cond_6e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6e

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->cachedLanUrl:Ljava/lang/String;
    :try_end_6d
    .catchall {:try_start_a .. :try_end_6d} :catchall_71

    .line 226
    return-void

    .line 228
    :cond_6e
    goto :goto_2f

    .line 229
    :cond_6f
    goto :goto_e

    .line 231
    :cond_70
    goto :goto_72

    .line 230
    :catchall_71
    move-exception v3

    .line 232
    :goto_72
    if-eqz p0, :cond_ce

    .line 234
    nop

    .line 235
    :try_start_75
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 236
    if-eqz p0, :cond_cc

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_cc

    .line 237
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    .line 238
    if-eqz p0, :cond_cc

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->cachedLanUrl:Ljava/lang/String;
    :try_end_cc
    .catchall {:try_start_75 .. :try_end_cc} :catchall_cd

    .line 246
    :cond_cc
    goto :goto_ce

    .line 245
    :catchall_cd
    move-exception p0

    .line 248
    :cond_ce
    :goto_ce
    return-void
.end method

.method private static rememberEntity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 196
    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3d

    .line 199
    :cond_9
    if-eqz p1, :cond_c

    goto :goto_e

    :cond_c
    const-string p1, ""

    .line 200
    :goto_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    new-instance v1, Lcom/isaigu/gymapp/wearable/HaEntityRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/isaigu/gymapp/wearable/HaEntityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :goto_1c
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const/16 p1, 0x18

    if-le p0, p1, :cond_3c

    .line 202
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 203
    sget-object p1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    goto :goto_1c

    .line 205
    :cond_3c
    return-void

    .line 197
    :cond_3d
    :goto_3d
    return-void
.end method

.method public static declared-synchronized resetSession()V
    .registers 2

    const-class v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;

    monitor-enter v0

    .line 132
    const/4 v1, 0x0

    :try_start_4
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->postCount:I

    .line 133
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    .line 134
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->lastEntity:Ljava/lang/String;

    .line 135
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 136
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_16

    .line 137
    monitor-exit v0

    return-void

    .line 131
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized start(Landroid/content/Context;)V
    .registers 7

    const-class v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;

    monitor-enter v0

    .line 51
    :try_start_3
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    if-eqz v1, :cond_f

    .line 52
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->refreshLanUrl(Landroid/content/Context;)V

    .line 53
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->start(Landroid/content/Context;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_68

    .line 54
    monitor-exit v0

    return-void

    .line 56
    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHaPort(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    .line 57
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->bindError:Ljava/lang/String;

    .line 58
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->refreshLanUrl(Landroid/content/Context;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_68

    .line 60
    const/4 v1, 0x0

    :try_start_1d
    new-instance v2, Ljava/net/ServerSocket;

    sget v3, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    const/16 v4, 0x10

    const-string v5, "0.0.0.0"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    sput-object v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    .line 61
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    .line 62
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/isaigu/gymapp/wearable/NotifyHaServer$AcceptLoop;

    invoke-direct {v4, v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer$AcceptLoop;-><init>(Lcom/isaigu/gymapp/wearable/NotifyHaServer$1;)V

    const-string v5, "xems-ha-server"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v3, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->acceptThread:Ljava/lang/Thread;

    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 64
    sget-object v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->acceptThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 65
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->start(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4d} :catch_4e
    .catchall {:try_start_1d .. :try_end_4d} :catchall_68

    .line 72
    goto :goto_66

    .line 67
    :catch_4e
    move-exception p0

    .line 68
    const/4 v2, 0x0

    :try_start_50
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    .line 69
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_5f

    :cond_5d
    const-string p0, "bind failed"

    :goto_5f
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->bindError:Ljava/lang/String;

    .line 70
    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_68

    .line 73
    :goto_66
    monitor-exit v0

    return-void

    .line 50
    :catchall_68
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stop()V
    .registers 3

    const-class v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;

    monitor-enter v0

    .line 76
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    .line 77
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_24

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 79
    :try_start_b
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_24

    .line 81
    goto :goto_12

    .line 80
    :catch_11
    move-exception v1

    .line 82
    :goto_12
    :try_start_12
    sput-object v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    .line 84
    :cond_14
    sput-object v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->acceptThread:Ljava/lang/Thread;

    .line 85
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_1f

    .line 87
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->stop(Landroid/content/Context;)V

    .line 89
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_24

    .line 90
    monitor-exit v0

    return-void

    .line 75
    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 500
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_d

    const-string v0, "OK"

    goto :goto_16

    :cond_d
    const/16 v0, 0x194

    if-ne p1, v0, :cond_14

    const-string v0, "Not Found"

    goto :goto_16

    :cond_14
    const-string v0, "Bad Request"

    .line 501
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\nContent-Type: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; charset=utf-8\r\nContent-Length: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\r\nConnection: close\r\nAccess-Control-Allow-Origin: *\r\n\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 507
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 508
    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 509
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 510
    return-void
.end method
