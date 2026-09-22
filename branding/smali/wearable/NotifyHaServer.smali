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

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    .line 38
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->lastEntity:Ljava/lang/String;

    .line 39
    const/16 v1, 0x1fbb

    sput v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    .line 40
    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->bindError:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 25
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    return v0
.end method

.method static synthetic access$200()Ljava/net/ServerSocket;
    .registers 1

    .line 25
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$300(Ljava/net/Socket;)V
    .registers 1

    .line 25
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->handleClient(Ljava/net/Socket;)V

    return-void
.end method

.method private static decodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 346
    if-nez p0, :cond_5

    .line 347
    const-string p0, ""

    return-object p0

    .line 349
    :cond_5
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 350
    if-ltz v0, :cond_12

    .line 351
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 353
    :cond_12
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

    .line 357
    if-nez p0, :cond_5

    .line 358
    const-string p0, ""

    return-object p0

    .line 360
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

.method private static extractState(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 283
    const-string v0, "state"

    const-string v1, ""

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2a

    .line 287
    :cond_d
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 289
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_24

    :cond_22
    return-object v1

    .line 293
    :cond_23
    goto :goto_25

    .line 292
    :catchall_24
    move-exception v0

    .line 294
    :goto_25
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 284
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public static getBindError()Ljava/lang/String;
    .registers 1

    .line 99
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->bindError:Ljava/lang/String;

    return-object v0
.end method

.method public static getBoundPort()I
    .registers 1

    .line 95
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

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/HaEntityRecord;

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->shortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->state:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_f

    .line 148
    :cond_39
    return-object v0
.end method

.method public static getEntityListText()Ljava/lang/String;
    .registers 6

    .line 124
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 125
    const-string v0, ""

    return-object v0

    .line 127
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/HaEntityRecord;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_31

    .line 130
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_31
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->shortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->state:Ljava/lang/String;

    .line 135
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1c

    if-le v3, v4, :cond_5d

    .line 136
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

    .line 138
    :cond_5d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    goto :goto_1a

    .line 140
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHaHrCount()I
    .registers 1

    .line 87
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    return v0
.end method

.method public static getLastEntity()Ljava/lang/String;
    .registers 1

    .line 91
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->lastEntity:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalUrl()Ljava/lang/String;
    .registers 2

    .line 103
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

    .line 83
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->postCount:I

    return v0
.end method

.method private static handleClient(Ljava/net/Socket;)V
    .registers 13

    .line 182
    const-string v0, "/api/states/"

    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 183
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 184
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 186
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_105

    .line 187
    const-string v5, "text/plain"

    if-eqz v4, :cond_f8

    :try_start_1e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_26

    goto/16 :goto_f8

    .line 191
    :cond_26
    nop

    .line 192
    nop

    .line 193
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_105

    .line 195
    const-string v8, ""

    const/4 v9, 0x0

    if-lez v7, :cond_50

    if-le v6, v7, :cond_50

    .line 196
    :try_start_39
    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 197
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_51

    .line 199
    :cond_50
    move-object v4, v8

    :goto_51
    const/4 v6, 0x0

    .line 201
    :goto_52
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7a

    .line 202
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5f

    .line 203
    goto :goto_7a

    .line 205
    :cond_5f
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 206
    const-string v11, "content-length:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_79

    .line 207
    const/16 v6, 0xf

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseIntSafe(Ljava/lang/String;I)I

    move-result v6

    .line 209
    :cond_79
    goto :goto_52

    .line 210
    :cond_7a
    :goto_7a
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->readBody(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 211
    const-string v3, "GET"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_84
    .catchall {:try_start_39 .. :try_end_84} :catchall_105

    const-string v6, "application/json"

    const/16 v7, 0xc8

    if-eqz v3, :cond_a5

    :try_start_8a
    const-string v3, "/api/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    const-string v3, "/api"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 212
    :cond_9a
    const-string v0, "{\"message\":\"API running.\"}"

    invoke-static {v2, v7, v6, v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_8a .. :try_end_9f} :catchall_105

    .line 227
    :try_start_9f
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    .line 229
    goto :goto_a4

    .line 228
    :catch_a3
    move-exception p0

    .line 213
    :goto_a4
    return-void

    .line 215
    :cond_a5
    :try_start_a5
    const-string v3, "POST"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b5

    const-string v3, "PUT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 216
    :cond_b5
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->handleStatePost(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"result\":\"ok\",\"entity_id\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v2, v7, v6, v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_a5 .. :try_end_e7} :catchall_105

    .line 227
    :try_start_e7
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    .line 229
    goto :goto_ec

    .line 228
    :catch_eb
    move-exception p0

    .line 221
    :goto_ec
    return-void

    .line 223
    :cond_ed
    const/16 v0, 0x194

    :try_start_ef
    const-string v1, "not found"

    invoke-static {v2, v0, v5, v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_f4
    .catchall {:try_start_ef .. :try_end_f4} :catchall_105

    .line 227
    :try_start_f4
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_10a

    goto :goto_109

    .line 188
    :cond_f8
    :goto_f8
    const/16 v0, 0x190

    :try_start_fa
    const-string v1, "bad request"

    invoke-static {v2, v0, v5, v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_ff
    .catchall {:try_start_fa .. :try_end_ff} :catchall_105

    .line 227
    :try_start_ff
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_103

    .line 229
    goto :goto_104

    .line 228
    :catch_103
    move-exception p0

    .line 189
    :goto_104
    return-void

    .line 224
    :catchall_105
    move-exception v0

    .line 227
    :try_start_106
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_10a

    .line 229
    :goto_109
    goto :goto_10c

    .line 228
    :catch_10a
    move-exception p0

    .line 230
    nop

    .line 231
    :goto_10c
    return-void
.end method

.method private static handleStatePost(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 253
    if-nez p0, :cond_4

    .line 254
    const-string p0, ""

    .line 256
    :cond_4
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->postCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->postCount:I

    .line 257
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->lastEntity:Ljava/lang/String;

    .line 258
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->extractState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->rememberEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isHeartRateEntity(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ha:"

    const/4 v2, -0x1

    if-eqz v0, :cond_3b

    .line 261
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseIntSafe(Ljava/lang/String;I)I

    move-result p1

    .line 262
    if-lez p1, :cond_3a

    .line 263
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(ILjava/lang/String;)V

    .line 266
    :cond_3a
    goto :goto_6a

    :cond_3b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isBatteryEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 267
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseIntSafe(Ljava/lang/String;I)I

    move-result p1

    .line 268
    if-ltz p1, :cond_69

    const/16 v0, 0x64

    if-gt p1, v0, :cond_69

    .line 269
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBattery(I)V

    goto :goto_69

    .line 271
    :cond_4f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isConnectedEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 272
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isTruthyState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 273
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_6a

    .line 274
    :cond_5f
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isFalsyState(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 275
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    goto :goto_6a

    .line 271
    :cond_69
    :goto_69
    nop

    .line 278
    :cond_6a
    :goto_6a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onRawEvent(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 280
    return-void
.end method

.method public static hasHeartRateEntity()Z
    .registers 2

    .line 115
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

    .line 116
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isHeartRateEntity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_1e
    goto :goto_a

    .line 120
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private static isBatteryEntity(Ljava/lang/String;)Z
    .registers 2

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "battery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isConnectedEntity(Ljava/lang/String;)Z
    .registers 2

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 309
    const-string v0, "_connected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, ".connected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private static isFalsyState(Ljava/lang/String;)Z
    .registers 3

    .line 322
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 323
    return v0

    .line 325
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 326
    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "false"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "disconnected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 327
    const-string v1, "no"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    :cond_34
    const/4 v0, 0x1

    .line 326
    :cond_35
    return v0
.end method

.method private static isHeartRateEntity(Ljava/lang/String;)Z
    .registers 2

    .line 298
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 299
    const-string v0, "heartrate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "heart_rate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 300
    const-string v0, "_hr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "_hr_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    .line 299
    :goto_28
    return p0
.end method

.method public static isRunning()Z
    .registers 1

    .line 79
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    return v0
.end method

.method private static isTruthyState(Ljava/lang/String;)Z
    .registers 3

    .line 313
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 314
    return v0

    .line 316
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 317
    const-string v1, "1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "connected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 318
    const-string v1, "yes"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    :cond_34
    const/4 v0, 0x1

    .line 317
    :cond_35
    return v0
.end method

.method private static parseIntSafe(Ljava/lang/String;I)I
    .registers 4

    .line 364
    if-nez p0, :cond_3

    .line 365
    return p1

    .line 368
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 369
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 370
    if-lez v0, :cond_14

    .line 371
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 373
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    return p0

    .line 374
    :catchall_19
    move-exception p0

    .line 375
    return p1
.end method

.method private static readBody(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    if-gtz p1, :cond_5

    .line 235
    const-string p0, ""

    return-object p0

    .line 237
    :cond_5
    const/high16 v0, 0x10000

    if-le p1, v0, :cond_b

    .line 238
    const/high16 p1, 0x10000

    .line 240
    :cond_b
    new-array v0, p1, [B

    .line 241
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 242
    :goto_f
    if-ge v2, p1, :cond_1c

    .line 243
    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 244
    if-gez v3, :cond_1a

    .line 245
    goto :goto_1c

    .line 247
    :cond_1a
    add-int/2addr v2, v3

    .line 248
    goto :goto_f

    .line 249
    :cond_1c
    :goto_1c
    new-instance p0, Ljava/lang/String;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0
.end method

.method private static rememberEntity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 152
    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3d

    .line 155
    :cond_9
    if-eqz p1, :cond_c

    goto :goto_e

    :cond_c
    const-string p1, ""

    .line 156
    :goto_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    new-instance v1, Lcom/isaigu/gymapp/wearable/HaEntityRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/isaigu/gymapp/wearable/HaEntityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_1c
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const/16 p1, 0x18

    if-le p0, p1, :cond_3c

    .line 158
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 159
    sget-object p1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    goto :goto_1c

    .line 161
    :cond_3c
    return-void

    .line 153
    :cond_3d
    :goto_3d
    return-void
.end method

.method public static declared-synchronized resetSession()V
    .registers 2

    const-class v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;

    monitor-enter v0

    .line 107
    const/4 v1, 0x0

    :try_start_4
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->postCount:I

    .line 108
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    .line 109
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->lastEntity:Ljava/lang/String;

    .line 110
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->entityHistory:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 111
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_16

    .line 112
    monitor-exit v0

    return-void

    .line 106
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized start(Landroid/content/Context;)V
    .registers 6

    const-class v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;

    monitor-enter v0

    .line 45
    :try_start_3
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5c

    if-eqz v1, :cond_9

    .line 46
    monitor-exit v0

    return-void

    .line 48
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHaPort(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    .line 49
    const-string p0, ""

    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->bindError:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_5c

    .line 51
    const/4 p0, 0x0

    :try_start_14
    new-instance v1, Ljava/net/ServerSocket;

    sget v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    const/16 v3, 0x10

    const-string v4, "0.0.0.0"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    .line 52
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    .line 53
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/isaigu/gymapp/wearable/NotifyHaServer$AcceptLoop;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer$AcceptLoop;-><init>(Lcom/isaigu/gymapp/wearable/NotifyHaServer$1;)V

    const-string v4, "xems-ha-server"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->acceptThread:Ljava/lang/Thread;

    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 55
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->acceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 56
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_41} :catch_42
    .catchall {:try_start_14 .. :try_end_41} :catchall_5c

    .line 62
    goto :goto_5a

    .line 57
    :catch_42
    move-exception v1

    .line 58
    const/4 v2, 0x0

    :try_start_44
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    .line 59
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    :cond_51
    const-string v1, "bind failed"

    :goto_53
    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->bindError:Ljava/lang/String;

    .line 60
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    .line 61
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_5c

    .line 63
    :goto_5a
    monitor-exit v0

    return-void

    .line 44
    :catchall_5c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stop()V
    .registers 3

    const-class v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;

    monitor-enter v0

    .line 66
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    .line 67
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 69
    :try_start_b
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_1b

    .line 71
    goto :goto_12

    .line 70
    :catch_11
    move-exception v1

    .line 72
    :goto_12
    :try_start_12
    sput-object v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    .line 74
    :cond_14
    sput-object v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->acceptThread:Ljava/lang/Thread;

    .line 75
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1b

    .line 76
    monitor-exit v0

    return-void

    .line 65
    :catchall_1b
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

    .line 332
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 333
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

    .line 334
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

    .line 340
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 341
    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 342
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 343
    return-void
.end method
