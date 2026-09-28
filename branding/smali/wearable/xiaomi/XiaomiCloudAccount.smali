.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;
.super Ljava/lang/Object;
.source "XiaomiCloudAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;,
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;,
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;
    }
.end annotation


# static fields
.field static final SERVICE_LOGIN:Ljava/lang/String; = "https://account.xiaomi.com/pass/serviceLogin"

.field static final SERVICE_LOGIN_AUTH2:Ljava/lang/String; = "https://account.xiaomi.com/pass/serviceLoginAuth2"

.field static final SOURCE_LIST:Ljava/lang/String; = "https://hlth.io.mi.com/app/v1/source/get_source_list"

.field private static final UA_API:Ljava/lang/String; = "Android-12-9.8.348i-google-Pixel 4"

.field private static final UA_WEB:Ljava/lang/String; = "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 184
    if-nez p0, :cond_5

    .line 185
    const-string v0, ""

    .line 191
    :goto_4
    return-object v0

    .line 187
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 189
    :cond_31
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_36
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static cleanMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x3a

    const/16 v4, 0xc

    .line 195
    if-nez p0, :cond_9

    .line 196
    const-string v0, ""

    .line 209
    :cond_8
    :goto_8
    return-object v0

    .line 198
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 201
    const/4 v1, 0x0

    :goto_27
    if-ge v1, v4, :cond_36

    .line 202
    if-lez v1, :cond_2e

    .line 203
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :cond_2e
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v1, v1, 0x2

    goto :goto_27

    .line 207
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static collectBand(Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    const-string v0, "detail"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 170
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "mac"

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    if-eqz v1, :cond_9d

    const-string v0, "mac"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    aput-object v0, v2, v7

    const-string v0, "did"

    const-string v3, ""

    .line 171
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 170
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "auth_key"

    const-string v4, ""

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    if-eqz v1, :cond_a0

    const-string v0, "auth_key"

    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_46
    aput-object v0, v3, v7

    const-string v0, "authKey"

    const-string v4, ""

    .line 173
    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    .line 172
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    new-array v4, v5, [Ljava/lang/String;

    const-string v0, "name"

    const-string v5, ""

    invoke-virtual {p0, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    if-eqz v1, :cond_a3

    const-string v0, "name"

    const-string v5, ""

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6c
    aput-object v0, v4, v7

    const-string v0, "model"

    const-string v1, ""

    .line 175
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 174
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->cleanKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->cleanMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-lt v3, v4, :cond_9c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_9c

    .line 179
    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;

    invoke-direct {v3, v2, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_9c
    return-void

    .line 170
    :cond_9d
    const-string v0, ""

    goto :goto_20

    .line 172
    :cond_a0
    const-string v0, ""

    goto :goto_46

    .line 174
    :cond_a3
    const-string v0, ""

    goto :goto_6c
.end method

.method private static collectCookies(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->headers:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 301
    :cond_5
    return-void

    .line 284
    :cond_6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Set-Cookie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v2, v3

    .line 288
    :goto_31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_10

    .line 289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 291
    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 292
    if-lez v6, :cond_80

    .line 293
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 294
    add-int/lit8 v6, v6, 0x1

    if-gez v4, :cond_67

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_67
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_80

    const-string v4, "EXPIRED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 296
    invoke-interface {p1, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_80
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_31
.end method

.method private static enc(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 375
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p0

    .line 377
    :goto_6
    return-object p0

    .line 376
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public static fetchBands(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 60
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    .line 61
    :cond_15
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0438\u043c\u0435\u0439\u043b \u0438 \u043f\u0430\u0440\u043e\u043b\u0430 \u043d\u0430 Xiaomi \u0430\u043a\u0430\u0443\u043d\u0442\u0430."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "an_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->md5Lower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    const-string v0, "_json"

    const-string v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "sid"

    const-string v2, "miothealth"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "_locale"

    const-string v2, "en_US"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "GET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://account.xiaomi.com/pass/serviceLogin?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->query(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "userId="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "; deviceId="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    .line 73
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->body:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseXiaomiJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    const-string v1, "_sign"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v2, "qs"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string v3, "callback"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_bf

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_bf

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c7

    .line 78
    :cond_bf
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "Xiaomi \u0432\u0445\u043e\u0434\u044a\u0442 \u043d\u0435 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438 \u043f\u0440\u0430\u0432\u0438\u043b\u043d\u043e (\u0441\u0442\u044a\u043f\u043a\u0430 1)."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_c7
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 83
    const-string v4, "qs"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v2, "callback"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "_json"

    const-string v2, "true"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "_sign"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "user"

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "hash"

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->md5Upper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "sid"

    const-string v1, "miothealth"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "_locale"

    const-string v1, "en_US"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "POST"

    const-string v1, "https://account.xiaomi.com/pass/serviceLoginAuth2"

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->form(Ljava/util/Map;)[B

    move-result-object v2

    const-string v3, "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    .line 92
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->body:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseXiaomiJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 93
    const-string v0, "code"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 94
    if-eqz v0, :cond_16e

    .line 95
    const-string v0, "description"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v2, "notificationUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_146

    .line 97
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "Xiaomi \u0438\u0441\u043a\u0430 \u043f\u043e\u0442\u0432\u044a\u0440\u0436\u0434\u0435\u043d\u0438\u0435 (2FA/captcha). \u0412\u043b\u0435\u0437 \u0432\u0435\u0434\u043d\u044a\u0436 \u0432 Mi Fitness \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430, \u043f\u043e\u0441\u043b\u0435 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_146
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0412\u0445\u043e\u0434\u044a\u0442 \u043d\u0435 \u043c\u0438\u043d\u0430: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16b

    :goto_159
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16b
    const-string v0, "\u0433\u0440\u0435\u0448\u043d\u0438 \u0434\u0430\u043d\u043d\u0438"

    goto :goto_159

    .line 102
    :cond_16e
    const-string v0, "ssecurity"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    const-string v0, "nonce"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v2, "cUserId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    const-string v3, "location"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_19a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1a2

    .line 107
    :cond_19a
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "Xiaomi \u0432\u0445\u043e\u0434\u044a\u0442 \u043d\u0435 \u0432\u044a\u0440\u043d\u0430 \u043a\u043b\u044e\u0447 \u0437\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430 (\u0441\u0442\u044a\u043f\u043a\u0430 2)."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1a2
    const-string v3, "SHA-1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nonce="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->digest(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64encode([B)Ljava/lang/String;

    move-result-object v3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_217

    const-string v0, "?"

    :goto_1e0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clientSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 115
    const/4 v3, 0x5

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->followForCookies(Ljava/lang/String;Ljava/util/Map;I)V

    .line 116
    const-string v0, "serviceToken"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    if-eqz v0, :cond_20f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21a

    .line 118
    :cond_20f
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "Xiaomi \u0432\u0445\u043e\u0434\u044a\u0442 \u043d\u0435 \u0434\u0430\u0434\u0435 serviceToken (\u0441\u0442\u044a\u043f\u043a\u0430 3)."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_217
    const-string v0, "&"

    goto :goto_1e0

    .line 122
    :cond_21a
    const-string v1, "{\"page_size\":50,\"status\":1}"

    .line 123
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->generateNonce(J)Ljava/lang/String;

    move-result-object v7

    .line 124
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 125
    const-string v4, "data"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "POST"

    const-string v4, "/app/v1/source/get_source_list"

    .line 127
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->signingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-static {v1, v4, v3, v7, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cUserId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; serviceToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; locale=en_us"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    const-string v0, "POST"

    const-string v1, "https://hlth.io.mi.com/app/v1/source/get_source_list"

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->form(Ljava/util/Map;)[B

    move-result-object v2

    const-string v3, "Android-12-9.8.348i-google-Pixel 4"

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    .line 130
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->decryptResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseBands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static varargs firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 350
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1e

    .line 351
    aget-object v1, p0, v0

    if-eqz v1, :cond_1b

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    .line 352
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_1a
    return-object v0

    .line 350
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 355
    :cond_1e
    const-string v0, ""

    goto :goto_1a
.end method

.method private static followForCookies(Ljava/lang/String;Ljava/util/Map;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 260
    const-string v4, ""

    move v6, v5

    move-object v1, p0

    .line 261
    :goto_6
    if-ge v6, p2, :cond_21

    .line 262
    const-string v0, "GET"

    const-string v3, "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_22

    :goto_12
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    .line 263
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->collectCookies(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;Ljava/util/Map;)V

    .line 264
    const-string v3, "serviceToken"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 278
    :cond_21
    return-void

    :cond_22
    move-object v4, v2

    .line 262
    goto :goto_12

    .line 267
    :cond_24
    const-string v3, "Location"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->header(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_21

    .line 271
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 272
    const/16 v3, 0x2f

    const-string v4, "://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_53

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_5f
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->jarToHeader(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 261
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v1, v0

    goto :goto_6
.end method

.method private static form(Ljava/util/Map;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->query(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static header(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->headers:Ljava/util/Map;

    if-nez v0, :cond_7

    move-object v0, v2

    .line 323
    :goto_6
    return-object v0

    .line 318
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 320
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :cond_49
    move-object v0, v2

    .line 323
    goto :goto_6
.end method

.method private static http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 229
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_6a
    .catchall {:try_start_1 .. :try_end_c} :catchall_7d

    .line 230
    :try_start_c
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, p5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 232
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 233
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 234
    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eqz p4, :cond_2f

    .line 237
    const-string v1, "Cookie"

    invoke-virtual {v0, v1, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2f
    if-eqz p2, :cond_46

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 241
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 243
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 244
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 246
    :cond_46
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 247
    const/16 v1, 0x190

    if-lt v2, v1, :cond_65

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 248
    :goto_52
    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->readAll(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;-><init>(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_5f} :catch_81
    .catchall {:try_start_c .. :try_end_5f} :catchall_74

    .line 252
    if-eqz v0, :cond_64

    .line 253
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 248
    :cond_64
    return-object v3

    .line 247
    :cond_65
    :try_start_65
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_81
    .catchall {:try_start_65 .. :try_end_68} :catchall_74

    move-result-object v1

    goto :goto_52

    .line 249
    :catch_6a
    move-exception v0

    move-object v0, v1

    .line 250
    :goto_6c
    :try_start_6c
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v2, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 Xiaomi. \u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0430 \u0438 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_74

    .line 252
    :catchall_74
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_77
    if-eqz v3, :cond_7c

    .line 253
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 255
    :cond_7c
    throw v2

    .line 252
    :catchall_7d
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_77

    .line 249
    :catch_81
    move-exception v1

    goto :goto_6c
.end method

.method private static jarToHeader(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 307
    const-string v1, "; "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 311
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static md5Lower(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x10

    .line 341
    const-string v0, "MD5"

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->digest(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 343
    const/4 v0, 0x0

    :goto_14
    array-length v3, v1

    if-ge v0, v3, :cond_33

    .line 344
    aget-byte v3, v1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v1, v0

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 346
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseBands(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 140
    const/4 v0, 0x0

    .line 141
    if-eqz v3, :cond_21

    .line 142
    const-string v0, "list"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 143
    if-nez v0, :cond_21

    .line 144
    const-string v0, "source_list"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 147
    :cond_21
    if-nez v0, :cond_57

    .line 148
    const-string v0, "list"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v1, v0

    .line 150
    :goto_2a
    if-eqz v1, :cond_48

    .line 151
    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_48

    .line 152
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 153
    if-eqz v3, :cond_3c

    .line 154
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->collectBand(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3c} :catch_3f

    .line 151
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 158
    :catch_3f
    move-exception v0

    .line 159
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "\u041d\u0435\u043e\u0447\u0430\u043a\u0432\u0430\u043d \u043e\u0442\u0433\u043e\u0432\u043e\u0440 \u043e\u0442 Xiaomi (\u043d\u0435 \u043c\u043e\u0433\u0430 \u0434\u0430 \u0433\u043e \u0440\u0430\u0437\u0447\u0435\u0442\u0430)."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_48
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 162
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "\u0410\u043a\u0430\u0443\u043d\u0442\u044a\u0442 \u043d\u044f\u043c\u0430 \u0432\u044a\u0440\u0437\u0430\u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430 \u0441 \u043a\u043b\u044e\u0447. \u0421\u0434\u0432\u043e\u0438 \u044f \u043f\u044a\u0440\u0432\u043e \u0432 Mi Fitness."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_56
    return-object v2

    :cond_57
    move-object v1, v0

    goto :goto_2a
.end method

.method private static parseXiaomiJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    .line 329
    if-nez p0, :cond_1a

    :try_start_2
    const-string v0, ""

    .line 330
    :goto_4
    const-string v1, "&&&START&&&"

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 332
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 329
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1d} :catch_1f

    move-result-object v0

    goto :goto_4

    .line 335
    :catch_1f
    move-exception v0

    .line 336
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "Xiaomi \u0432\u0445\u043e\u0434\u044a\u0442 \u0432\u044a\u0440\u043d\u0430 \u043d\u0435\u0447\u0435\u0442\u0438\u043c \u043e\u0442\u0433\u043e\u0432\u043e\u0440."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static query(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 362
    const/16 v1, 0x26

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :cond_24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 366
    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readAll(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 382
    if-nez p0, :cond_5

    .line 383
    const-string v0, ""

    .line 395
    :goto_4
    return-object v0

    .line 386
    :cond_5
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 387
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 389
    :goto_e
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1d

    .line 390
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_e

    .line 394
    :catch_19
    move-exception v0

    .line 395
    const-string v0, ""

    goto :goto_4

    .line 392
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 393
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2b} :catch_19

    goto :goto_4
.end method
