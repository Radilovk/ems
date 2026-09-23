.class public final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"


# static fields
.field public static final ACTION_BATTERY_READ:Ljava/lang/String; = "com.mc.xiaomi.tasker.batteryRead"

.field public static final ACTION_BATTERY_READ_LEGACY:Ljava/lang/String; = "com.mc.miband.tasker.batteryRead"

.field public static final ACTION_CONNECT:Ljava/lang/String; = "com.mc.xiaomi.connectToBand"

.field public static final ACTION_CONNECT_LEGACY:Ljava/lang/String; = "com.mc.miband.connectToBand"

.field public static final ACTION_GB_CONNECT:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECT"

.field public static final ACTION_GB_CONNECTED:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED"

.field public static final ACTION_GB_DISCONNECTED:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_DISCONNECTED"

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

.field private static final CONNECT_STEP_DELAY_MS:J = 0x1f4L

.field private static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field private static final GB_FIRST_HR_DELAY_MS:J = 0x36b0L

.field public static final GB_PACKAGE:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge"

.field public static final GB_PACKAGE_NIGHTLY:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.nightly"

.field public static final GB_PACKAGE_NIGHTLY_NO_PEBBLE:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.nightly_nopebble"

.field private static final KEEPALIVE_INTERVAL_MS:J = 0x3a98L

.field public static final NOTIFY_PACKAGE:Ljava/lang/String; = "com.mc.xiaomi1"

.field private static final RECEIVER_EXPORTED_FLAG:I = 0x2

.field private static bandConnected:Z

.field private static batteryEventCount:I

