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
.field public static final ACTION:Ljava/lang/String; = "com.xems.OPEN_BAND_APP"

.field private static final CONNECT_WAIT_MS:J = 0xafc8L

.field static final ICON:Ljava/lang/String; = "xems_band_shortcut"

.field static final PIN_ID:Ljava/lang/String; = "xems_band_pin"

.field private static app:Landroid/content/Context;

.field private static final main:Landroid/os/Handler;

.field private static final timeout:Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->main:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->timeout:Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->timeout:Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;

    return-object v0
.end method

.method private static openXems(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_16

    .line 98
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 101
    :cond_16
    return-void
.end method

.method public static pinToHome(Landroid/app/Activity;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 70
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_f

    move v0, v1

    .line 91
    :goto_e
    return v0

    .line 74
    :cond_f
    const-string v0, "shortcut"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 75
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1f
    move v0, v1

    .line 76
    goto :goto_e

    .line 78
    :cond_21
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xems.OPEN_BAND_APP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/isaigu/gymapp/wearable/BandLaunchActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    new-instance v3, Landroid/content/pm/ShortcutInfo$Builder;

    const-string v4, "xems_band_pin"

    invoke-direct {v3, p0, v4}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "XEMS \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v5, "XEMS band"

    .line 81
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v3

    const-string v4, "\u041e\u0442\u0432\u043e\u0440\u0438 XEMS \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v5, "Open XEMS on the band"

    .line 82
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v3

    .line 83
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "xems_band_shortcut"

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 85
    if-eqz v3, :cond_71

    .line 86
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 88
    :cond_71
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_79} :catch_7b

    move-result v0

    goto :goto_e

    .line 89
    :catch_7b
    move-exception v0

    .line 90
    const-string v2, "BandLaunch.pinToHome"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 91
    goto :goto_e
.end method

.method public static request(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;

    .line 40
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 41
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 42
    const-string v0, "\u041c\u043e\u0434\u0443\u043b\u044a\u0442 \u201e\u0413\u0440\u0438\u0432\u043d\u0430\u201c \u043d\u0435 \u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v1, "The Band module is not unlocked"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->toast(Ljava/lang/String;)V

    .line 65
    :cond_1e
    :goto_1e
    return-void

    .line 45
    :cond_1f
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandLaunch$Launched;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch$Launched;-><init>()V

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->setLaunchCallback(Ljava/lang/Runnable;)V

    .line 46
    const-string v0, ""

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->launch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 49
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 51
    :cond_3f
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0432 XEMS \u2192 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "Set up the band in XEMS \u2192 Settings \u2192 Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->toast(Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->openXems(Landroid/app/Activity;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_1e

    .line 62
    :catch_4e
    move-exception v0

    .line 63
    const-string v1, "BandLaunch.request"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 56
    :cond_55
    :try_start_55
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v1, "Connecting to the band\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->toast(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v0

    if-nez v0, :cond_69

    .line 58
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 60
    :cond_69
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandLaunch;->timeout:Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandLaunch;->timeout:Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_7a} :catch_4e

    goto :goto_1e
.end method

.method static toast(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 104
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandLaunch;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandLaunch$ShowToast;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandLaunch$ShowToast;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method
