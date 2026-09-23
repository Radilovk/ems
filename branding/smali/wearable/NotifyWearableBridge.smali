.class public final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"


# static fields
.field public static final ACTION_BATTERY_READ:Ljava/lang/String; = "com.mc.xiaomi.tasker.batteryRead"

.field public static final ACTION_BATTERY_READ_LEGACY:Ljava/lang/String; = "com.mc.miband.tasker.batteryRead"

.field public static final ACTION_CONNECT:Ljava/lang/String; = "com.mc.xiaomi.connectToBand"

.field public static final ACTION_CONNECT_LEGACY:Ljava/lang/String; = "com.mc.miband.connectToBand"

.field public static final ACTION_GB_CONNECTED:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED"

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

.field public static final GB_PACKAGE_NIGHTLY_NO_PEBBLE:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.nightly_nopebble"

.field private static final KEEPALIVE_INTERVAL_MS:J = 0x3a98L

.field public static final NOTIFY_PACKAGE:Ljava/lang/String; = "com.mc.xiaomi1"

.field private static final RECEIVER_EXPORTED_FLAG:I = 0x2

.field private static bandConnected:Z

.field private static batteryEventCount:I

.field private static gbHrEventCount:I

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

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    .line 81
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 82
    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastBattery:I

    .line 87
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 89
    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 18
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    .line 18
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStart(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Z)V
    .registers 2

    .line 18
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendHrEnableSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .line 18
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static appContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 94
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 95
    return-void
.end method

.method public static beginListening(Landroid/content/Context;)V
    .registers 5

    .line 154
    if-eqz p0, :cond_4f

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4f

    .line 157
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->registerReceiver(Landroid/content/Context;)V

    .line 158
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isGadgetbridgeInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 159
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->stop()V

    goto :goto_1c

    .line 161
    :cond_16
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->resetSession()V

    .line 162
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->start(Landroid/content/Context;)V

    .line 164
    :goto_1c
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 165
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 166
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 167
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    .line 168
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    .line 169
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 170
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 171
    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    .line 172
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isGadgetbridgeInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 173
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStart(Landroid/content/Context;)V

    goto :goto_43

    .line 175
    :cond_3d
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->wakeNotifyApp(Landroid/content/Context;)V

    .line 176
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->scheduleConnectSequence(Landroid/content/Context;)V

    .line 178
    :goto_43
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->startKeepalive()V

    .line 179
    sget-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 180
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 181
    return-void

    .line 155
    :cond_4f
    :goto_4f
    return-void
.end method

.method public static getBatteryEventCount()I
    .registers 1

    .line 311
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    return v0
.end method

.method public static getGbHrEventCount()I
    .registers 1

    .line 307
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    return v0
.end method

.method public static getHaEntityListText()Ljava/lang/String;
    .registers 1

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->getEntityListText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHrEventCount()I
    .registers 1

    .line 303
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    return v0
.end method

.method public static getLastBattery()I
    .registers 1

    .line 315
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastBattery:I

    return v0
.end method

.method public static getLastEventAction()Ljava/lang/String;
    .registers 1

    .line 319
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastEventTimeMs()J
    .registers 2

    .line 323
    sget-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide v0
.end method

.method public static getLastHeartRate()I
    .registers 1

    .line 295
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    return v0
.end method

.method public static getLastHrSource()Ljava/lang/String;
    .registers 1

    .line 327
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    return-object v0
.end method

.method public static hasHaHeartRateEntity()Z
    .registers 1

    .line 335
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->hasHeartRateEntity()Z

    move-result v0

    return v0
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .line 511
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_a

    .line 512
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 514
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 515
    return v1

    .line 518
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 519
    if-nez v0, :cond_17

    .line 520
    return v1

    .line 522
    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 523
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 524
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_31

    .line 525
    goto :goto_39

    .line 527
    :cond_31
    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_3d

    if-eqz v3, :cond_39

    .line 528
    const/4 v0, 0x1

    return v0

    .line 522
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 532
    :cond_3c
    goto :goto_3e

    .line 531
    :catchall_3d
    move-exception v0

    .line 533
    :goto_3e
    return v1
.end method

.method public static isBandConnected()Z
    .registers 1

    .line 299
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    return v0
.end method

.method public static isGadgetbridgeInstalled(Landroid/content/Context;)Z
    .registers 1

    .line 118
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isListeningActive()Z
    .registers 1

    .line 291
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isNotifyInstalled(Landroid/content/Context;)Z
    .registers 2

    .line 114
    const-string v0, "com.mc.xiaomi1"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 135
    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_6

    goto :goto_1d

    .line 138
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 140
    const/4 v1, 0x1

    :try_start_b
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_11
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 141
    return v1

    .line 143
    :catchall_f
    move-exception v2

    goto :goto_13

    .line 142
    :catch_11
    move-exception v2

    .line 144
    nop

    .line 146
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

    .line 147
    :catchall_1b
    move-exception p0

    .line 148
    return v0

    .line 136
    :cond_1d
    :goto_1d
    return v0
