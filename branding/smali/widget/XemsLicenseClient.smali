.class public final Lcom/isaigu/gymapp/widget/XemsLicenseClient;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoRun;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoDone;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$Recheck;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferLater;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$ForceWatch;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;,
        Lcom/isaigu/gymapp/widget/XemsLicenseClient$LicenseChanged;
    }
.end annotation


# static fields
.field static final AI_TIMEOUT_MS:I = 0x7530

.field static final AUTO_CHECK_MS:J = 0x5265c00L

.field static final AUTO_NO_MS:J = 0x1499700L

.field static final AUTO_PENDING_MS:J = 0x1d4c0L

.field static final AUTO_RETRY_MS:J = 0x927c0L

.field static final K_AUTO_NEXT:Ljava/lang/String; = "auto_next"

.field static final K_LATEST:Ljava/lang/String; = "app_latest"

.field static final K_LATEST_AT:Ljava/lang/String; = "app_latest_at"

.field static final K_MAND_CODE:Ljava/lang/String; = "mand_code"

.field static final K_MAND_NAME:Ljava/lang/String; = "mand_name"

.field static final K_MAND_NOTES:Ljava/lang/String; = "mand_notes"

.field static final K_MAND_SHA:Ljava/lang/String; = "mand_sha"

.field static final K_MAND_URL:Ljava/lang/String; = "mand_url"

.field static final K_UPDATE_CHECKED:Ljava/lang/String; = "update_checked"

.field static final K_UPDATE_SKIPPED:Ljava/lang/String; = "update_skipped"

.field private static final RECHECK_TOKEN:Ljava/lang/Object;

.field static final TIMEOUT_MS:I = 0x2710

.field private static volatile autoRunning:Z

