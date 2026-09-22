.class public final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"


# static fields
.field public static final ACTION_BATTERY_READ:Ljava/lang/String; = "com.mc.xiaomi.tasker.batteryRead"

.field public static final ACTION_BATTERY_READ_LEGACY:Ljava/lang/String; = "com.mc.miband.tasker.batteryRead"

.field public static final ACTION_CONNECT:Ljava/lang/String; = "com.mc.xiaomi.connectToBand"

.field public static final ACTION_CONNECT_LEGACY:Ljava/lang/String; = "com.mc.miband.connectToBand"

.field public static final ACTION_GB_START_HR:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR"

.field public static final ACTION_GB_STOP_HR:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.command.STOP_REALTIME_HR"

.field public static final ACTION_HR_DISABLE:Ljava/lang/String; = "com.mc.xiaomi.taskerHeartDisable"

.field public static final ACTION_HR_DISABLE_LEGACY:Ljava/lang/String; = "com.mc.miband.taskerHeartDisable"

.field public static final ACTION_HR_ENABLE:Ljava/lang/String; = "com.mc.xiaomi.taskerHeartEnable"

.field public static final ACTION_HR_ENABLE_LEGACY:Ljava/lang/String; = "com.mc.miband.taskerHeartEnable"

.field public static final ACTION_NOTIFY_MODE_ENABLE:Ljava/lang/String; = "com.mc.xiaomi.setNotifyMode.enable"

.field public static final ACTION_NOTIFY_MODE_ENABLE_LEGACY:Ljava/lang/String; = "com.mc.miband.setNotifyMode.enable"

.field public static final ACTION_RECONNECT:Ljava/lang/String; = "com.mc.xiaomi.reconnectToBand"

.field public static final ACTION_RECONNECT_LEGACY:Ljava/lang/String; = "com.mc.miband.reconnectToBand"

.field public static final ACTION_SLEEP_HEART_ENABLE:Ljava/lang/String; = "com.mc.xiaomi.sleepHeartEnable"

.field public static final ACTION_SLEEP_HEART_ENABLE_LEGACY:Ljava/lang/String; = "com.mc.miband.sleepHeartEnable"

.field public static final ACTION_SYNC_DATA:Ljava/lang/String; = "com.mc.xiaomi.syncData"

.field public static final ACTION_SYNC_DATA_LEGACY:Ljava/lang/String; = "com.mc.miband.syncData"

.field private static final AUTO_REDUCE_COOLDOWN_MS:J = 0x2710L

.field private static final CONNECT_STEP_DELAY_MS:J = 0x190L

.field private static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final GB_PACKAGE:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge"

.field public static final GB_PACKAGE_NIGHTLY:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.nightly"

.field private static final KEEPALIVE_INTERVAL_MS:J = 0x3a98L

.field public static final NOTIFY_PACKAGE:Ljava/lang/String; = "com.mc.xiaomi1"

.field private static final RECEIVER_EXPORTED_FLAG:I = 0x2

.field private static bandConnected:Z

.field private static batteryEventCount:I

.field private static hrEventCount:I

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static final keepaliveRunnable:Ljava/lang/Runnable;

.field private static lastAutoReduceMs:J

.field private static lastBattery:I

.field private static lastEventAction:Ljava/lang/String;

.field private static lastEventTimeMs:J

.field private static lastHr:I

.field private static lastHrSource:Ljava/lang/String;

.field private static listeningActive:Z

.field private static final mainHandler:Landroid/os/Handler;

.field private static receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

.field private static receiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    .line 73
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 74
    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastBattery:I

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 80
    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 18
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Z)V
    .registers 2

    .line 18
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendHrEnableSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .line 18
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .registers 1

    .line 18
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStart(Landroid/content/Context;)V

    return-void
.end method

.method private static appContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 85
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 86
    return-void
.end method

.method public static beginListening(Landroid/content/Context;)V
    .registers 5

    .line 133
    if-eqz p0, :cond_33

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_33

    .line 136
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->registerReceiver(Landroid/content/Context;)V

    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 138
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 139
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 140
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    .line 141
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 142
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 143
    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    .line 144
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->wakeNotifyApp(Landroid/content/Context;)V

    .line 145
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->scheduleConnectSequence(Landroid/content/Context;)V

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->startKeepalive()V

    .line 147
    sget-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 148
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 149
    return-void

    .line 134
    :cond_33
    :goto_33
    return-void
