.class final Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;
.super Ljava/lang/Object;
.source "ClientRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ClientRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FindCard"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final button:Landroid/view/View;

.field private final u:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;->a:Landroid/app/Activity;

    .line 310
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 311
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;->button:Landroid/view/View;

    .line 312
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 316
    const/4 v1, 0x0

    .line 318
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->server()Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_5
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 320
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 322
    :cond_19
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/v1/card/find"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 324
    const/16 v2, 0x2ee0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 325
    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 326
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 327
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 328
    const-string v2, "Content-Type"

    const-string v3, "application/json; charset=utf-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v2, "User-Agent"

    const-string v3, "XEMS-Android"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 332
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 333
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 334
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_b2

    .line 335
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 336
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 337
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 339
    :goto_a1
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_c4

    .line 340
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_ab} :catch_ac

    goto :goto_a1

    .line 349
    :catch_ac
    move-exception v0

    .line 350
    const-string v2, "ClientRow.findCard"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b2
    move-object v0, v1

    .line 352
    :goto_b3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;->button:Landroid/view/View;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 353
    return-void

    .line 342
    :cond_c4
    :try_start_c4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 343
    new-instance v3, Lorg/json/JSONObject;

    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 344
    const-string v0, "url"

    const-string v2, ""

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    const-string v2, "ok"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_e7} :catch_ac

    move-result v2

    if-eqz v2, :cond_b2

    goto :goto_b3
.end method