.end method

.method private static maybeAutoReduce(I)V
    .registers 8

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 538
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 539
    if-nez v2, :cond_b

    .line 540
    return-void

    .line 542
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

    .line 546
    :cond_1c
    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastAutoReduceMs:J

    .line 547
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->reduceStrengthOnRunningItems(Landroid/content/Context;)V

    .line 548
    return-void

    .line 544
    :cond_22
    :goto_22
    return-void
.end method

.method static onBandConnected()V
    .registers 2

    .line 270
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 271
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 272
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 273
    return-void
.end method

.method static onBandDisconnected()V
    .registers 2

    .line 276
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 277
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 278
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 279
    return-void
.end method

.method static onBattery(I)V
    .registers 2

    .line 282
    if-ltz p0, :cond_14

    const/16 v0, 0x64

    if-gt p0, v0, :cond_14

    .line 283
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    .line 284
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastBattery:I

    .line 285
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateBattery(I)V

    .line 286
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 288
    :cond_14
    return-void
.end method

.method static onHeartRate(ILjava/lang/String;)V
    .registers 3

    .line 251
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_4a

    const/16 v0, 0x28

    if-lt p0, v0, :cond_4a

    const/16 v0, 0xdc

    if-le p0, v0, :cond_d

    goto :goto_4a

    .line 254
    :cond_d
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 255
    if-eqz p1, :cond_23

    const-string v0, "gadgetbridge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 256
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    .line 258
    :cond_23
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 259
    if-eqz p1, :cond_28

    goto :goto_2a

    :cond_28
    const-string p1, ""

    :goto_2a
    sput-object p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    .line 260
    sget-boolean p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 261
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 262
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 263
    if-eqz p1, :cond_49

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 264
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 265
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->maybeAutoReduce(I)V

    .line 267
    :cond_49
    return-void

    .line 252
    :cond_4a
    :goto_4a
    return-void
.end method

.method static onRawEvent(Ljava/lang/String;)V
    .registers 3

    .line 245
    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    const-string p0, ""

    :goto_5
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 247
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 248
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 1

    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 111
    return-void
.end method

.method private static openCompanionApp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 198
    if-eqz p0, :cond_1a

    if-nez p1, :cond_5

    goto :goto_1a

    .line 202
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 204
    if-eqz p1, :cond_17

    .line 205
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    .line 209
    :cond_17
    goto :goto_19

    .line 208
    :catchall_18
    move-exception p0

    .line 210
    :goto_19
    return-void

    .line 199
    :cond_1a
    :goto_1a
    return-void
.end method

.method public static openGadgetbridgeApp(Landroid/content/Context;)V
    .registers 2

    .line 188
    if-nez p0, :cond_3

    .line 189
    return-void

    .line 191
    :cond_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_c

    .line 193
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->openCompanionApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    :cond_c
    return-void
.end method

.method public static openNotifyApp(Landroid/content/Context;)V
    .registers 2

    .line 184
    const-string v0, "com.mc.xiaomi1"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->openCompanionApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method private static reduceStrengthOnRunningItems(Landroid/content/Context;)V
    .registers 5

    .line 551
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 552
    if-nez v0, :cond_7

    .line 553
    return-void

    .line 555
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result p0

    .line 557
    :try_start_b
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 558
    if-nez v0, :cond_12

    .line 559
    return-void

    .line 561
    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 562
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 563
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_36

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_32

    .line 564
    goto :goto_36

    .line 566
    :cond_32
    neg-int v3, p0

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_3a

    .line 561
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 569
    :cond_39
    goto :goto_3b

    .line 568
    :catchall_3a
    move-exception p0

    .line 570
    :goto_3b
    return-void
.end method

.method private static registerReceiver(Landroid/content/Context;)V
    .registers 4

    .line 473
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_5

    .line 474
    return-void

    .line 476
    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 477
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_14

    .line 478
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    .line 480
    :cond_14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 481
    const-string v1, "com.mc.xiaomi.heartRateGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v1, "com.mc.miband.heartRateGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v1, "com.mc.xiaomi.connected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v1, "com.mc.miband.connected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v1, "com.mc.xiaomi.disconnected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    const-string v1, "com.mc.miband.disconnected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string v1, "com.mc.xiaomi.batteryStatGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string v1, "com.mc.miband.batteryStatGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_58

    .line 492
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_5d

    .line 494
    :cond_58
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 496
    :goto_5d
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 497
    return-void
.end method

.method public static requestConnect()V
    .registers 2

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    if-nez v0, :cond_7

    .line 215
    return-void

    .line 217
    :cond_7
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 218
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isGadgetbridgeInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 219
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStart(Landroid/content/Context;)V

    goto :goto_1e

    .line 221
    :cond_14
    const-string v1, "com.mc.xiaomi.reconnectToBand"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    const-string v1, "com.mc.miband.reconnectToBand"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    :goto_1e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 225
    return-void
.end method

