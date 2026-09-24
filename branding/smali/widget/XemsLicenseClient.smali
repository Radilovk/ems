.class public final Lcom/isaigu/gymapp/widget/XemsLicenseClient;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;
    }
.end annotation


# static fields
.field static final AUTO_CHECK_MS:J = 0x2932e00L

.field static final K_UPDATE_CHECKED:Ljava/lang/String; = "update_checked"

.field static final K_UPDATE_SKIPPED:Ljava/lang/String; = "update_skipped"

.field static final TIMEOUT_MS:I = 0x2710

.field private static volatile autoAsked:Z

.field private static volatile lastUpdate:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

.field private static final main:Landroid/os/Handler;

.field private static volatile refreshing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .prologue
    .line 37
    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z

    return p0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;
    .registers 1

    .prologue
    .line 37
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->lastUpdate:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    return-object p0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    return-object v0
.end method

.method public static activate(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 71
    if-nez p1, :cond_14

    const-string v0, ""

    .line 72
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    .line 73
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reset()V

    .line 74
    const-string v0, "reset"

    invoke-static {p2, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    .line 102
    :goto_13
    return-void

    .line 71
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 77
    :cond_19
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->applyLocalCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 78
    const-string v0, "code"

    invoke-static {p2, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    goto :goto_13

    .line 81
    :cond_25
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v1

    if-nez v1, :cond_32

    .line 82
    const/4 v0, 0x0

    const-string v1, "no_server"

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    goto :goto_13

    .line 85
    :cond_32
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    const-string v0, "xems-license"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_13
.end method

.method static appCode(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 364
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 365
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_11

    .line 367
    :goto_10
    return v0

    .line 366
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method static appVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 373
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 374
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 376
    :goto_f
    return-object v0

    .line 375
    :catch_10
    move-exception v0

    .line 376
    const-string v0, ""

    goto :goto_f
.end method

.method public static autoCheck(Landroid/app/Activity;)V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 184
    :try_start_2
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoAsked:Z

    if-nez v0, :cond_e

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-nez v0, :cond_f

    .line 212
    :cond_e
    :goto_e
    return-void

    .line 187
    :cond_f
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoAsked:Z

    .line 188
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 190
    const-string v1, "update_checked"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 191
    cmp-long v1, v4, v6

    if-lez v1, :cond_32

    cmp-long v1, v4, v2

    if-gtz v1, :cond_32

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    cmp-long v1, v2, v4

    if-ltz v1, :cond_e

    .line 194
    :cond_32
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;

    invoke-direct {v2, v0, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;-><init>(Landroid/content/SharedPreferences;Landroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->checkUpdate(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3e} :catch_3f

    goto :goto_e

    .line 210
    :catch_3f
    move-exception v0

    goto :goto_e
.end method

.method public static checkUpdate(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V
    .registers 5

    .prologue
    .line 143
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-nez v0, :cond_d

    .line 144
    const/4 v0, 0x0

    const-string v1, "no_server"

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    .line 170
    :goto_c
    return-void

    .line 147
    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V

    const-string v2, "xems-update"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_c
.end method

.method static common(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"device_id\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"device_model\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"android\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"app_version\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 324
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"app_code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"lang\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_87

    const-string v0, "bg"

    :goto_7a
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    return-object v0

    .line 326
    :cond_87
    const-string v0, "en"

    goto :goto_7a
.end method

.method public static downloadAndInstall(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V
    .registers 6

    .prologue
    .line 252
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    const-string v2, "xems-update-download"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 284
    return-void
.end method

.method static hex([B)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    array-length v3, p0

    move v0, v1

    :goto_8
    if-ge v0, v3, :cond_23

    aget-byte v4, p0, v0

    .line 383
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 385
    :cond_23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2710

    const/4 v4, 0x0

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->server()Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_7
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 332
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 334
    :cond_1a
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 335
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 337
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 338
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v1, "User-Agent"

    const-string v2, "XEMS-Android"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    if-eqz p2, :cond_6a

    .line 341
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 342
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 344
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 345
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 347
    :cond_6a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 348
    const/16 v2, 0x190

    if-ge v1, v2, :cond_91

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 349
    :goto_76
    if-nez v0, :cond_96

    .line 350
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_91
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_76

    .line 352
    :cond_96
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 353
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 355
    :goto_9f
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_a9

    .line 356
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9f

    .line 358
    :cond_a9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 359
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static lastUpdate()Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->lastUpdate:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    return-object v0
.end method

.method static offer(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V
    .registers 5

    .prologue
    .line 216
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0430\u043b\u0438\u0447\u043d\u0430 \u0435 \u0432\u0435\u0440\u0441\u0438\u044f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    iget-object v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_71

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u041d\u043e\u0432\u043e \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435"

    .line 219
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 220
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez v0, :cond_74

    const/4 v0, 0x1

    .line 221
    :goto_50
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0418\u0437\u0442\u0435\u0433\u043b\u0438 \u0438 \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    iget-boolean v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez v1, :cond_6d

    .line 238
    const-string v1, "\u041f\u043e-\u043a\u044a\u0441\u043d\u043e"

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$6;

    invoke-direct {v2, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$6;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    :cond_6d
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 248
    :goto_70
    return-void

    .line 217
    :cond_71
    const-string v0, ""
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_73} :catch_76

    goto :goto_34

    .line 220
    :cond_74
    const/4 v0, 0x0

    goto :goto_50

    .line 246
    :catch_76
    move-exception v0

    goto :goto_70
.end method

.method private static post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 389
    if-nez p0, :cond_3

    .line 398
    :goto_2
    return-void

    .line 392
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$8;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private static postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 401
    if-nez p0, :cond_3

    .line 410
    :goto_2
    return-void

    .line 404
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$9;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method static refreshIfDue(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 106
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z

    if-nez v0, :cond_16

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "server"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->source()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 133
    :cond_16
    :goto_16
    return-void

    .line 109
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->lastCheckMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    .line 112
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z

    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;-><init>(Landroid/content/Context;)V

    const-string v2, "xems-license-refresh"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_16
.end method

.method public static serverConfigured()Z
    .registers 1

    .prologue
    .line 64
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->server()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