.end method

.method public static getBatteryEventCount()I
    .registers 1

    .line 253
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    return v0
.end method

.method public static getHrEventCount()I
    .registers 1

    .line 249
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    return v0
.end method

.method public static getLastBattery()I
    .registers 1

    .line 257
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastBattery:I

    return v0
.end method

.method public static getLastEventAction()Ljava/lang/String;
    .registers 1

    .line 261
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastEventTimeMs()J
    .registers 2

    .line 265
    sget-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide v0
.end method

.method public static getLastHeartRate()I
    .registers 1

    .line 241
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    return v0
.end method

.method public static getLastHrSource()Ljava/lang/String;
    .registers 1

    .line 269
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    return-object v0
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .line 448
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_a

    .line 449
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 451
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 452
    return v1

    .line 455
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 456
    if-nez v0, :cond_17

    .line 457
    return v1

    .line 459
    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 460
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 461
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_31

    .line 462
    goto :goto_39

    .line 464
    :cond_31
    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_3d

    if-eqz v3, :cond_39

    .line 465
    const/4 v0, 0x1

    return v0

    .line 459
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 469
    :cond_3c
    goto :goto_3e

    .line 468
    :catchall_3d
    move-exception v0

    .line 470
    :goto_3e
    return v1
.end method

.method public static isBandConnected()Z
    .registers 1

    .line 245
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    return v0
.end method

.method public static isGadgetbridgeInstalled(Landroid/content/Context;)Z
    .registers 2

    .line 109
    const-string v0, "nodomain.freeyourgadget.gadgetbridge"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 110
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 109
    :goto_14
    return p0
.end method

.method public static isListeningActive()Z
    .registers 1

    .line 237
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isNotifyInstalled(Landroid/content/Context;)Z
    .registers 2

    .line 105
    const-string v0, "com.mc.xiaomi1"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 114
    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_6

    goto :goto_1d

    .line 117
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 119
    const/4 v1, 0x1

    :try_start_b
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_11
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 120
    return v1

    .line 122
    :catchall_f
    move-exception v2

    goto :goto_13

    .line 121
    :catch_11
    move-exception v2

    .line 123
    nop

    .line 125
    :goto_13
    :try_start_13
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    .line 126
    :catchall_1b
    move-exception p0

    .line 127
    return v0

    .line 115
    :cond_1d
    :goto_1d
    return v0
.end method

.method private static maybeAutoReduce(I)V
    .registers 8

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 475
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 476
    if-nez v2, :cond_b

    .line 477
    return-void

    .line 479
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

    .line 483
    :cond_1c
    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastAutoReduceMs:J

    .line 484
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->reduceStrengthOnRunningItems(Landroid/content/Context;)V

    .line 485
    return-void

    .line 481
    :cond_22
    :goto_22
    return-void
.end method

.method static onBandConnected()V
    .registers 2

    .line 216
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 217
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 218
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 219
    return-void
.end method

.method static onBandDisconnected()V
    .registers 2

    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 223
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 224
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 225
    return-void
.end method

.method static onBattery(I)V
    .registers 2

    .line 228
    if-ltz p0, :cond_14

    const/16 v0, 0x64

    if-gt p0, v0, :cond_14

    .line 229
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    .line 230
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastBattery:I

    .line 231
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateBattery(I)V

    .line 232
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 234
    :cond_14
    return-void
.end method

.method static onHeartRate(ILjava/lang/String;)V
    .registers 3

    .line 200
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_3a

    const/16 v0, 0x28

    if-lt p0, v0, :cond_3a

    const/16 v0, 0xdc

    if-le p0, v0, :cond_d

    goto :goto_3a

    .line 203
    :cond_d
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 204
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 205
    if-eqz p1, :cond_18

    goto :goto_1a

    :cond_18
    const-string p1, ""

    :goto_1a
    sput-object p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    .line 206
    sget-boolean p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 207
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 208
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 209
    if-eqz p1, :cond_39

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 210
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 211
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->maybeAutoReduce(I)V

    .line 213
    :cond_39
    return-void

    .line 201
    :cond_3a
    :goto_3a
    return-void
