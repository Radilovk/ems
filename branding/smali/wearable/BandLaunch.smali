.class public final Lcom/isaigu/gymapp/wearable/BandLaunch;
.super Ljava/lang/Object;
.source "BandLaunch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;,
        Lcom/isaigu/gymapp/wearable/BandLaunch$Launched;,
        Lcom/isaigu/gymapp/wearable/BandLaunch$ShowToast;
    }
.end annotation


# static fields
.field private static final CONNECT_WAIT_MS:J = 0xafc8L

.field private static app:Landroid/content/Context;

.field private static final main:Landroid/os/Handler;

.field private static final timeout:Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->main:Landroid/os/Handler;

    .line 23
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->timeout:Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->timeout:Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;

    return-object v0
.end method

.method private static openXems(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_16

    .line 62
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 65
    :cond_16
    return-void
.end method

.method public static request(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 33
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 34
    const-string v0, "\u041c\u043e\u0434\u0443\u043b\u044a\u0442 \u201e\u0413\u0440\u0438\u0432\u043d\u0430\u201c \u043d\u0435 \u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v1, "The Band module is not unlocked"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->toast(Ljava/lang/String;)V

    .line 57
    :cond_1e
    :goto_1e
    return-void

    .line 37
    :cond_1f
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandLaunch$Launched;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch$Launched;-><init>()V

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->setLaunchCallback(Ljava/lang/Runnable;)V

    .line 38
    const-string v0, ""

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->launch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 41
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 43
    :cond_3f
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0432 XEMS \u2192 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "Set up the band in XEMS \u2192 Settings \u2192 Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->toast(Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->openXems(Landroid/app/Activity;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_1e

    .line 54
    :catch_4e
    move-exception v0

    .line 55
    const-string v1, "BandLaunch.request"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 48
    :cond_55
    :try_start_55
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v1, "Connecting to the band\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->toast(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 50
    const-string v0, "link"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->acquire(Landroid/app/Activity;Ljava/lang/String;)V

    .line 52
    :cond_6b
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandLaunch;->timeout:Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandLaunch;->timeout:Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_7c} :catch_4e

    goto :goto_1e
.end method

.method static toast(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 68
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandLaunch$ShowToast;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandLaunch$ShowToast;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
