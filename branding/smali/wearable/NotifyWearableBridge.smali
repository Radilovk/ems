.class public final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"


# static fields
.field public static final ACTION_BATTERY_READ:Ljava/lang/String; = "com.mc.xiaomi.tasker.batteryRead"

.field public static final ACTION_CONNECT:Ljava/lang/String; = "com.mc.xiaomi.connectToBand"

.field public static final ACTION_HR_DISABLE:Ljava/lang/String; = "com.mc.xiaomi.taskerHeartDisable"

.field public static final ACTION_HR_ENABLE:Ljava/lang/String; = "com.mc.xiaomi.taskerHeartEnable"

.field public static final ACTION_NOTIFY_MODE_ENABLE:Ljava/lang/String; = "com.mc.xiaomi.setNotifyMode.enable"

.field public static final ACTION_RECONNECT:Ljava/lang/String; = "com.mc.xiaomi.reconnectToBand"

.field private static final AUTO_REDUCE_COOLDOWN_MS:J = 0x2710L

.field private static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field private static final KEEPALIVE_INTERVAL_MS:J = 0x7530L

.field public static final NOTIFY_PACKAGE:Ljava/lang/String; = "com.mc.xiaomi1"

.field private static final RECEIVER_EXPORTED_FLAG:I = 0x2

.field private static bandConnected:Z

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static final keepaliveHandler:Landroid/os/Handler;

.field private static final keepaliveRunnable:Ljava/lang/Runnable;

.field private static lastAutoReduceMs:J

.field private static lastBattery:I

.field private static lastHr:I

.field private static listeningActive:Z

.field private static receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

.field private static receiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 54
    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastBattery:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 18
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .line 18
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static appContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 60
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 61
    return-void
.end method

.method public static beginListening(Landroid/content/Context;)V
    .registers 2

    .line 101
    if-eqz p0, :cond_2f

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2f

    .line 106
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->registerReceiver(Landroid/content/Context;)V

    .line 107
    const-string v0, "com.mc.xiaomi.setNotifyMode.enable"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    const-string v0, "com.mc.xiaomi.connectToBand"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    const-string v0, "com.mc.xiaomi.taskerHeartEnable"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    const-string v0, "com.mc.xiaomi.tasker.batteryRead"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 112
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 113
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->startKeepalive()V

    .line 114
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 115
    return-void

    .line 102
    :cond_2f
    :goto_2f
    return-void
.end method

.method public static getLastHeartRate()I
    .registers 1

    .line 189
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    return v0
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .line 253
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_a

    .line 254
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 256
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 257
    return v1

    .line 260
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 261
    if-nez v0, :cond_17

    .line 262
    return v1

    .line 264
    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 266
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_31

    .line 267
    goto :goto_39

    .line 269
    :cond_31
    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_3d

    if-eqz v3, :cond_39

    .line 270
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 274
    :cond_3c
    goto :goto_3e

    .line 273
    :catchall_3d
    move-exception v0

    .line 275
    :goto_3e
    return v1
.end method

.method public static isBandConnected()Z
    .registers 1

    .line 193
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    return v0
.end method

.method public static isListeningActive()Z
    .registers 1

    .line 185
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isNotifyInstalled(Landroid/content/Context;)Z
    .registers 5

    .line 80
    const-string v0, "com.mc.xiaomi1"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    .line 81
    return v1

    .line 83
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 85
    const/4 v2, 0x1

    :try_start_b
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_11
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 86
    return v2

    .line 88
    :catchall_f
    move-exception v3

    goto :goto_13

    .line 87
    :catch_11
    move-exception v3

    .line 89
    nop

    .line 91
    :goto_13
    :try_start_13
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    if-eqz p0, :cond_1a

    .line 92
    return v2

    .line 95
    :cond_1a
    goto :goto_1c

    .line 94
    :catchall_1b
    move-exception p0

    .line 96
    :goto_1c
    return v1
.end method

.method private static maybeAutoReduce(I)V
    .registers 8

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 280
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 281
    if-nez v2, :cond_b

    .line 282
    return-void

    .line 284
    :cond_b
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v3

    if-le p0, v3, :cond_22

    sget-wide v3, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastAutoReduceMs:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x2710

    cmp-long p0, v3, v5

    if-gez p0, :cond_1c

    goto :goto_22

    .line 288
    :cond_1c
    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastAutoReduceMs:J

    .line 289
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->reduceStrengthOnRunningItems(Landroid/content/Context;)V

    .line 290
    return-void

    .line 286
    :cond_22
    :goto_22
    return-void