.end method

.method static onRawEvent(Ljava/lang/String;)V
    .registers 3

    .line 194
    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    const-string p0, ""

    :goto_5
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 197
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 1

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 102
    return-void
.end method

.method public static openNotifyApp(Landroid/content/Context;)V
    .registers 3

    .line 152
    if-nez p0, :cond_3

    .line 153
    return-void

    .line 156
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.mc.xiaomi1"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_17

    .line 159
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_18

    .line 163
    :cond_17
    goto :goto_19

    .line 162
    :catchall_18
    move-exception p0

    .line 164
    :goto_19
    return-void
.end method

.method private static reduceStrengthOnRunningItems(Landroid/content/Context;)V
    .registers 5

    .line 488
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 489
    if-nez v0, :cond_7

    .line 490
    return-void

    .line 492
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result p0

    .line 494
    :try_start_b
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 495
    if-nez v0, :cond_12

    .line 496
    return-void

    .line 498
    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 499
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 500
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_36

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_32

    .line 501
    goto :goto_36

    .line 503
    :cond_32
    neg-int v3, p0

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_3a

    .line 498
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 506
    :cond_39
    goto :goto_3b

    .line 505
    :catchall_3a
    move-exception p0

    .line 507
    :goto_3b
    return-void
.end method

.method private static registerReceiver(Landroid/content/Context;)V
    .registers 4

    .line 411
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_5

    .line 412
    return-void

    .line 414
    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 415
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_14

    .line 416
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    .line 418
    :cond_14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 419
    const-string v1, "com.mc.xiaomi.heartRateGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v1, "com.mc.miband.heartRateGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v1, "com.mc.xiaomi.connected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    const-string v1, "com.mc.miband.connected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string v1, "com.mc.xiaomi.disconnected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v1, "com.mc.miband.disconnected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v1, "com.mc.xiaomi.batteryStatGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v1, "com.mc.miband.batteryStatGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_53

    .line 429
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_58

    .line 431
    :cond_53
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 433
    :goto_58
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 434
    return-void
.end method

.method public static requestConnect()V
    .registers 2

    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    if-nez v0, :cond_7

    .line 169
    return-void

    .line 171
    :cond_7
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 172
    const-string v1, "com.mc.xiaomi.reconnectToBand"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    const-string v1, "com.mc.miband.reconnectToBand"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 175
    return-void
.end method

.method private static scheduleConnectSequence(Landroid/content/Context;)V
    .registers 13

    .line 347
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 348
    const-string v0, "com.mc.xiaomi.setNotifyMode.enable"

    const-string v1, "com.mc.miband.setNotifyMode.enable"

    const-string v2, "com.mc.xiaomi.connectToBand"

    const-string v3, "com.mc.miband.connectToBand"

    const-string v4, "com.mc.xiaomi.sleepHeartEnable"

    const-string v5, "com.mc.miband.sleepHeartEnable"

    const-string v6, "com.mc.xiaomi.taskerHeartEnable"

    const-string v7, "com.mc.miband.taskerHeartEnable"

    const-string v8, "com.mc.xiaomi.tasker.batteryRead"

    const-string v9, "com.mc.miband.tasker.batteryRead"

    const-string v10, "com.mc.xiaomi.syncData"

    const-string v11, "com.mc.miband.syncData"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 362
    const/4 v1, 0x0

    :goto_21
    const-wide/16 v2, 0x190

    const/16 v4, 0xc

    if-ge v1, v4, :cond_39

    .line 363
    aget-object v4, v0, v1

    .line 364
    sget-object v5, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    new-instance v6, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;

    invoke-direct {v6, p0, v4}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    int-to-long v7, v1

    mul-long v7, v7, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    goto :goto_21

    .line 374
    :cond_39
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$3;-><init>(Landroid/content/Context;)V

    const/16 p0, 0xe

    int-to-long v4, p0

    mul-long v4, v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    return-void
.end method

