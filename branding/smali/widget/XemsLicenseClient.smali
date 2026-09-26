.class public final Lcom/isaigu/gymapp/widget/XemsLicenseClient;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;
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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    .registers 3

    .line 37
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 37
    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z

    return p0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;
    .registers 1

    .line 37
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->lastUpdate:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    return-object p0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    return-object v0
.end method

.method public static activate(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V
    .registers 5

    .line 71
    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 72
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 73
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reset()V

    .line 74
    const-string p0, "reset"

    invoke-static {p2, v1, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    .line 75
    return-void

    .line 77
    :cond_19
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLicense;->applyLocalCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 78
    const-string p0, "code"

    invoke-static {p2, v1, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    .line 79
    return-void

    .line 81
    :cond_25
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-nez v0, :cond_32

    .line 82
    const/4 p0, 0x0

    const-string p1, "no_server"

    invoke-static {p2, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    .line 83
    return-void

    .line 85
    :cond_32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    const-string p0, "xems-license"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    return-void
.end method

.method static appCode(Landroid/content/Context;)I
    .registers 3

    .line 392
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 393
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    return p0

    .line 394
    :catchall_10
    move-exception p0

    .line 395
    return v0
.end method

.method static appVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 401
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 402
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    return-object p0

    .line 403
    :catchall_10
    move-exception p0

    .line 404
    const-string p0, ""

    return-object p0
.end method

.method public static autoCheck(Landroid/app/Activity;)V
    .registers 9

    .line 190
    :try_start_0
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoAsked:Z

    if-nez v0, :cond_3e

    if-eqz p0, :cond_3e

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3e

    .line 193
    :cond_d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoAsked:Z

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 196
    const-string v3, "update_checked"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 197
    cmp-long v3, v6, v4

    if-lez v3, :cond_31

    cmp-long v3, v6, v1

    if-gtz v3, :cond_31

    sub-long/2addr v1, v6

    const-wide/32 v3, 0x2932e00

    cmp-long v5, v1, v3

    if-gez v5, :cond_31

    .line 198
    return-void

    .line 200
    :cond_31
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;

    invoke-direct {v2, v0, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;-><init>(Landroid/content/SharedPreferences;Landroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->checkUpdate(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3f

    .line 217
    goto :goto_40

    .line 191
    :cond_3e
    :goto_3e
    return-void

    .line 216
    :catchall_3f
    move-exception p0

    .line 218
    :goto_40
    return-void
.end method

.method public static checkUpdate(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V
    .registers 4

    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-nez v0, :cond_d

    .line 150
    const/4 p0, 0x0

    const-string v0, "no_server"

    invoke-static {p1, p0, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    .line 151
    return-void

    .line 153
    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V

    const-string p0, "xems-update"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    return-void
.end method

.method static common(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"device_id\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"device_model\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"android\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"app_version\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"app_code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"lang\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "bg"

    goto :goto_6f

    :cond_6d
    const-string v1, "en"

    :goto_6f
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"setup\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->isSetupMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\"ems_local\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->pairedSuits(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 327
    return-object p0
.end method

.method public static downloadAndInstall(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V
    .registers 5

    .line 258
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    const-string p0, "xems-update-download"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 290
    return-void
.end method

.method static hex([B)Ljava/lang/String;
    .registers 7

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_23

    aget-byte v4, p0, v3

    .line 411
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 413
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 358
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->server()Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_4
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 362
    :cond_18
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 363
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 364
    const/16 p0, 0x2710

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 365
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 366
    const-string p0, "Accept"

    const-string v0, "application/json"

    invoke-virtual {p1, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string p0, "User-Agent"

    const-string v0, "XEMS-Android"

    invoke-virtual {p1, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string p0, "UTF-8"

    if-eqz p2, :cond_67

    .line 369
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 370
    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=utf-8"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 372
    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 373
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 375
    :cond_67
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 376
    const/16 v0, 0x190

    if-ge p2, v0, :cond_74

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_78

    :cond_74
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    .line 377
    :goto_78
    if-eqz p1, :cond_9a

    .line 380
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 381
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 383
    :goto_83
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_8d

    .line 384
    invoke-virtual {p2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_83

    .line 386
    :cond_8d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 387
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1

    .line 378
    :cond_9a
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lastUpdate()Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;
    .registers 1

    .line 144
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->lastUpdate:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    return-object v0
.end method

.method static offer(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V
    .registers 5

    .line 222
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0430\u043b\u0438\u0447\u043d\u0430 \u0435 \u0432\u0435\u0440\u0441\u0438\u044f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :cond_30
    const-string v1, ""

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u041d\u043e\u0432\u043e \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435"

    .line 225
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez v1, :cond_4e

    const/4 v1, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    .line 227
    :goto_4f
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0418\u0437\u0442\u0435\u0433\u043b\u0438 \u0438 \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 243
    iget-boolean v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez v0, :cond_6c

    .line 244
    const-string v0, "\u041f\u043e-\u043a\u044a\u0441\u043d\u043e"

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$6;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$6;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    :cond_6c
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_6f
    .catchall {:try_start_0 .. :try_end_6f} :catchall_70

    .line 253
    goto :goto_71

    .line 252
    :catchall_70
    move-exception p0

    .line 254
    :goto_71
    return-void
.end method

.method static pairedSuits(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "xems_local_store"

    .line 342
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "paired_macs"

    const-string v3, ""

    .line 343
    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 344
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    :goto_21
    if-ge v2, v1, :cond_49

    aget-object v3, p0, v2

    .line 345
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_46

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3b

    .line 347
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_4a

    .line 344
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 353
    :cond_49
    goto :goto_4b

    .line 352
    :catchall_4a
    move-exception p0

    .line 354
    :goto_4b
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    .registers 5

    .line 417
    if-nez p0, :cond_3

    .line 418
    return-void

    .line 420
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$8;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method

.method private static postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 5

    .line 429
    if-nez p0, :cond_3

    .line 430
    return-void

    .line 432
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$9;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void
.end method

.method static refreshIfDue(Landroid/content/Context;)V
    .registers 6

    .line 112
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->source()Ljava/lang/String;

    move-result-object v0

    const-string v1, "server"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_3b

    .line 115
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->lastCheckMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-gez v4, :cond_28

    .line 116
    return-void

    .line 118
    :cond_28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z

    .line 119
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;-><init>(Landroid/content/Context;)V

    const-string p0, "xems-license-refresh"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void

    .line 113
    :cond_3b
    :goto_3b
    return-void
.end method

.method public static refreshNow(Landroid/content/Context;)V
    .registers 3

    .line 106
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshIfDue(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public static serverConfigured()Z
    .registers 1

    .line 64
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->server()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
