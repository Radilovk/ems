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

.field private static acceptThread:Ljava/lang/Thread;

.field private static bindError:Ljava/lang/String;

.field private static boundPort:I

.field private static haHrCount:I

.field private static lastEntity:Ljava/lang/String;

.field private static postCount:I

.field private static volatile running:Z

.field private static serverSocket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->lastEntity:Ljava/lang/String;

    .line 31
    const/16 v1, 0x1fbb

    sput v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    .line 32
    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->bindError:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 21
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    return v0
.end method

.method static synthetic access$200()Ljava/net/ServerSocket;
    .registers 1

    .line 21
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$300(Ljava/net/Socket;)V
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->handleClient(Ljava/net/Socket;)V

    return-void
.end method

.method private static decodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 279
    if-nez p0, :cond_5

    .line 280
    const-string p0, ""

    return-object p0

    .line 282
    :cond_5
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 283
    if-ltz v0, :cond_12

    .line 284
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 286
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

    .line 290
    if-nez p0, :cond_5

    .line 291
    const-string p0, ""

    return-object p0

    .line 293
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

    .line 217
    const-string v0, "state"

    const-string v1, ""

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2a

    .line 221
    :cond_d
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 223
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_24

    :cond_22
    return-object v1

    .line 227
    :cond_23
    goto :goto_25

    .line 226
    :catchall_24
    move-exception v0

    .line 228
    :goto_25
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 218
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public static getBindError()Ljava/lang/String;
    .registers 1

    .line 91
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->bindError:Ljava/lang/String;

    return-object v0
.end method

.method public static getBoundPort()I
    .registers 1

    .line 87
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    return v0
.end method

.method public static getHaHrCount()I
    .registers 1

    .line 79
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    return v0
.end method

.method public static getLastEntity()Ljava/lang/String;
    .registers 1

    .line 83
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->lastEntity:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalUrl()Ljava/lang/String;
    .registers 2

    .line 95
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

    .line 75
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->postCount:I

    return v0
.end method