.method private static sendGadgetbridgeStart(Landroid/content/Context;)V
    .registers 4

    .line 294
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isGadgetbridgeInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 295
    return-void

    .line 297
    :cond_7
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 298
    goto :goto_12

    .line 299
    :cond_10
    const-string v0, "nodomain.freeyourgadget.gadgetbridge"

    .line 300
    :goto_12
    new-instance v1, Landroid/content/Intent;

    const-string v2, "nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_32

    .line 305
    const-string v2, "device"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :cond_32
    :try_start_32
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    .line 310
    goto :goto_37

    .line 309
    :catchall_36
    move-exception p0

    .line 311
    :goto_37
    return-void
.end method

.method private static sendGadgetbridgeStop(Landroid/content/Context;)V
    .registers 4

    .line 314
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isGadgetbridgeInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 315
    return-void

    .line 317
    :cond_7
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 318
    goto :goto_12

    .line 319
    :cond_10
    const-string v0, "nodomain.freeyourgadget.gadgetbridge"

    .line 320
    :goto_12
    new-instance v1, Landroid/content/Intent;

    const-string v2, "nodomain.freeyourgadget.gadgetbridge.command.STOP_REALTIME_HR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 323
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_32

    .line 325
    const-string v2, "device"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    :cond_32
    :try_start_32
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    .line 330
    goto :goto_37

    .line 329
    :catchall_36
    move-exception p0

    .line 331
    :goto_37
    return-void
.end method

.method private static sendHrEnableSequence(Landroid/content/Context;Z)V
    .registers 2

    .line 386
    if-eqz p1, :cond_c

    .line 387
    const-string p1, "com.mc.xiaomi.connectToBand"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 388
    const-string p1, "com.mc.miband.connectToBand"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 390
    :cond_c
    const-string p1, "com.mc.xiaomi.taskerHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 391
    const-string p1, "com.mc.miband.taskerHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    const-string p1, "com.mc.xiaomi.sleepHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    const-string p1, "com.mc.miband.sleepHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 394
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStart(Landroid/content/Context;)V

    .line 395
    return-void
.end method

.method static sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 273
    if-eqz p0, :cond_31

    if-nez p1, :cond_5

    goto :goto_31

    .line 276
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    const-string p1, "com.mc.xiaomi1"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getTaskerPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 280
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 281
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    :cond_25
    :try_start_25
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 286
    goto :goto_2a

    .line 285
    :catchall_29
    move-exception p1

    .line 288
    :goto_2a
    const/4 p1, 0x0

    :try_start_2b
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    .line 290
    goto :goto_30

    .line 289
    :catchall_2f
    move-exception p0

    .line 291
    :goto_30
    return-void

    .line 274
    :cond_31
    :goto_31
    return-void
.end method

.method private static startKeepalive()V
    .registers 4

    .line 398
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 399
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    return-void
.end method

.method private static stopKeepalive()V
    .registers 2

    .line 403
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 404
    return-void
.end method

.method public static stopListening(Landroid/content/Context;)V
    .registers 3

    .line 178
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 179
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 180
    return-void

    .line 182
    :cond_6
    const-string v1, "com.mc.xiaomi.taskerHeartDisable"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    const-string v1, "com.mc.miband.taskerHeartDisable"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStop(Landroid/content/Context;)V

    .line 185
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->stopKeepalive()V

    .line 186
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->unregisterReceiver(Landroid/content/Context;)V

    .line 187
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 188
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 189
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 190
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 191
    return-void
.end method

.method public static syncTrainingState()V
    .registers 2

    .line 89
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_24

    .line 93
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 94
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 95
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 97
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 98
    return-void

    .line 91
    :cond_24
    :goto_24
    return-void
.end method

.method private static unregisterReceiver(Landroid/content/Context;)V
    .registers 2

    .line 437
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_9

    goto :goto_18

    .line 441
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_13

    .line 443
    goto :goto_14

    .line 442
    :catchall_13
    move-exception p0

    .line 444
    :goto_14
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 445
    return-void

    .line 438
    :cond_18
    :goto_18
    return-void
.end method

.method private static wakeNotifyApp(Landroid/content/Context;)V
    .registers 3

    .line 335
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.mc.xiaomi1"

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_14

    .line 338
    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 343
    :cond_14
    goto :goto_16

    .line 342
    :catchall_15
    move-exception p0

    .line 344
    :goto_16
    return-void
.end method