.method public static resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 122
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly_nopebble"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 123
    return-object v0

    .line 125
    :cond_9
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 126
    return-object v0

    .line 128
    :cond_12
    const-string v0, "nodomain.freeyourgadget.gadgetbridge"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 129
    return-object v0

    .line 131
    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static scheduleConnectSequence(Landroid/content/Context;)V
    .registers 13

    .line 409
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 410
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

    .line 424
    const/4 v1, 0x0

    :goto_21
    const-wide/16 v2, 0x190

    const/16 v4, 0xc

    if-ge v1, v4, :cond_39

    .line 425
    aget-object v4, v0, v1

    .line 426
    sget-object v5, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    new-instance v6, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;

    invoke-direct {v6, p0, v4}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    int-to-long v7, v1

    mul-long v7, v7, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    goto :goto_21

    .line 436
    :cond_39
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$3;-><init>(Landroid/content/Context;)V

    const/16 p0, 0xe

    int-to-long v4, p0

    mul-long v4, v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    return-void
.end method

.method private static sendGadgetbridgeStart(Landroid/content/Context;)V
    .registers 4

    .line 360
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 361
    if-nez v0, :cond_7

    .line 362
    return-void

    .line 364
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_27

    .line 369
    const-string v2, "device"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    :cond_27
    :try_start_27
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    .line 374
    goto :goto_2c

    .line 373
    :catchall_2b
    move-exception p0

    .line 375
    :goto_2c
    return-void
.end method

.method private static sendGadgetbridgeStop(Landroid/content/Context;)V
    .registers 4

    .line 378
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 379
    if-nez v0, :cond_7

    .line 380
    return-void

    .line 382
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "nodomain.freeyourgadget.gadgetbridge.command.STOP_REALTIME_HR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_27

    .line 387
    const-string v2, "device"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    :cond_27
    :try_start_27
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    .line 392
    goto :goto_2c

    .line 391
    :catchall_2b
    move-exception p0

    .line 393
    :goto_2c
    return-void
.end method

.method private static sendHrEnableSequence(Landroid/content/Context;Z)V
    .registers 2

    .line 448
    if-eqz p1, :cond_c

    .line 449
    const-string p1, "com.mc.xiaomi.connectToBand"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 450
    const-string p1, "com.mc.miband.connectToBand"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 452
    :cond_c
    const-string p1, "com.mc.xiaomi.taskerHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 453
    const-string p1, "com.mc.miband.taskerHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 454
    const-string p1, "com.mc.xiaomi.sleepHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 455
    const-string p1, "com.mc.miband.sleepHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStart(Landroid/content/Context;)V

    .line 457
    return-void
.end method

.method static sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 339
    if-eqz p0, :cond_31

    if-nez p1, :cond_5

    goto :goto_31

    .line 342
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    const-string p1, "com.mc.xiaomi1"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getTaskerPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 346
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 347
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    :cond_25
    :try_start_25
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 352
    goto :goto_2a

    .line 351
    :catchall_29
    move-exception p1

    .line 354
    :goto_2a
    const/4 p1, 0x0

    :try_start_2b
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    .line 356
    goto :goto_30

    .line 355
    :catchall_2f
    move-exception p0

    .line 357
    :goto_30
    return-void

    .line 340
    :cond_31
    :goto_31
    return-void
.end method

.method private static startKeepalive()V
    .registers 4

    .line 460
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    return-void
.end method

.method private static stopKeepalive()V
    .registers 2

    .line 465
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method

.method public static stopListening(Landroid/content/Context;)V
    .registers 3

    .line 228
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 229
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 230
    return-void

    .line 232
    :cond_6
    const-string v1, "com.mc.xiaomi.taskerHeartDisable"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    const-string v1, "com.mc.miband.taskerHeartDisable"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStop(Landroid/content/Context;)V

    .line 235
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->stop()V

    .line 236
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->stopKeepalive()V

    .line 237
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->unregisterReceiver(Landroid/content/Context;)V

    .line 238
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 239
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 240
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 241
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 242
    return-void
.end method

.method public static syncTrainingState()V
    .registers 2

    .line 98
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_24

    .line 102
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 103
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 104
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 106
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 107
    return-void

    .line 100
    :cond_24
    :goto_24
    return-void
.end method

.method private static unregisterReceiver(Landroid/content/Context;)V
    .registers 2

    .line 500
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_9

    goto :goto_18

    .line 504
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_13

    .line 506
    goto :goto_14

    .line 505
    :catchall_13
    move-exception p0

    .line 507
    :goto_14
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 508
    return-void

    .line 501
    :cond_18
    :goto_18
    return-void
.end method

.method private static wakeNotifyApp(Landroid/content/Context;)V
    .registers 3

    .line 397
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.mc.xiaomi1"

    .line 398
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_14

    .line 400
    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 405
    :cond_14
    goto :goto_16

    .line 404
    :catchall_15
    move-exception p0

    .line 406
    :goto_16
    return-void
.end method
