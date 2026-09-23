.class public final Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;
.super Landroid/app/Service;
.source "NotifyHaForegroundService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "xems_gb_hr"

.field private static final NOTIFICATION_ID:I = 0x7e060001


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .registers 6

    .line 86
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getResolvedGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gadgetbridge HR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const-string v0, "not installed"

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/isaigu/gymapp/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    const/high16 v2, 0x8000000

    .line 91
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_30

    .line 92
    const/high16 v2, 0xc000000

    .line 94
    :cond_30
    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 95
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_43

    .line 96
    new-instance v2, Landroid/app/Notification$Builder;

    const-string v3, "xems_gb_hr"

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_48

    .line 97
    :cond_43
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    :goto_48
    const-string v3, "XEMS \u2014 \u043f\u0443\u043b\u0441 \u0441\u0438\u043d\u0445\u0440\u043e\u043d"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 99
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v3, 0x1080039

    .line 100
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6a

    .line 104
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 106
    :cond_6a
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private ensureChannel()V
    .registers 6

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    .line 70
    return-void

    .line 72
    :cond_7
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 73
    if-nez v0, :cond_12

    .line 74
    return-void

    .line 76
    :cond_12
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    const-string v3, "xems_gb_hr"

    const-string v4, "XEMS pulse sync"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 80
    const-string v2, "Keeps Gadgetbridge HR sync active during training"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 83
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 4

    .line 21
    if-nez p0, :cond_3

    .line 22
    return-void

    .line 24
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    :try_start_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_18

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1b

    .line 30
    :cond_18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1c

    .line 33
    :goto_1b
    goto :goto_1d

    .line 32
    :catchall_1c
    move-exception p0

    .line 34
    :goto_1d
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .registers 4

    .line 37
    if-nez p0, :cond_3

    .line 38
    return-void

    .line 41
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    .line 44
    goto :goto_17

    .line 43
    :catchall_16
    move-exception p0

    .line 45
    :goto_17
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 65
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 1

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->ensureChannel()V

    .line 51
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 55
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->ensureChannel()V

    .line 57
    const p1, 0x7e060001

    :try_start_6
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->buildNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->startForeground(ILandroid/app/Notification;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    .line 59
    goto :goto_f

    .line 58
    :catchall_e
    move-exception p1

    .line 60
    :goto_f
    const/4 p1, 0x1

    return p1
.end method
