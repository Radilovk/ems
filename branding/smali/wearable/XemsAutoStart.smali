.class public final Lcom/isaigu/gymapp/wearable/XemsAutoStart;
.super Landroid/content/BroadcastReceiver;
.source "XemsAutoStart.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "xems_update"

.field private static final NOTE_ID:I = 0x5755


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static notifyUpdated(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .prologue
    const/16 v8, 0x5755

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 48
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 49
    if-nez v0, :cond_f

    .line 70
    :goto_e
    return-void

    .line 52
    :cond_f
    const-string v1, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    move v1, v2

    .line 54
    :goto_20
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_79

    .line 55
    new-instance v5, Landroid/app/NotificationChannel;

    const-string v6, "xems_update"

    if-eqz v1, :cond_76

    const-string v4, "\u041e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f"

    :goto_2e
    const/4 v7, 0x4

    invoke-direct {v5, v6, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 57
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "xems_update"

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    :goto_3c
    const/high16 v5, 0x8000000

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_46

    const/high16 v3, 0x4000000

    :cond_46
    or-int/2addr v3, v5

    .line 63
    invoke-static {p0, v8, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 65
    if-eqz v1, :cond_82

    const-string v3, "XEMS \u0435 \u043e\u0431\u043d\u043e\u0432\u0435\u043d"

    :goto_59
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 66
    if-eqz v1, :cond_85

    const-string v1, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438, \u0437\u0430 \u0434\u0430 \u0433\u043e \u043e\u0442\u0432\u043e\u0440\u0438\u0448"

    :goto_61
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 69
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_e

    :cond_74
    move v1, v3

    .line 52
    goto :goto_20

    .line 55
    :cond_76
    const-string v4, "Updates"

    goto :goto_2e

    .line 59
    :cond_79
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_3c

    .line 65
    :cond_82
    const-string v3, "XEMS updated"

    goto :goto_59

    .line 66
    :cond_85
    const-string v1, "Tap to open"

    goto :goto_61
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 28
    if-eqz p2, :cond_e

    :try_start_2
    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 45
    :cond_e
    :goto_e
    return-void

    .line 31
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_e

    .line 35
    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2e

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_2e
    const/4 v0, 0x1

    .line 37
    :goto_2f
    if-eqz v0, :cond_40

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_34} :catch_35

    goto :goto_e

    .line 42
    :catch_35
    move-exception v0

    .line 43
    const-string v1, "xems"

    const-string v2, "XemsAutoStart"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 36
    :cond_3e
    const/4 v0, 0x0

    goto :goto_2f

    .line 40
    :cond_40
    :try_start_40
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/XemsAutoStart;->notifyUpdated(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_35

    goto :goto_e
.end method