.end method

.method static onBandConnected()V
    .registers 2

    .line 168
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 169
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 170
    return-void
.end method

.method static onBandDisconnected()V
    .registers 2

    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 174
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 175
    return-void
.end method

.method static onBattery(I)V
    .registers 2

    .line 178
    if-ltz p0, :cond_b

    const/16 v0, 0x64

    if-gt p0, v0, :cond_b

    .line 179
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastBattery:I

    .line 180
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateBattery(I)V

    .line 182
    :cond_b
    return-void
.end method

.method static onHeartRate(I)V
    .registers 2

    .line 155
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_2a

    const/16 v0, 0x28

    if-lt p0, v0, :cond_2a

    const/16 v0, 0xdc

    if-le p0, v0, :cond_d

    goto :goto_2a

    .line 158
    :cond_d
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 159
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 160
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_29

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 162
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 163
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->maybeAutoReduce(I)V

    .line 165
    :cond_29
    return-void

    .line 156
    :cond_2a
    :goto_2a
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 1

    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 77
    return-void
.end method

.method public static openNotifyApp(Landroid/content/Context;)V
    .registers 3

    .line 118
    if-nez p0, :cond_3

    .line 119
    return-void

    .line 122
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.mc.xiaomi1"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_17

    .line 125
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_18

    .line 129
    :cond_17
    goto :goto_19

    .line 128
    :catchall_18
    move-exception p0

    .line 130
    :goto_19
    return-void
.end method

.method private static reduceStrengthOnRunningItems(Landroid/content/Context;)V
    .registers 5

    .line 293
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 294
    if-nez v0, :cond_7

    .line 295
    return-void

    .line 297
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result p0

    .line 299
    :try_start_b
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 300
    if-nez v0, :cond_12

    .line 301
    return-void

    .line 303
    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 304
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 305
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_36

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_32

    .line 306
    goto :goto_36

    .line 308
    :cond_32
    neg-int v3, p0

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_3a

    .line 303
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 311
    :cond_39
    goto :goto_3b

    .line 310
    :catchall_3a
    move-exception p0

    .line 312
    :goto_3b
    return-void
.end method

.method private static registerReceiver(Landroid/content/Context;)V
    .registers 4

    .line 221
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_5

    .line 222
    return-void

    .line 224
    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 225
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_14

    .line 226
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    .line 228
    :cond_14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    const-string v1, "com.mc.xiaomi.heartRateGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "com.mc.xiaomi.connected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "com.mc.xiaomi.disconnected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "com.mc.xiaomi.batteryStatGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_3a

    .line 234
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_3f

    .line 236
    :cond_3a
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    :goto_3f
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 239
    return-void
.end method

.method public static requestConnect()V
    .registers 2

    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    if-nez v0, :cond_7

    .line 135
    return-void

    .line 137
    :cond_7
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 138
    const-string v1, "com.mc.xiaomi.reconnectToBand"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method static sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    const-string p1, "com.mc.xiaomi1"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getTaskerPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 201
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_20

    .line 202
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :cond_20
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method private static startKeepalive()V
    .registers 4

    .line 208
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    return-void
.end method

.method private static stopKeepalive()V
    .registers 2

    .line 213
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method public static stopListening(Landroid/content/Context;)V
    .registers 3

    .line 142
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 143
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 144
    return-void

    .line 146
    :cond_6
    const-string v1, "com.mc.xiaomi.taskerHeartDisable"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->stopKeepalive()V

    .line 148
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->unregisterReceiver(Landroid/content/Context;)V

    .line 149
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 150
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 151
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 152
    return-void
.end method

.method public static syncTrainingState()V
    .registers 2

    .line 64
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_24

    .line 68
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 69
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 70
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 72
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 73
    return-void

    .line 66
    :cond_24
    :goto_24
    return-void
.end method

.method private static unregisterReceiver(Landroid/content/Context;)V
    .registers 2

    .line 242
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_9

    goto :goto_18

    .line 246
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_13

    .line 248
    goto :goto_14

    .line 247
    :catchall_13
    move-exception p0

    .line 249
    :goto_14
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 250
    return-void

    .line 243
    :cond_18
    :goto_18
    return-void
.end method