.field private static gbCommandCount:I

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

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    .line 86
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 87
    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastBattery:I

    .line 93
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 95
    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 97
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

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 18
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeCommand(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static appContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 100
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 101
    return-void
.end method

.method public static beginListening(Landroid/content/Context;)V
    .registers 5

    .line 160
    if-eqz p0, :cond_57

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_57

    .line 163
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->registerReceiver(Landroid/content/Context;)V

    .line 164
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isGadgetbridgeInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 165
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->stop()V

    .line 166
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->start(Landroid/content/Context;)V

    goto :goto_1f

    .line 168
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->resetSession()V

    .line 169
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->start(Landroid/content/Context;)V

    .line 171
    :goto_1f
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 172
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 173
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 174
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    .line 175
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbCommandCount:I

    .line 176
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    .line 177
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 178
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 179
    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    .line 180
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isGadgetbridgeInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    .line 182
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->scheduleGadgetbridgeSequence(Landroid/content/Context;)V

    goto :goto_4b

    .line 184
    :cond_45
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->wakeNotifyApp(Landroid/content/Context;)V

    .line 185
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->scheduleConnectSequence(Landroid/content/Context;)V

    .line 187
    :goto_4b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->startKeepalive()V

    .line 188
    sget-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 189
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 190
    return-void

    .line 161
    :cond_57
    :goto_57
    return-void
.end method

.method public static getBatteryEventCount()I
    .registers 1

    .line 347
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    return v0
.end method

.method public static getGbCommandCount()I
    .registers 1

    .line 321
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbCommandCount:I

    return v0
.end method

.method public static getGbHrEventCount()I
    .registers 1

    .line 317
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    return v0
.end method

.method public static getGbPackageLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 329
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 330
    if-nez p0, :cond_9

    .line 331
    const-string p0, "--"

    return-object p0

    .line 333
    :cond_9
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly_nopebble"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 334
    const-string p0, "GB nightly_nopebble"

    return-object p0

    .line 336
    :cond_14
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 337
    const-string p0, "GB nightly"

    return-object p0

    .line 339
    :cond_1f
    const-string v0, "nodomain.freeyourgadget.gadgetbridge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 340
    const-string p0, "GB mainline"

    return-object p0

    .line 342
    :cond_2a
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 343
    if-ltz v0, :cond_38

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_38
    return-object p0
.end method

.method public static getHaEntityListText()Ljava/lang/String;
    .registers 1

    .line 367
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->getEntityListText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHrEventCount()I
    .registers 1

    .line 313
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    return v0
.end method

.method public static getLastBattery()I
    .registers 1

    .line 351
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastBattery:I

    return v0
.end method

.method public static getLastEventAction()Ljava/lang/String;
    .registers 1

    .line 355
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastEventTimeMs()J
    .registers 2

    .line 359
    sget-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide v0
.end method

.method public static getLastHeartRate()I
    .registers 1

    .line 305
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    return v0
.end method

.method public static getLastHrSource()Ljava/lang/String;
    .registers 1

    .line 363
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    return-object v0
.end method

.method public static getResolvedGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 325
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasHaHeartRateEntity()Z
    .registers 1

    .line 371
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->hasHeartRateEntity()Z

    move-result v0

    return v0
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .line 604
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_a

    .line 605
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 607
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 608
    return v1

    .line 611
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 612
    if-nez v0, :cond_17

    .line 613
    return v1

    .line 615
    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 616
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 617
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_31

    .line 618
    goto :goto_39

    .line 620
    :cond_31
    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_3d

    if-eqz v3, :cond_39

    .line 621
    const/4 v0, 0x1

    return v0

    .line 615
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 625
    :cond_3c
    goto :goto_3e

    .line 624
    :catchall_3d
    move-exception v0

    .line 626
    :goto_3e
    return v1
.end method

.method public static isBandConnected()Z
    .registers 1

    .line 309
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    return v0
.end method

.method public static isGadgetbridgeInstalled(Landroid/content/Context;)Z
    .registers 1

    .line 124
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

    .line 301
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isNotifyInstalled(Landroid/content/Context;)Z
    .registers 2

    .line 120
    const-string v0, "com.mc.xiaomi1"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 141
    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_6

    goto :goto_1d

    .line 144
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 146
    const/4 v1, 0x1

    :try_start_b
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_11
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 147
    return v1

    .line 149
    :catchall_f
    move-exception v2

    goto :goto_13

    .line 148
    :catch_11
    move-exception v2

    .line 150
    nop

    .line 152
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

    .line 153
    :catchall_1b
    move-exception p0

    .line 154
    return v0

    .line 142
    :cond_1d
    :goto_1d
    return v0
.end method

.method private static maybeAutoReduce(I)V
    .registers 8

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 631
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 632
    if-nez v2, :cond_b

    .line 633
    return-void

    .line 635
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

    .line 639
    :cond_1c
    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastAutoReduceMs:J

    .line 640
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->reduceStrengthOnRunningItems(Landroid/content/Context;)V

    .line 641
    return-void

    .line 637
    :cond_22
    :goto_22
    return-void
.end method

.method static normalizeMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 469
    const-string v0, ""

    if-nez p0, :cond_5

    .line 470
    return-object v0

    .line 472
    :cond_5
    const-string v1, ":"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_28

    .line 474
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 476
    :cond_28
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 477
    const/4 v1, 0x0

    :goto_30
    if-ge v1, v2, :cond_50

    .line 478
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3d

    .line 479
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    :cond_3d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 477
    add-int/lit8 v1, v1, 0x2

    goto :goto_30

    .line 484
    :cond_50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static onBandConnected()V
    .registers 2

    .line 280
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 281
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 282
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 283
    return-void
.end method

.method static onBandDisconnected()V
    .registers 2

    .line 286
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 287
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 288
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 289
    return-void
.end method

.method static onBattery(I)V
    .registers 2

    .line 292
    if-ltz p0, :cond_14

    const/16 v0, 0x64

    if-gt p0, v0, :cond_14

    .line 293
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->batteryEventCount:I

    .line 294
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastBattery:I

    .line 295
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateBattery(I)V

    .line 296
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 298
    :cond_14
    return-void
.end method

.method static onHeartRate(ILjava/lang/String;)V
    .registers 3

    .line 261
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_4a

    const/16 v0, 0x28

    if-lt p0, v0, :cond_4a

    const/16 v0, 0xdc

    if-le p0, v0, :cond_d

    goto :goto_4a

    .line 264
    :cond_d
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 265
    if-eqz p1, :cond_23

    const-string v0, "gadgetbridge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 266
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    .line 268
    :cond_23
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 269
    if-eqz p1, :cond_28

    goto :goto_2a

    :cond_28
    const-string p1, ""

    :goto_2a
    sput-object p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHrSource:Ljava/lang/String;

    .line 270
    sget-boolean p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 271
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 272
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 273
    if-eqz p1, :cond_49

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 274
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 275
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->maybeAutoReduce(I)V

    .line 277
    :cond_49
    return-void

    .line 262
    :cond_4a
    :goto_4a
    return-void
.end method

.method static onRawEvent(Ljava/lang/String;)V
    .registers 3

    .line 255
    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    const-string p0, ""

    :goto_5
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 257
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 258
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 1

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 117
    return-void
.end method

.method private static openCompanionApp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 207
    if-eqz p0, :cond_1a

    if-nez p1, :cond_5

    goto :goto_1a

    .line 211
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 213
    if-eqz p1, :cond_17

    .line 214
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    .line 218
    :cond_17
    goto :goto_19

    .line 217
    :catchall_18
    move-exception p0

    .line 219
    :goto_19
    return-void

    .line 208
    :cond_1a
    :goto_1a
    return-void
.end method

.method public static openGadgetbridgeApp(Landroid/content/Context;)V
    .registers 2

    .line 197
    if-nez p0, :cond_3

    .line 198
    return-void

    .line 200
    :cond_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_c

    .line 202
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->openCompanionApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    :cond_c
    return-void
.end method

.method public static openNotifyApp(Landroid/content/Context;)V
    .registers 2

    .line 193
    const-string v0, "com.mc.xiaomi1"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->openCompanionApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private static reduceStrengthOnRunningItems(Landroid/content/Context;)V
    .registers 5

    .line 644
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 645
    if-nez v0, :cond_7

    .line 646
    return-void

    .line 648
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result p0

    .line 650
    :try_start_b
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 651
    if-nez v0, :cond_12

    .line 652
    return-void

    .line 654
    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 655
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 656
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_36

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_32

    .line 657
    goto :goto_36

    .line 659
    :cond_32
    neg-int v3, p0

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_3a

    .line 654
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 662
    :cond_39
    goto :goto_3b

    .line 661
    :catchall_3a
    move-exception p0

    .line 663
    :goto_3b
    return-void
.end method

.method private static registerReceiver(Landroid/content/Context;)V
    .registers 4

    .line 565
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_5

    .line 566
    return-void

    .line 568
    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 569
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_14

    .line 570
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    .line 572
    :cond_14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 573
    const-string v1, "com.mc.xiaomi.heartRateGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    const-string v1, "com.mc.miband.heartRateGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    const-string v1, "com.mc.xiaomi.connected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    const-string v1, "com.mc.miband.connected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    const-string v1, "com.mc.xiaomi.disconnected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v1, "com.mc.miband.disconnected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    const-string v1, "com.mc.xiaomi.batteryStatGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    const-string v1, "com.mc.miband.batteryStatGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 582
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_5d

    .line 585
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_62

    .line 587
    :cond_5d
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 589
    :goto_62
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 590
    return-void
.end method

.method public static requestConnect()V
    .registers 2

    .line 222
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    if-nez v0, :cond_7

    .line 224
    return-void

    .line 226
    :cond_7
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 227
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isGadgetbridgeInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 228
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->scheduleGadgetbridgeSequence(Landroid/content/Context;)V

    goto :goto_1e

    .line 230
    :cond_14
    const-string v1, "com.mc.xiaomi.reconnectToBand"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    const-string v1, "com.mc.miband.reconnectToBand"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    :goto_1e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 234
    return-void
.end method

.method public static resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 128
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly_nopebble"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 129
    return-object v0

    .line 131
    :cond_9
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 132
    return-object v0

    .line 134
    :cond_12
    const-string v0, "nodomain.freeyourgadget.gadgetbridge"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 135
    return-object v0

    .line 137
    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static scheduleConnectSequence(Landroid/content/Context;)V
    .registers 13

    .line 501
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 502
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

    .line 516
    const/4 v1, 0x0

    :goto_21
    const-wide/16 v2, 0x1f4

    const/16 v4, 0xc

    if-ge v1, v4, :cond_39

    .line 517
    aget-object v4, v0, v1

    .line 518
    sget-object v5, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    new-instance v6, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$4;

    invoke-direct {v6, p0, v4}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    int-to-long v7, v1

    mul-long v7, v7, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 516
    goto :goto_21

    .line 528
    :cond_39
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$5;-><init>(Landroid/content/Context;)V

    const/16 p0, 0xe

    int-to-long v4, p0

    mul-long v4, v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 537
    return-void
.end method

.method private static scheduleGadgetbridgeSequence(Landroid/content/Context;)V
    .registers 11

    .line 396
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 397
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECT"

    const-string v1, "nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 401
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    const/4 v3, 0x2

    if-ge v2, v3, :cond_25

    .line 402
    aget-object v3, v0, v2

    .line 403
    sget-object v4, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;

    invoke-direct {v5, p0, v3}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v6, 0x1f4

    add-int/lit8 v2, v2, 0x1

    int-to-long v8, v2

    mul-long v8, v8, v6

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    goto :goto_e

    .line 413
    :cond_25
    const/4 v0, 0x4

    new-array v2, v0, [J

    fill-array-data v2, :array_3e

    .line 419
    nop

    :goto_2c
    if-ge v1, v0, :cond_3d

    .line 420
    aget-wide v3, v2, v1

    .line 421
    sget-object v5, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    new-instance v6, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$3;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 431
    :cond_3d
    return-void

    :array_3e
    .array-data 8
        0x36b0
        0x5dc0
        0x9858
        0xe678
    .end array-data
.end method

.method private static sendGadgetbridgeCommand(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 434
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_49

    if-nez p1, :cond_9

    goto :goto_49

    .line 438
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 442
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_37

    .line 443
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 444
    const-string p1, "EXTRA_DEVICE_ADDRESS"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_37

    .line 446
    :cond_32
    const-string p1, "device"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    :cond_37
    :goto_37
    sget p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbCommandCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbCommandCount:I

    .line 451
    :try_start_3d
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    .line 453
    goto :goto_42

    .line 452
    :catchall_41
    move-exception p1

    .line 455
    :goto_42
    const/4 p1, 0x0

    :try_start_43
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 457
    goto :goto_48

    .line 456
    :catchall_47
    move-exception p0

    .line 458
    :goto_48
    return-void

    .line 436
    :cond_49
    :goto_49
    return-void
.end method

.method private static sendGadgetbridgeStart(Landroid/content/Context;)V
    .registers 2

    .line 461
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method private static sendGadgetbridgeStop(Landroid/content/Context;)V
    .registers 2

    .line 465
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.command.STOP_REALTIME_HR"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private static sendHrEnableSequence(Landroid/content/Context;Z)V
    .registers 2

    .line 540
    if-eqz p1, :cond_c

    .line 541
    const-string p1, "com.mc.xiaomi.connectToBand"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 542
    const-string p1, "com.mc.miband.connectToBand"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 544
    :cond_c
    const-string p1, "com.mc.xiaomi.taskerHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    const-string p1, "com.mc.miband.taskerHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 546
    const-string p1, "com.mc.xiaomi.sleepHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 547
    const-string p1, "com.mc.miband.sleepHeartEnable"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 548
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStart(Landroid/content/Context;)V

    .line 549
    return-void
.end method

.method static sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 375
    if-eqz p0, :cond_31

    if-nez p1, :cond_5

    goto :goto_31

    .line 378
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    const-string p1, "com.mc.xiaomi1"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getTaskerPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 382
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 383
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    :cond_25
    :try_start_25
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 388
    goto :goto_2a

    .line 387
    :catchall_29
    move-exception p1

    .line 390
    :goto_2a
    const/4 p1, 0x0

    :try_start_2b
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    .line 392
    goto :goto_30

    .line 391
    :catchall_2f
    move-exception p0

    .line 393
    :goto_30
    return-void

    .line 376
    :cond_31
    :goto_31
    return-void
.end method

.method private static startKeepalive()V
    .registers 4

    .line 552
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 553
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 554
    return-void
.end method

.method private static stopKeepalive()V
    .registers 2

    .line 557
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    return-void
.end method

.method public static stopListening(Landroid/content/Context;)V
    .registers 3

    .line 237
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 238
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 239
    return-void

    .line 241
    :cond_6
    const-string v1, "com.mc.xiaomi.taskerHeartDisable"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    const-string v1, "com.mc.miband.taskerHeartDisable"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStop(Landroid/content/Context;)V

    .line 244
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->stop()V

    .line 245
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->stop(Landroid/content/Context;)V

    .line 246
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->stopKeepalive()V

    .line 247
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->unregisterReceiver(Landroid/content/Context;)V

    .line 248
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 249
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 250
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 251
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 252
    return-void
.end method

.method public static syncTrainingState()V
    .registers 2

    .line 104
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_24

    .line 108
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 109
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 110
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 112
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 113
    return-void

    .line 106
    :cond_24
    :goto_24
    return-void
.end method

.method private static unregisterReceiver(Landroid/content/Context;)V
    .registers 2

    .line 593
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_9

    goto :goto_18

    .line 597
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_13

    .line 599
    goto :goto_14

    .line 598
    :catchall_13
    move-exception p0

    .line 600
    :goto_14
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 601
    return-void

    .line 594
    :cond_18
    :goto_18
    return-void
.end method

.method private static wakeNotifyApp(Landroid/content/Context;)V
    .registers 3

    .line 489
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.mc.xiaomi1"

    .line 490
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_14

    .line 492
    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 497
    :cond_14
    goto :goto_16

    .line 496
    :catchall_15
    move-exception p0

    .line 498
    :goto_16
    return-void
.end method
