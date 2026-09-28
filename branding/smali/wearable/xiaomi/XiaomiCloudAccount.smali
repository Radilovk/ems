.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;
.super Ljava/lang/Object;
.source "XiaomiCloudAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;,
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;,
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;,
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;,
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

.method public static awaitQr(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    .line 334
    const-string v0, "GET"

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;->lpUrl:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;->cookie:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;->timeoutSec:I

    add-int/lit8 v6, v6, 0x14

    mul-int/lit16 v6, v6, 0x3e8

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;ZI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    .line 335
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->body:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseXiaomiJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 336
    const-string v1, "code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_50

    .line 337
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QR \u0432\u0445\u043e\u0434\u044a\u0442 \u043d\u0435 \u043c\u0438\u043d\u0430: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "desc"

    const-string v4, "description"

    const-string v5, "\u0438\u0437\u0442\u0435\u043a\u044a\u043b \u043a\u043e\u0434"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_50
    const-string v1, "ssecurity"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    const-string v2, "location"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8f

    .line 343
    :cond_6c
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QR \u0432\u0445\u043e\u0434\u044a\u0442 \u043c\u0438\u043d\u0430, \u043d\u043e Xiaomi \u043d\u0435 \u0432\u044a\u0440\u043d\u0430 \u043a\u043b\u044e\u0447 (\u043f\u043e\u043b\u0435\u0442\u0430: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_8f
    const-string v3, "nonce"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cUserId"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->complete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;

    move-result-object v0

    return-object v0
.end method

.method static cleanKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 464
    if-nez p0, :cond_5

    .line 465
    const-string v0, ""

    .line 471
    :goto_4
    return-object v0

    .line 467
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

    .line 468
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 469
    :cond_31
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 471
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

    .line 475
    if-nez p0, :cond_9

    .line 476
    const-string v0, ""

    .line 489
    :cond_8
    :goto_8
    return-object v0

    .line 478
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 481
    const/4 v1, 0x0

    :goto_27
    if-ge v1, v4, :cond_36

    .line 482
    if-lez v1, :cond_2e

    .line 483
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    :cond_2e
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 481
    add-int/lit8 v1, v1, 0x2

    goto :goto_27

    .line 487
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

    .line 449
    const-string v0, "detail"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 450
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

    .line 451
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 450
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
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

    .line 453
    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    .line 452
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
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

    .line 455
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 454
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->cleanKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->cleanMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-lt v3, v4, :cond_9c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_9c

    .line 459
    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;

    invoke-direct {v3, v2, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_9c
    return-void

    .line 450
    :cond_9d
    const-string v0, ""

    goto :goto_20

    .line 452
    :cond_a0
    const-string v0, ""

    goto :goto_46

    .line 454
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

    .line 576
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->headers:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 596
    :cond_5
    return-void

    .line 579
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

    .line 580
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

    .line 583
    :goto_31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_10

    .line 584
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 585
    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 586
    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 587
    if-lez v6, :cond_80

    .line 588
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 589
    add-int/lit8 v6, v6, 0x1

    if-gez v4, :cond_67

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_67
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_80

    const-string v4, "EXPIRED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 591
    invoke-interface {p1, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_80
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_31
.end method

.method static complete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    .line 349
    .line 350
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5c

    .line 351
    const-string v0, "SHA-1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->digest(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 351
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64encode([B)Ljava/lang/String;

    move-result-object v1

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0x3f

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_7d

    const-string v0, "?"

    :goto_46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "clientSign="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 355
    :cond_5c
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 356
    const/4 v1, 0x6

    invoke-static {p3, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->followForCookies(Ljava/lang/String;Ljava/util/Map;I)V

    .line 357
    const-string v1, "serviceToken"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    if-eqz v0, :cond_75

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_80

    .line 359
    :cond_75
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "Xiaomi \u0432\u0445\u043e\u0434\u044a\u0442 \u043d\u0435 \u0434\u0430\u0434\u0435 serviceToken."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_7d
    const-string v0, "&"

    goto :goto_46

    .line 361
    :cond_80
    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->sourceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 362
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 364
    :try_start_89
    const-string v3, "ss"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v3, "cu"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string v3, "st"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_98} :catch_a2

    .line 369
    :goto_98
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    .line 367
    :catch_a2
    move-exception v0

    goto :goto_98
.end method

.method private static enc(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 673
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p0

    .line 675
    :goto_6
    return-object p0

    .line 674
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public static fetchBands(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
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

    move-result-object v2

    .line 103
    const-string v0, "nonce"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v3, "cUserId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    const-string v4, "location"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_19a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1a2

    .line 107
    :cond_19a
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "Xiaomi \u0432\u0445\u043e\u0434\u044a\u0442 \u043d\u0435 \u0432\u044a\u0440\u043d\u0430 \u043a\u043b\u044e\u0447 \u0437\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430 (\u0441\u0442\u044a\u043f\u043a\u0430 2)."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1a2
    const-string v4, "SHA-1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nonce="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->digest(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64encode([B)Ljava/lang/String;

    move-result-object v4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_217

    const-string v0, "?"

    :goto_1e0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clientSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 115
    const/4 v4, 0x5

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->followForCookies(Ljava/lang/String;Ljava/util/Map;I)V

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

    .line 121
    :cond_21a
    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->sourceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static fetchQrImage(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 309
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;->imageUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_61
    .catchall {:try_start_1 .. :try_end_e} :catchall_5d

    .line 310
    const/16 v1, 0x4e20

    :try_start_10
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 311
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 312
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "Cookie"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;->cookie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 315
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 316
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 318
    :goto_33
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_50

    .line 319
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_3d} :catch_3e
    .catchall {:try_start_10 .. :try_end_3d} :catchall_47

    goto :goto_33

    .line 323
    :catch_3e
    move-exception v1

    .line 324
    :goto_3f
    :try_start_3f
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v2, "\u041d\u0435 \u043c\u043e\u0433\u0430 \u0434\u0430 \u043f\u043e\u043a\u0430\u0436\u0430 QR \u043a\u043e\u0434\u0430. \u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0430."

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_47

    .line 326
    :catchall_47
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_4a
    if-eqz v3, :cond_4f

    .line 327
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 329
    :cond_4f
    throw v2

    .line 321
    :cond_50
    :try_start_50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 322
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_56} :catch_3e
    .catchall {:try_start_50 .. :try_end_56} :catchall_47

    move-result-object v1

    .line 326
    if-eqz v0, :cond_5c

    .line 327
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 322
    :cond_5c
    return-object v1

    .line 326
    :catchall_5d
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_4a

    .line 323
    :catch_61
    move-exception v0

    move-object v0, v1

    goto :goto_3f
.end method

.method public static fetchWithCookies(Ljava/lang/String;)Ljava/util/List;
    .registers 2
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
    .line 132
    const-string v0, "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->fetchWithCookies(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static fetchWithCookies(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
    .line 137
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->hasPassToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 138
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "\u0412\u0445\u043e\u0434\u044a\u0442 \u043d\u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0438. \u0412\u043b\u0435\u0437 \u0432 Xiaomi \u0430\u043a\u0430\u0443\u043d\u0442\u0430 \u0434\u043e\u043a\u0440\u0430\u0439 \u0438 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_e
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6e

    :cond_16
    const-string v3, "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"

    .line 141
    :goto_18
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 142
    const-string v0, "_json"

    const-string v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "sid"

    const-string v2, "miothealth"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "_locale"

    const-string v2, "en_US"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "GET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://account.xiaomi.com/pass/serviceLogin?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->query(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    .line 146
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->body:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseXiaomiJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 147
    const-string v2, "location"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_70

    .line 149
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "Xiaomi \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0435 \u0438\u0437\u0442\u0435\u043a\u043b\u0430 \u2014 \u0442\u0440\u044f\u0431\u0432\u0430 \u043d\u043e\u0432 \u0432\u0445\u043e\u0434."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    move-object v3, p1

    .line 140
    goto :goto_18

    .line 151
    :cond_70
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->pragmaSecurity(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_82

    .line 153
    const-string v0, "ssecurity"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    :cond_82
    const-string v0, "nonce"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "cUserId"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, p0

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->fetchWithSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static fetchWithSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 177
    if-eqz p5, :cond_8

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_de

    :cond_8
    const-string v3, "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"

    .line 178
    :goto_a
    const-string v0, ""

    .line 179
    if-nez p0, :cond_10

    const-string p0, ""

    .line 180
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_123

    if-eqz p4, :cond_123

    .line 182
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 183
    const-string v0, "_json"

    const-string v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "sid"

    const-string v2, "miothealth"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "_locale"

    const-string v2, "en_US"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "GET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://account.xiaomi.com/pass/serviceLogin?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->query(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->pragmaSecurity(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->headerNames(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 191
    :goto_5b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bd

    if-eqz p1, :cond_bd

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bd

    .line 192
    const-string v0, "SHA-1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nonce="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->digest(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64encode([B)Ljava/lang/String;

    move-result-object v1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v0, 0x3f

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e1

    const-string v0, "?"

    :goto_a7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "clientSign="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 196
    :cond_bd
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 197
    const/4 v0, 0x6

    invoke-static {p3, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->followForCookies(Ljava/lang/String;Ljava/util/Map;I)V

    .line 198
    const-string v0, "serviceToken"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    if-eqz v0, :cond_d6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e4

    .line 200
    :cond_d6
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "Xiaomi \u0432\u0445\u043e\u0434\u044a\u0442 \u043d\u0435 \u0434\u0430\u0434\u0435 serviceToken."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_de
    move-object v3, p5

    .line 177
    goto/16 :goto_a

    .line 194
    :cond_e1
    const-string v0, "&"

    goto :goto_a7

    .line 202
    :cond_e4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_121

    .line 203
    const-string v3, "__ssecurity"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_113

    const-string v1, ""

    .line 205
    :goto_f4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_11c

    .line 206
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xiaomi \u043d\u0435 \u0434\u0430\u0434\u0435 \u043a\u043b\u044e\u0447 \u0437\u0430 \u0434\u043e\u0441\u0442\u044a\u043f (security). \u0417\u0430\u0433\u043b\u0430\u0432\u0438\u044f: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_113
    const-string v3, "__ssecurity"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_f4

    .line 208
    :cond_11c
    invoke-static {v1, p2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->sourceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_121
    move-object v1, p0

    goto :goto_f4

    :cond_123
    move-object v2, v0

    goto/16 :goto_5b
.end method

.method private static varargs firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 648
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1e

    .line 649
    aget-object v1, p0, v0

    if-eqz v1, :cond_1b

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    .line 650
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 653
    :goto_1a
    return-object v0

    .line 648
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 653
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

    .line 545
    const-string v4, ""

    move v6, v5

    move-object v1, p0

    .line 546
    :goto_6
    if-ge v6, p2, :cond_47

    .line 547
    const-string v0, "GET"

    const-string v3, "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_48

    :goto_12
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    .line 548
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->collectCookies(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;Ljava/util/Map;)V

    .line 549
    const-string v3, "extension-pragma"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->header(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 550
    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3f

    .line 552
    :try_start_27
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "ssecurity"

    const-string v7, ""

    invoke-virtual {v4, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3f

    .line 554
    const-string v4, "__ssecurity"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_3f} :catch_8f

    .line 559
    :cond_3f
    :goto_3f
    const-string v3, "serviceToken"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 573
    :cond_47
    return-void

    :cond_48
    move-object v4, v2

    .line 547
    goto :goto_12

    .line 562
    :cond_4a
    const-string v3, "Location"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->header(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_47

    .line 566
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 567
    const/16 v3, 0x2f

    const-string v4, "://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_79

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_79
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    :cond_85
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->jarToHeader(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 546
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v1, v0

    goto/16 :goto_6

    .line 556
    :catch_8f
    move-exception v3

    goto :goto_3f
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
    .line 668
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->query(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hasPassToken(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 386
    if-nez p0, :cond_4

    .line 397
    :cond_3
    :goto_3
    return v1

    .line 389
    :cond_4
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 390
    :goto_b
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 391
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 392
    const-string v4, "passToken="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 393
    const-string v0, "passToken="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_3

    const-string v2, "EXPIRED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    .line 390
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private static header(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 613
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->headers:Ljava/util/Map;

    if-nez v0, :cond_7

    move-object v0, v2

    .line 621
    :goto_6
    return-object v0

    .line 616
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

    .line 617
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

    .line 618
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

    .line 621
    goto :goto_6
.end method

.method private static headerNames(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->headers:Ljava/util/Map;

    if-eqz v0, :cond_40

    .line 226
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    if-eqz v0, :cond_28

    .line 228
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 232
    :cond_40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    .line 507
    const/16 v6, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;ZI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    return-object v0
.end method

.method private static http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;ZI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    .line 512
    const/4 v1, 0x0

    .line 514
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_68
    .catchall {:try_start_1 .. :try_end_c} :catchall_7b

    .line 515
    :try_start_c
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, p5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 517
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 518
    invoke-virtual {v0, p6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 519
    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    if-eqz p4, :cond_2d

    .line 522
    const-string v1, "Cookie"

    invoke-virtual {v0, v1, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_2d
    if-eqz p2, :cond_44

    .line 525
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 526
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 528
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 529
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 531
    :cond_44
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 532
    const/16 v1, 0x190

    if-lt v2, v1, :cond_63

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 533
    :goto_50
    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->readAll(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;-><init>(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_5d} :catch_7f
    .catchall {:try_start_c .. :try_end_5d} :catchall_72

    .line 537
    if-eqz v0, :cond_62

    .line 538
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 533
    :cond_62
    return-object v3

    .line 532
    :cond_63
    :try_start_63
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_7f
    .catchall {:try_start_63 .. :try_end_66} :catchall_72

    move-result-object v1

    goto :goto_50

    .line 534
    :catch_68
    move-exception v0

    move-object v0, v1

    .line 535
    :goto_6a
    :try_start_6a
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v2, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 Xiaomi. \u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0430 \u0438 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_72

    .line 537
    :catchall_72
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_75
    if-eqz v3, :cond_7a

    .line 538
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 540
    :cond_7a
    throw v2

    .line 537
    :catchall_7b
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_75

    .line 534
    :catch_7f
    move-exception v1

    goto :goto_6a
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
    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 601
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "__"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 604
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_32

    .line 605
    const-string v1, "; "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_32
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

    .line 609
    :cond_4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static md5Lower(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x10

    .line 639
    const-string v0, "MD5"

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->digest(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 641
    const/4 v0, 0x0

    :goto_14
    array-length v3, v1

    if-ge v0, v3, :cond_33

    .line 642
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

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 644
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
    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 418
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 420
    const/4 v0, 0x0

    .line 421
    if-eqz v3, :cond_21

    .line 422
    const-string v0, "list"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 423
    if-nez v0, :cond_21

    .line 424
    const-string v0, "source_list"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 427
    :cond_21
    if-nez v0, :cond_57

    .line 428
    const-string v0, "list"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v1, v0

    .line 430
    :goto_2a
    if-eqz v1, :cond_48

    .line 431
    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_48

    .line 432
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 433
    if-eqz v3, :cond_3c

    .line 434
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->collectBand(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3c} :catch_3f

    .line 431
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 438
    :catch_3f
    move-exception v0

    .line 439
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "\u041d\u0435\u043e\u0447\u0430\u043a\u0432\u0430\u043d \u043e\u0442\u0433\u043e\u0432\u043e\u0440 \u043e\u0442 Xiaomi (\u043d\u0435 \u043c\u043e\u0433\u0430 \u0434\u0430 \u0433\u043e \u0440\u0430\u0437\u0447\u0435\u0442\u0430)."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_48
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 442
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "\u0410\u043a\u0430\u0443\u043d\u0442\u044a\u0442 \u043d\u044f\u043c\u0430 \u0432\u044a\u0440\u0437\u0430\u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430 \u0441 \u043a\u043b\u044e\u0447. \u0421\u0434\u0432\u043e\u0438 \u044f \u043f\u044a\u0440\u0432\u043e \u0432 Mi Fitness."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_56
    return-object v2

    :cond_57
    move-object v1, v0

    goto :goto_2a
.end method

.method public static parseSession(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    .line 162
    :try_start_21
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseXiaomiJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 163
    const/4 v2, 0x0

    const-string v3, "ssecurity"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 164
    const/4 v2, 0x1

    const-string v3, "nonce"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 165
    const/4 v2, 0x2

    const-string v3, "cUserId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 166
    const/4 v2, 0x3

    const-string v3, "location"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 167
    const/4 v2, 0x4

    const-string v3, "notificationUrl"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 168
    const/4 v2, 0x5

    const-string v3, "description"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_67} :catch_68

    .line 171
    :goto_67
    return-object v0

    .line 169
    :catch_68
    move-exception v1

    goto :goto_67
.end method

.method private static parseXiaomiJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    .line 627
    if-nez p0, :cond_1a

    :try_start_2
    const-string v0, ""

    .line 628
    :goto_4
    const-string v1, "&&&START&&&"

    .line 629
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 630
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    :cond_14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 627
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1d} :catch_1f

    move-result-object v0

    goto :goto_4

    .line 633
    :catch_1f
    move-exception v0

    .line 634
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "Xiaomi \u0432\u0445\u043e\u0434\u044a\u0442 \u0432\u044a\u0440\u043d\u0430 \u043d\u0435\u0447\u0435\u0442\u0438\u043c \u043e\u0442\u0433\u043e\u0432\u043e\u0440."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static pragmaSecurity(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 212
    const-string v0, "extension-pragma"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->header(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 214
    :cond_e
    const-string v0, ""

    .line 219
    :goto_10
    return-object v0

    .line 217
    :cond_11
    :try_start_11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ssecurity"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1d} :catch_1f

    move-result-object v0

    goto :goto_10

    .line 218
    :catch_1f
    move-exception v0

    .line 219
    const-string v0, ""

    goto :goto_10
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
    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
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

    .line 659
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 660
    const/16 v1, 0x26

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
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

    .line 664
    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readAll(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 680
    if-nez p0, :cond_5

    .line 681
    const-string v0, ""

    .line 693
    :goto_4
    return-object v0

    .line 684
    :cond_5
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 685
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 687
    :goto_e
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1d

    .line 688
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_e

    .line 692
    :catch_19
    move-exception v0

    .line 693
    const-string v0, ""

    goto :goto_4

    .line 690
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 691
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2b} :catch_19

    goto :goto_4
.end method

.method public static refresh(Ljava/lang/String;)Ljava/util/List;
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
    .line 375
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 376
    const-string v1, "ss"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cu"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "st"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->sourceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_1a
    .catch Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError; {:try_start_0 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1e

    move-result-object v0

    return-object v0

    .line 377
    :catch_1c
    move-exception v0

    .line 378
    throw v0

    .line 379
    :catch_1e
    move-exception v0

    .line 380
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u0430\u0442\u0430 Xiaomi \u0441\u0435\u0441\u0438\u044f \u0435 \u0438\u0437\u0442\u0435\u043a\u043b\u0430."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sourceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 402
    const-string v0, "{\"page_size\":50,\"status\":1}"

    .line 403
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->generateNonce(J)Ljava/lang/String;

    move-result-object v6

    .line 404
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 405
    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v0, "POST"

    const-string v2, "/app/v1/source/get_source_list"

    .line 407
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->signingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-static {v0, v2, v1, v6, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; serviceToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; locale=en_us"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 409
    const-string v0, "POST"

    const-string v1, "https://hlth.io.mi.com/app/v1/source/get_source_list"

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->form(Ljava/util/Map;)[B

    move-result-object v2

    const-string v3, "Android-12-9.8.348i-google-Pixel 4"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    .line 410
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->decryptResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseBands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static startQr()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "an_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "xems"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->md5Lower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 265
    const-string v1, "deviceId"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 267
    const-string v0, "sid"

    const-string v3, "miothealth"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v0, "_json"

    const-string v3, "true"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v0, "_locale"

    const-string v3, "en_US"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v0, "GET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://account.xiaomi.com/pass/serviceLogin?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->query(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->jarToHeader(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    .line 271
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->collectCookies(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;Ljava/util/Map;)V

    .line 272
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->body:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseXiaomiJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 273
    const-string v1, "qs"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    const-string v3, "callback"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 275
    const-string v4, "_sign"

    const-string v7, ""

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_ae

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b6

    .line 277
    :cond_ae
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    const-string v1, "Xiaomi \u043d\u0435 \u0434\u0430\u0434\u0435 \u0434\u0430\u043d\u043d\u0438 \u0437\u0430 QR \u0432\u0445\u043e\u0434 (\u0441\u0442\u044a\u043f\u043a\u0430 1)."

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_b6
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 280
    const-string v7, "_qrsize"

    const-string v8, "360"

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v7, "qs"

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v1, "bizDeviceType"

    const-string v7, ""

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v1, "callback"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v1, "_json"

    const-string v3, "true"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "theme"

    const-string v3, ""

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "sid"

    const-string v3, "miothealth"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "needTheme"

    const-string v3, "false"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "showActiveX"

    const-string v3, "false"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v1, "serviceParam"

    const-string v3, ""

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v1, "_local"

    const-string v3, "en_US"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v1, "_sign"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v0, "_dc"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "GET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://account.xiaomi.com/longPolling/loginUrl?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->query(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36"

    .line 294
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->jarToHeader(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->http(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;

    move-result-object v0

    .line 295
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->collectCookies(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;Ljava/util/Map;)V

    .line 296
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->body:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseXiaomiJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 297
    const-string v1, "qr"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    const-string v2, "lp"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_17b

    .line 300
    :cond_15e
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xiaomi \u043d\u0435 \u0434\u0430\u0434\u0435 QR \u043a\u043e\u0434 (\u0441\u0442\u044a\u043f\u043a\u0430 2). \u041f\u043e\u043b\u0435\u0442\u0430: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_17b
    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->jarToHeader(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "timeout"

    const/16 v6, 0x78

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3
.end method
