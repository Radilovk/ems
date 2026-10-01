.class public final Lcom/isaigu/gymapp/wearable/XemsAccess;
.super Ljava/lang/Object;
.source "XemsAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/XemsAccess$Step;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static final MAX_POLLS:I = 0x258

.field private static final POLL_MS:J = 0x2bcL

.field private static final PREFS:Ljava/lang/String; = "xems_access"

.field static final REQUEST:I = 0x5753

.field private static running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/XemsAccess;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 25
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/XemsAccess;->running:Z

    return p0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/isaigu/gymapp/wearable/XemsAccess;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;I)Z
    .registers 3

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/XemsAccess;->askedThisVersion(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;I)V
    .registers 2

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/XemsAccess;->markAsked(Landroid/content/Context;I)V

    return-void
.end method

.method private static askedThisVersion(Landroid/content/Context;I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/XemsAccess;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asked_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/XemsAccess;->version(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method private static markAsked(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 101
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/XemsAccess;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asked_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/XemsAccess;->version(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    return-void
.end method

.method static missingRuntime(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1f

    .line 50
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1f
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_39

    .line 56
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_42
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_42

    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 65
    :cond_58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 105
    const-string v0, "xems_access"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static special(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 6

    .prologue
    const/16 v3, 0x17

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 71
    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_32

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    :goto_31
    return-object v0

    .line 74
    :cond_32
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_4d

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_31

    .line 77
    :cond_4d
    const/4 v0, 0x3

    if-ne p1, v0, :cond_62

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_62

    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_31

    .line 80
    :cond_62
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public static start(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 37
    if-eqz p0, :cond_7

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/XemsAccess;->running:Z

    if-eqz v0, :cond_8

    .line 42
    :cond_7
    :goto_7
    return-void

    .line 40
    :cond_8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/XemsAccess;->running:Z

    .line 41
    sget-object v0, Lcom/isaigu/gymapp/wearable/XemsAccess;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;

    invoke-direct {v1, p0, v2, v2}, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;-><init>(Landroid/app/Activity;II)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7
.end method

.method private static version(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 112
    :goto_f
    return v0

    .line 111
    :catch_10
    move-exception v0

    .line 112
    const/4 v0, 0x1

    goto :goto_f
.end method

.method static why(I)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 84
    const-string v0, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    .line 85
    :goto_12
    if-ne p0, v1, :cond_1e

    .line 86
    if-eqz v0, :cond_1b

    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u201e\u041f\u043e\u043a\u0430\u0437\u0432\u0430\u043d\u0435 \u0432\u044a\u0440\u0445\u0443 \u0434\u0440\u0443\u0433\u0438 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f\u201c \u2014 XEMS \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u0441\u0430\u043c \u0441\u043b\u0435\u0434 \u043e\u0431\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435."

    .line 92
    :goto_18
    return-object v0

    .line 84
    :cond_19
    const/4 v0, 0x0

    goto :goto_12

    .line 87
    :cond_1b
    const-string v0, "Allow \"Display over other apps\" \u2014 XEMS reopens by itself after an update."

    goto :goto_18

    .line 89
    :cond_1e
    const/4 v1, 0x2

    if-ne p0, v1, :cond_29

    .line 90
    if-eqz v0, :cond_26

    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435 \u043e\u0442 XEMS \u2014 \u0437\u0430 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f\u0442\u0430."

    goto :goto_18

    :cond_26
    const-string v0, "Allow installs from XEMS \u2014 for the updates."

    goto :goto_18

    .line 92
    :cond_29
    if-eqz v0, :cond_2e

    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 \u043f\u0440\u043e\u043c\u044f\u043d\u0430 \u043d\u0430 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u0438\u0442\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2014 \u0437\u0430 \u0446\u044f\u043b \u0435\u043a\u0440\u0430\u043d \u0431\u0435\u0437 \u043b\u0435\u043d\u0442\u0438\u0442\u0435 \u043d\u0430 Android."

    goto :goto_18

    .line 93
    :cond_2e
    const-string v0, "Allow changing system settings \u2014 for full screen without Android\'s bars."

    goto :goto_18
.end method
