.class public final Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;
.super Landroid/app/Service;
.source "NotifyHaForegroundService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "xems_ble_hr"

.field private static final NOTIFICATION_ID:I = 0x7e060001


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .registers 6

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Direct BLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->getBuildTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/isaigu/gymapp/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    nop

    .line 105
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_37

    .line 106
    const/high16 v2, 0xc000000

    goto :goto_39

    .line 105
    :cond_37
    const/high16 v2, 0x8000000

    .line 108
    :goto_39
    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 109
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_4c

    .line 110
    new-instance v2, Landroid/app/Notification$Builder;

    const-string v3, "xems_ble_hr"

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_51

    .line 111
    :cond_4c
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    :goto_51
    const-string v3, "XEMS \u2014 \u043f\u0443\u043b\u0441 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v4, "XEMS \u2014 band heart rate"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 113
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v3, 0x1080039

    .line 114
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 115
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_79

    .line 118
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 120
    :cond_79
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private ensureChannel()V
    .registers 6

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    .line 84
    return-void

    .line 86
    :cond_7
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 87
    if-nez v0, :cond_12

    .line 88
    return-void

    .line 90
    :cond_12
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    const-string v3, "xems_ble_hr"

    const-string v4, "XEMS pulse sync"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 94
    const-string v2, "Keeps direct BLE heart rate active during training"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 97
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 4

    .line 24
    if-nez p0, :cond_3

    .line 25
    return-void

    .line 27
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    :try_start_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_18

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1b

    .line 33
    :cond_18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1c

    .line 36
    :goto_1b
    goto :goto_1d

    .line 35
    :catchall_1c
    move-exception p0

    .line 37
    :goto_1d
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .registers 4

    .line 40
    if-nez p0, :cond_3

    .line 41
    return-void

    .line 44
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    .line 47
    goto :goto_17

    .line 46
    :catchall_16
    move-exception p0

    .line 48
    :goto_17
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 79
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 1

    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->ensureChannel()V

    .line 54
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 58
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->ensureChannel()V

    .line 60
    const p1, 0x7e060001

    :try_start_6
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->buildNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->startForeground(ILandroid/app/Notification;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    .line 62
    goto :goto_f

    .line 61
    :catchall_e
    move-exception p1

    .line 63
    :goto_f
    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 3

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->shutdown(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 72
    goto :goto_9

    .line 71
    :catchall_8
    move-exception v0

    .line 73
    :goto_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->stopSelf()V

    .line 74
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 75
    return-void
.end method