.method private static handleClient(Ljava/net/Socket;)V
    .registers 13

    .line 117
    const-string v0, "/api/states/"

    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 119
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_105

    .line 122
    const-string v5, "text/plain"

    if-eqz v4, :cond_f8

    :try_start_1e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_26

    goto/16 :goto_f8

    .line 126
    :cond_26
    nop

    .line 127
    nop

    .line 128
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 129
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_105

    .line 130
    const-string v8, ""

    const/4 v9, 0x0

    if-lez v7, :cond_50

    if-le v6, v7, :cond_50

    .line 131
    :try_start_39
    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 132
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_51

    .line 134
    :cond_50
    move-object v4, v8

    :goto_51
    const/4 v6, 0x0

    .line 136
    :goto_52
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7a

    .line 137
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5f

    .line 138
    goto :goto_7a

    .line 140
    :cond_5f
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 141
    const-string v11, "content-length:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_79

    .line 142
    const/16 v6, 0xf

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseIntSafe(Ljava/lang/String;I)I

    move-result v6

    .line 144
    :cond_79
    goto :goto_52

    .line 145
    :cond_7a
    :goto_7a
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->readBody(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 146
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

    .line 147
    :cond_9a
    const-string v0, "{\"message\":\"API running.\"}"

    invoke-static {v2, v7, v6, v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_8a .. :try_end_9f} :catchall_105

    .line 162
    :try_start_9f
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    .line 164
    goto :goto_a4

    .line 163
    :catch_a3
    move-exception p0

    .line 148
    :goto_a4
    return-void

    .line 150
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

    .line 151
    :cond_b5
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->handleStatePost(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"result\":\"ok\",\"entity_id\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v2, v7, v6, v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_a5 .. :try_end_e7} :catchall_105

    .line 162
    :try_start_e7
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    .line 164
    goto :goto_ec

    .line 163
    :catch_eb
    move-exception p0

    .line 156
    :goto_ec
    return-void

    .line 158
    :cond_ed
    const/16 v0, 0x194

    :try_start_ef
    const-string v1, "not found"

    invoke-static {v2, v0, v5, v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_f4
    .catchall {:try_start_ef .. :try_end_f4} :catchall_105

    .line 162
    :try_start_f4
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_10a

    goto :goto_109

    .line 123
    :cond_f8
    :goto_f8
    const/16 v0, 0x190

    :try_start_fa
    const-string v1, "bad request"

    invoke-static {v2, v0, v5, v1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->writeResponse(Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_ff
    .catchall {:try_start_fa .. :try_end_ff} :catchall_105

    .line 162
    :try_start_ff
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_103

    .line 164
    goto :goto_104

    .line 163
    :catch_103
    move-exception p0

    .line 124
    :goto_104
    return-void

    .line 159
    :catchall_105
    move-exception v0

    .line 162
    :try_start_106
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_10a

    .line 164
    :goto_109
    goto :goto_10c

    .line 163
    :catch_10a
    move-exception p0

    .line 165
    nop

    .line 166
    :goto_10c
    return-void
.end method

.method private static handleStatePost(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 188
    if-nez p0, :cond_4

    .line 189
    const-string p0, ""

    .line 191
    :cond_4
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->postCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->postCount:I

    .line 192
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->lastEntity:Ljava/lang/String;

    .line 193
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->extractState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isHeartRateEntity(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ha:"

    const/4 v2, -0x1

    if-eqz v0, :cond_38

    .line 195
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseIntSafe(Ljava/lang/String;I)I

    move-result p1

    .line 196
    if-lez p1, :cond_37

    .line 197
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->haHrCount:I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(ILjava/lang/String;)V

    .line 200
    :cond_37
    goto :goto_67

    :cond_38
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isBatteryEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 201
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->parseIntSafe(Ljava/lang/String;I)I

    move-result p1

    .line 202
    if-ltz p1, :cond_66

    const/16 v0, 0x64

    if-gt p1, v0, :cond_66

    .line 203
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBattery(I)V

    goto :goto_66

    .line 205
    :cond_4c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isConnectedEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 206
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isTruthyState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 207
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_67

    .line 208
    :cond_5c
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isFalsyState(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 209
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    goto :goto_67

    .line 205
    :cond_66
    :goto_66
    nop

    .line 212
    :cond_67
    :goto_67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onRawEvent(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 214
    return-void
.end method

.method private static isBatteryEntity(Ljava/lang/String;)Z
    .registers 2

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "battery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isConnectedEntity(Ljava/lang/String;)Z
    .registers 2

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 242
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

    .line 255
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 256
    return v0

    .line 258
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 259
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

    .line 260
    const-string v1, "no"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    :cond_34
    const/4 v0, 0x1

    .line 259
    :cond_35
    return v0
.end method

.method private static isHeartRateEntity(Ljava/lang/String;)Z
    .registers 2

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 233
    const-string v0, "heartrate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "heart_rate"

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

.method public static isRunning()Z
    .registers 1

    .line 71
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    return v0
.end method

.method private static isTruthyState(Ljava/lang/String;)Z
    .registers 3

    .line 246
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 247
    return v0

    .line 249
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 250
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

    .line 251
    const-string v1, "yes"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    :cond_34
    const/4 v0, 0x1

    .line 250
    :cond_35
    return v0
.end method

.method private static parseIntSafe(Ljava/lang/String;I)I
    .registers 4

    .line 297
    if-nez p0, :cond_3

    .line 298
    return p1

    .line 301
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 302
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 303
    if-lez v0, :cond_14

    .line 304
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 306
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    return p0

    .line 307
    :catchall_19
    move-exception p0

    .line 308
    return p1
.end method

.method private static readBody(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    if-gtz p1, :cond_5

    .line 170
    const-string p0, ""

    return-object p0

    .line 172
    :cond_5
    const/high16 v0, 0x10000

    if-le p1, v0, :cond_b

    .line 173
    const/high16 p1, 0x10000

    .line 175
    :cond_b
    new-array v0, p1, [B

    .line 176
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 177
    :goto_f
    if-ge v2, p1, :cond_1c

    .line 178
    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 179
    if-gez v3, :cond_1a

    .line 180
    goto :goto_1c

    .line 182
    :cond_1a
    add-int/2addr v2, v3

    .line 183
    goto :goto_f

    .line 184
    :cond_1c
    :goto_1c
    new-instance p0, Ljava/lang/String;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static declared-synchronized start(Landroid/content/Context;)V
    .registers 6

    const-class v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;

    monitor-enter v0

    .line 37
    :try_start_3
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5c

    if-eqz v1, :cond_9

    .line 38
    monitor-exit v0

    return-void

    .line 40
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHaPort(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->boundPort:I

    .line 41
    const-string p0, ""

    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->bindError:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_5c

    .line 43
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

    .line 44
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    .line 45
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/isaigu/gymapp/wearable/NotifyHaServer$AcceptLoop;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer$AcceptLoop;-><init>(Lcom/isaigu/gymapp/wearable/NotifyHaServer$1;)V

    const-string v4, "xems-ha-server"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->acceptThread:Ljava/lang/Thread;

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 47
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->acceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 48
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_41} :catch_42
    .catchall {:try_start_14 .. :try_end_41} :catchall_5c

    .line 54
    goto :goto_5a

    .line 49
    :catch_42
    move-exception v1

    .line 50
    const/4 v2, 0x0

    :try_start_44
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    .line 51
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

    .line 52
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    .line 53
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_5c

    .line 55
    :goto_5a
    monitor-exit v0

    return-void

    .line 36
    :catchall_5c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stop()V
    .registers 3

    const-class v0, Lcom/isaigu/gymapp/wearable/NotifyHaServer;

    monitor-enter v0

    .line 58
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z

    .line 59
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 61
    :try_start_b
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_1b

    .line 63
    goto :goto_12

    .line 62
    :catch_11
    move-exception v1

    .line 64
    :goto_12
    :try_start_12
    sput-object v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;

    .line 66
    :cond_14
    sput-object v2, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->acceptThread:Ljava/lang/Thread;

    .line 67
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1b

    .line 68
    monitor-exit v0

    return-void

    .line 57
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

    .line 265
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 266
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

    .line 267
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

    .line 273
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 274
    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 275
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 276
    return-void
.end method