.field private static volatile forcing:Z

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

    .line 327
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->RECHECK_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
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

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .prologue
    .line 37
    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoRunning:Z

    return p0
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;
    .registers 1

    .prologue
    .line 37
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->lastUpdate:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    return-object p0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/SharedPreferences;)V
    .registers 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->clearMandatory(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/SharedPreferences;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V
    .registers 2

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->rememberMandatory(Landroid/content/SharedPreferences;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    return-void
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .prologue
    .line 37
    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->forcing:Z

    return p0
.end method

.method public static activate(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V
    .registers 6

    .prologue
    .line 79
    if-nez p1, :cond_14

    const-string v0, ""

    .line 80
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    .line 81
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reset()V

    .line 82
    const/4 v0, 0x1

    const-string v1, "reset"

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    .line 112
    :goto_13
    return-void

    .line 79
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 85
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v1

    if-nez v1, :cond_26

    .line 86
    const/4 v0, 0x0

    const-string v1, "no_server"

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    goto :goto_13

    .line 89
    :cond_26
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    const-string v0, "xems-license"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_13
.end method

.method static appCode(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 885
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 886
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_11

    .line 888
    :goto_10
    return v0

    .line 887
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method public static appName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 465
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 467
    :goto_f
    return-object v0

    .line 466
    :catch_10
    move-exception v0

    .line 467
    const-string v0, ""

    goto :goto_f
.end method

.method static appVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 894
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 895
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 897
    :goto_f
    return-object v0

    .line 896
    :catch_10
    move-exception v0

    .line 897
    const-string v0, ""

    goto :goto_f
.end method

.method public static autoCheck(Landroid/app/Activity;)V
    .registers 13

    .prologue
    const-wide/32 v10, 0x5265c00

    const-wide/16 v8, 0x0

    .line 296
    if-nez p0, :cond_8

    .line 319
    :cond_7
    :goto_7
    return-void

    .line 299
    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->enforce(Landroid/app/Activity;)V

    .line 300
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 303
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    const-string v1, "update_checked"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 306
    cmp-long v1, v4, v8

    if-lez v1, :cond_39

    cmp-long v1, v4, v2

    if-gtz v1, :cond_39

    sub-long v6, v2, v4

    cmp-long v1, v6, v10

    if-gez v1, :cond_39

    .line 307
    sub-long v0, v2, v4

    sub-long v0, v10, v0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->scheduleRecheck(Landroid/app/Activity;J)V

    goto :goto_7

    .line 317
    :catch_37
    move-exception v0

    goto :goto_7

    .line 310
    :cond_39
    const-string v1, "app_latest_at"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 311
    cmp-long v1, v4, v8

    if-lez v1, :cond_5e

    cmp-long v1, v4, v2

    if-gtz v1, :cond_5e

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb800

    cmp-long v1, v2, v4

    if-gez v1, :cond_5e

    const-string v1, "app_latest"

    const/4 v2, 0x0

    .line 312
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appCode(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_7

    .line 315
    :cond_5e
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoDone;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoDone;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->checkUpdate(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V

    .line 316
    const-wide/32 v0, 0x5265c00

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->scheduleRecheck(Landroid/app/Activity;J)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_70} :catch_37

    goto :goto_7
.end method

.method static autoIfNone(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 183
    if-eqz p0, :cond_16

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoRunning:Z

    if-nez v0, :cond_16

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->source()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 191
    :cond_16
    :goto_16
    return-void

    .line 186
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "auto_next"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    .line 189
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoRunning:Z

    .line 190
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoRun;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoRun;-><init>(Landroid/content/Context;)V

    const-string v2, "xems-license-auto"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_16
.end method

.method public static checkUpdate(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V
    .registers 5

    .prologue
    .line 246
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-nez v0, :cond_d

    .line 247
    const/4 v0, 0x0

    const-string v1, "no_server"

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    .line 273
    :goto_c
    return-void

    .line 250
    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V

    const-string v2, "xems-update"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_c
.end method

.method private static clearMandatory(Landroid/content/SharedPreferences;)V
    .registers 3

    .prologue
    .line 385
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mand_code"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mand_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mand_url"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mand_sha"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mand_notes"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 386
    return-void
.end method

.method static common(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 810
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

    .line 811
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

    .line 813
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"app_code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 814
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"lang\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 815
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_af

    const-string v0, "bg"

    :goto_7a
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"setup\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 816
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->isSetupMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 817
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->setupDoneUntold()Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string v0, ",\"setup_done\":true"

    :goto_98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"ems_local\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 818
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->pairedSuits(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    return-object v0

    .line 815
    :cond_af
    const-string v0, "en"

    goto :goto_7a

    .line 817
    :cond_b2
    const-string v0, ""

    goto :goto_98
.end method

.method public static downloadAndInstall(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V
    .registers 6

    .prologue
    .line 599
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    const-string v2, "xems-update-download"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 631
    return-void
.end method

.method static enforce(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 391
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 392
    const-string v1, "mand_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 393
    if-nez v1, :cond_e

    .line 412
    :cond_d
    :goto_d
    return-void

    .line 396
    :cond_e
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appCode(Landroid/content/Context;)I

    move-result v2

    if-gt v1, v2, :cond_1a

    .line 397
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->clearMandatory(Landroid/content/SharedPreferences;)V

    goto :goto_d

    .line 410
    :catch_18
    move-exception v0

    goto :goto_d

    .line 400
    :cond_1a
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;-><init>()V

    .line 401
    iput v1, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionCode:I

    .line 402
    const-string v1, "mand_name"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionName:Ljava/lang/String;

    .line 403
    const-string v1, "mand_url"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->url:Ljava/lang/String;

    .line 404
    const-string v1, "mand_sha"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->sha256:Ljava/lang/String;

    .line 405
    const-string v1, "mand_notes"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    .line 407
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 408
    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->offer(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Z)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_60} :catch_18

    goto :goto_d
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 843
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static hex([B)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    array-length v3, p0

    move v0, v1

    :goto_8
    if-ge v0, v3, :cond_23

    aget-byte v4, p0, v0

    .line 904
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

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 906
    :cond_23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 847
    const/16 v0, 0x2710

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 851
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->server()Ljava/lang/String;

    move-result-object v0

    .line 852
    :goto_5
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 853
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 855
    :cond_18
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

    .line 856
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 857
    const/16 v1, 0x2710

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 858
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 859
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v1, "User-Agent"

    const-string v2, "XEMS-Android"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    if-eqz p2, :cond_6e

    .line 862
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 863
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 865
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 866
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 868
    :cond_6e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 869
    const/16 v2, 0x190

    if-ge v1, v2, :cond_95

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 870
    :goto_7a
    if-nez v0, :cond_9a

    .line 871
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

    .line 869
    :cond_95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_7a

    .line 873
    :cond_9a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 874
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 876
    :goto_a3
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_ad

    .line 877
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a3

    .line 879
    :cond_ad
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 880
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
    .line 241
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->lastUpdate:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    return-object v0
.end method

.method public static manualCheck(Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 420
    :try_start_0
    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u044f\u0432\u0430\u043c\u2026"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-nez v0, :cond_11

    .line 422
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u044a\u0440\u0432\u044a\u0440 \u0437\u0430 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :goto_10
    return-void

    .line 425
    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->checkUpdate(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_10

    .line 426
    :catch_1e
    move-exception v0

    .line 427
    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430\u0442\u0430 \u043d\u0435 \u0443\u0441\u043f\u044f."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method static offer(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Z)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 473
    :try_start_2
    iget-boolean v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->forcing:Z

    if-eqz v2, :cond_b

    .line 497
    :goto_a
    return-void

    .line 476
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-eqz v2, :cond_a7

    const-string v2, "\u0417\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435. \u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0435 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0441\u0435 \u043f\u043e\u043b\u0437\u0432\u0430, \u0434\u043e\u043a\u0430\u0442\u043e \u043d\u0435 \u0433\u043e \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0448.\n\n"

    :goto_16
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u041d\u0430\u043b\u0438\u0447\u043d\u0430 \u0435 \u0432\u0435\u0440\u0441\u0438\u044f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 477
    iget-object v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ab

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 478
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 479
    iget-boolean v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-eqz v2, :cond_ae

    const-string v2, "\u0417\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435"

    :goto_5c
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 480
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-boolean v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez v2, :cond_b1

    move v2, v0

    .line 481
    :goto_69
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u0418\u0437\u0442\u0435\u0433\u043b\u0438 \u0438 \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    new-instance v4, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;

    invoke-direct {v4, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    .line 482
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 483
    iget-boolean v3, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez v3, :cond_b3

    .line 484
    const-string v3, "\u041f\u043e-\u043a\u044a\u0441\u043d\u043e"

    new-instance v4, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferLater;

    invoke-direct {v4, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferLater;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 488
    :goto_86
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 489
    iget-boolean v3, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez v3, :cond_b7

    :goto_8e
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 490
    iget-boolean v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-eqz v0, :cond_9d

    .line 491
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ForceWatch;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ForceWatch;-><init>()V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 493
    :cond_9d
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a0} :catch_a2

    goto/16 :goto_a

    .line 494
    :catch_a2
    move-exception v0

    .line 495
    sput-boolean v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->forcing:Z

    goto/16 :goto_a

    .line 476
    :cond_a7
    :try_start_a7
    const-string v2, ""

    goto/16 :goto_16

    .line 477
    :cond_ab
    const-string v2, ""

    goto :goto_49

    .line 479
    :cond_ae
    const-string v2, "\u041d\u043e\u0432\u043e \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435"

    goto :goto_5c

    :cond_b1
    move v2, v1

    .line 480
    goto :goto_69

    .line 486
    :cond_b3
    const/4 v3, 0x1

    sput-boolean v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->forcing:Z
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_b6} :catch_a2

    goto :goto_86

    :cond_b7
    move v0, v1

    .line 489
    goto :goto_8e
.end method

.method static offerRetry(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 582
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->forcing:Z

    .line 583
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0417\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435"

    .line 584
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 585
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 586
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a"

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    .line 587
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 589
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 590
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ForceWatch;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ForceWatch;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 591
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_36} :catch_37

    .line 595
    :goto_36
    return-void

    .line 592
    :catch_37
    move-exception v0

    .line 593
    sput-boolean v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->forcing:Z

    goto :goto_36
.end method

.method public static openTts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 706
    :cond_12
    const/4 v0, 0x0

    .line 725
    :goto_13
    return-object v0

    .line 708
    :cond_14
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->server()Ljava/lang/String;

    move-result-object v0

    .line 709
    :goto_18
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 710
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 712
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"token\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"text\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 713
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"voice\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"rate\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 714
    invoke-static {p3}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 715
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/v1/tts"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 716
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 718
    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 719
    const-string v2, "User-Agent"

    const-string v3, "XEMS-Android"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v2, "Content-Type"

    const-string v3, "application/json; charset=utf-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 722
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 723
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 724
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_13
.end method

.method static pairedSuits(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "xems_local_store"

    const/4 v4, 0x0

    .line 826
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "paired_macs"

    const-string v4, ""

    .line 827
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 828
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_22
    if-ge v0, v3, :cond_4b

    aget-object v4, v2, v0

    .line 829
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_47

    .line 830
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3c

    .line 831
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    :cond_3c
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_47} :catch_4a

    .line 828
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 836
    :catch_4a
    move-exception v0

    .line 838
    :cond_4b
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 910
    if-nez p0, :cond_3

    .line 919
    :goto_2
    return-void

    .line 913
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public static postBrief(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7530

    .line 671
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    .line 673
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no license server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"token\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    :try_start_51
    const-string v0, "POST"

    const-string v2, "/v1/ai/brief"

    const/16 v3, 0x7530

    invoke-static {v0, v2, v1, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_5c

    move-result-object v0

    .line 682
    :goto_5b
    return-object v0

    .line 680
    :catch_5c
    move-exception v0

    .line 681
    const-string v2, "xems_ai"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brief retry after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v0, "POST"

    const-string v2, "/v1/ai/brief"

    invoke-static {v0, v2, v1, v5}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b
.end method

.method public static postCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 735
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static postCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 740
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 742
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no license server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_1a
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 745
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "card data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"token\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"client_key\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 748
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"data\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 749
    if-eqz p3, :cond_ac

    :goto_6b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    const-string v1, "POST"

    const-string v2, "/v1/card"

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 751
    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 752
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "ok"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    if-eqz v1, :cond_af

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 753
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 749
    :cond_ac
    const-string p3, ""

    goto :goto_6b

    .line 755
    :cond_af
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static postMeasures(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 791
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 793
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no license server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_1a
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 796
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "measures"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"token\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"client_key\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 799
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"items\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    const-string v1, "POST"

    const-string v2, "/v1/measures"

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 801
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ok"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 802
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "measures: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 804
    :cond_ac
    return-void
.end method

.method public static postSession(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 765
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v0

    .line 766
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 767
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no license server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_1a
    if-eqz p4, :cond_36

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    if-eqz p5, :cond_36

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 770
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_3e
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x40

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 773
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 774
    const-string v3, "UTF-8"

    invoke-virtual {p5, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 775
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 776
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"token\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"client_key\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"id\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"sum\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"z\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    const-string v1, "POST"

    const-string v2, "/v1/session"

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 781
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ok"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f5

    .line 782
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 784
    :cond_f5
    return-void
.end method

.method private static postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 922
    if-nez p0, :cond_3

    .line 931
    :goto_2
    return-void

    .line 925
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$6;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method static refreshIfDue(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 122
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

    .line 152
    :cond_16
    :goto_16
    return-void

    .line 125
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->lastCheckMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    .line 128
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z

    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;-><init>(Landroid/content/Context;)V

    const-string v2, "xems-license-refresh"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_16
.end method

.method public static refreshNow(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshIfDue(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method private static rememberMandatory(Landroid/content/SharedPreferences;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V
    .registers 5

    .prologue
    .line 380
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mand_code"

    iget v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionCode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mand_name"

    iget-object v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mand_url"

    iget-object v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mand_sha"

    iget-object v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->sha256:Ljava/lang/String;

    .line 381
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mand_notes"

    iget-object v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    return-void
.end method

.method static saveLatest(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 159
    if-nez p0, :cond_3

    .line 167
    :cond_2
    :goto_2
    return-void

    .line 162
    :cond_3
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->num(Ljava/lang/Object;)J

    move-result-wide v0

    .line 163
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 166
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "app_latest"

    long-to-int v0, v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_latest_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2
.end method

.method static saveStudio(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 171
    if-eqz p1, :cond_2a

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[a-z0-9][a-z0-9-]{3,23}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_client_sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "studio"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    :cond_2a
    return-void
.end method

.method private static scheduleRecheck(Landroid/app/Activity;J)V
    .registers 12

    .prologue
    .line 322
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->RECHECK_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 323
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Recheck;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Recheck;-><init>(Ljava/lang/ref/WeakReference;)V

    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->RECHECK_TOKEN:Ljava/lang/Object;

    .line 324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 323
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 325
    return-void
.end method

.method public static serverConfigured()Z
    .registers 1

    .prologue
    .line 69
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

.method public static ttsUsage(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 690
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 692
    :cond_12
    const/4 v0, 0x0

    .line 694
    :goto_13
    return-object v0

    :cond_14
    const-string v1, "POST"

    const-string v2, "/v1/tts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"token\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",\"usage\":true}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2710

    invoke-static {v1, v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method
