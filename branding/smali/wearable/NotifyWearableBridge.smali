.class public final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;,
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;
    }
.end annotation


# static fields
.field public static final ACTION_GB_CONNECT:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECT"

.field public static final ACTION_GB_CONNECTED:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED"

.field public static final ACTION_GB_DISCONNECTED:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_DISCONNECTED"

.field public static final ACTION_GB_START_HR:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR"

.field public static final ACTION_GB_STOP_HR:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.command.STOP_REALTIME_HR"

.field private static final AUTO_REDUCE_COOLDOWN_MS:J = 0x2710L

.field private static final CONNECT_STEP_DELAY_MS:J = 0x1f4L

.field private static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field private static final GB_FIRST_HR_DELAY_MS:J = 0x36b0L

.field public static final GB_PACKAGE:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge"

.field public static final GB_PACKAGE_NIGHTLY:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.nightly"

.field public static final GB_PACKAGE_NIGHTLY_NO_PEBBLE:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.nightly_nopebble"

.field private static final KEEPALIVE_INTERVAL_MS:J = 0x3a98L

.field private static final RECEIVER_EXPORTED_FLAG:I = 0x2

.field private static bandConnected:Z

.field private static final bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

.field private static bleState:Ljava/lang/String;

.field private static directBleActive:Z

.field private static gbCommandCount:I

.field private static gbHrEventCount:I

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static final keepaliveRunnable:Ljava/lang/Runnable;

.field private static lastAutoReduceMs:J

.field private static lastEventAction:Ljava/lang/String;

.field private static lastEventTimeMs:J

.field private static lastHr:I

.field private static listeningActive:Z

.field private static final mainHandler:Landroid/os/Handler;

.field private static receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

.field private static receiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    .line 64
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 68
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 71
    const-string v0, "idle"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;-><init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStart(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 20
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 20
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(J)J
    .registers 2

    .line 20
    sput-wide p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide p0
.end method

.method static synthetic access$700(Landroid/content/Context;)V
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->performConnect(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeCommand(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static appContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 492
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 102
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 103
    return-void
.end method

.method public static beginListening(Landroid/content/Context;)V
    .registers 6

    .line 157
    if-eqz p0, :cond_60

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_60

    .line 160
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 161
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 162
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 163
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    .line 164
    sput v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbCommandCount:I

    .line 165
    const-string v3, ""

    sput-object v3, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 166
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 167
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 168
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->directBleActive:Z

    .line 169
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->start(Landroid/content/Context;)V

    .line 170
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object p0

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 172
    sget-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 173
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 174
    return-void

    .line 176
    :cond_3c
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->directBleActive:Z

    .line 177
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isGadgetbridgeInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 178
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showGadgetbridgeMissing()V

    .line 179
    return-void

    .line 181
    :cond_48
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->registerReceiver(Landroid/content/Context;)V

    .line 182
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->start(Landroid/content/Context;)V

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    .line 184
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->scheduleGadgetbridgeSequence(Landroid/content/Context;)V

    .line 185
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->startKeepalive()V

    .line 186
    sget-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 187
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 188
    return-void

    .line 158
    :cond_60
    :goto_60
    return-void
.end method

.method public static getBleBuildTag()Ljava/lang/String;
    .registers 1

    .line 353
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getBuildTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBleNotifyCount()I
    .registers 1

    .line 346
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->directBleActive:Z

    if-eqz v0, :cond_d

    .line 347
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getNotifyEventCount()I

    move-result v0

    return v0

    .line 349
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static getBleState()Ljava/lang/String;
    .registers 1

    .line 342
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object v0
.end method

.method public static getGbCommandCount()I
    .registers 1

    .line 357
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbCommandCount:I

    return v0
.end method

.method public static getGbHrEventCount()I
    .registers 1

    .line 331
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->directBleActive:Z

    if-eqz v0, :cond_d

    .line 332
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getHrEventCount()I

    move-result v0

    return v0

    .line 334
    :cond_d
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    return v0
.end method

.method public static getGbPackageLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 365
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 366
    if-nez p0, :cond_9

    .line 367
    const-string p0, "--"

    return-object p0

    .line 369
    :cond_9
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly_nopebble"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 370
    const-string p0, "GB nightly_nopebble"

    return-object p0

    .line 372
    :cond_14
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 373
    const-string p0, "GB nightly"

    return-object p0

    .line 375
    :cond_1f
    const-string v0, "nodomain.freeyourgadget.gadgetbridge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 376
    const-string p0, "GB mainline"

    return-object p0

    .line 378
    :cond_2a
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 379
    if-ltz v0, :cond_38

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_38
    return-object p0
.end method

.method public static getLastEventAction()Ljava/lang/String;
    .registers 1

    .line 383
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastEventTimeMs()J
    .registers 2

    .line 387
    sget-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide v0
.end method

.method public static getLastHeartRate()I
    .registers 1

    .line 323
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    return v0
.end method

.method public static getResolvedGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 361
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .line 527
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_a

    .line 528
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 530
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 531
    return v1

    .line 534
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 535
    if-nez v0, :cond_17

    .line 536
    return v1

    .line 538
    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 539
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 540
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_31

    .line 541
    goto :goto_39

    .line 543
    :cond_31
    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_3d

    if-eqz v3, :cond_39

    .line 544
    const/4 v0, 0x1

    return v0

    .line 538
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 548
    :cond_3c
    goto :goto_3e

    .line 547
    :catchall_3d
    move-exception v0

    .line 549
    :goto_3e
    return v1
.end method

.method public static isBandConnected()Z
    .registers 1

    .line 327
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    return v0
.end method

.method public static isDirectBleActive()Z
    .registers 1

    .line 338
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->directBleActive:Z

    return v0
.end method

.method public static isGadgetbridgeInstalled(Landroid/content/Context;)Z
    .registers 1

    .line 122
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

    .line 319
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 139
    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_6

    goto :goto_1d

    .line 142
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 144
    const/4 v1, 0x1

    :try_start_b
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_11
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 145
    return v1

    .line 147
    :catchall_f
    move-exception v2

    goto :goto_13

    .line 146
    :catch_11
    move-exception v2

    .line 148
    nop

    .line 150
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

    .line 151
    :catchall_1b
    move-exception p0

    .line 152
    return v0

    .line 140
    :cond_1d
    :goto_1d
    return v0
.end method

.method private static maybeAutoReduce(I)V
    .registers 8

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 554
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 555
    if-nez v2, :cond_b

    .line 556
    return-void

    .line 558
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

    .line 562
    :cond_1c
    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastAutoReduceMs:J

    .line 563
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->reduceStrengthOnRunningItems(Landroid/content/Context;)V

    .line 564
    return-void

    .line 560
    :cond_22
    :goto_22
    return-void
.end method

.method static normalizeMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 464
    const-string v0, ""

    if-nez p0, :cond_5

    .line 465
    return-object v0

    .line 467
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

    .line 468
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_28

    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 471
    :cond_28
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 472
    const/4 v1, 0x0

    :goto_30
    if-ge v1, v2, :cond_50

    .line 473
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3d

    .line 474
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    :cond_3d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 477
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    add-int/lit8 v1, v1, 0x2

    goto :goto_30

    .line 479
    :cond_50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static onBandConnected()V
    .registers 2

    .line 307
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 308
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 309
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 310
    return-void
.end method

.method static onBandDisconnected()V
    .registers 2

    .line 313
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 314
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 315
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 316
    return-void
.end method

.method static onHeartRate(ILjava/lang/String;)V
    .registers 2

    .line 292
    sget-boolean p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz p1, :cond_33

    const/16 p1, 0x28

    if-lt p0, p1, :cond_33

    const/16 p1, 0xdc

    if-le p0, p1, :cond_d

    goto :goto_33

    .line 295
    :cond_d
    sget p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbHrEventCount:I

    .line 296
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 297
    sget-boolean p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 298
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 299
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 300
    if-eqz p1, :cond_32

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 301
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 302
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->maybeAutoReduce(I)V

    .line 304
    :cond_32
    return-void

    .line 293
    :cond_33
    :goto_33
    return-void
.end method

.method static onRawEvent(Ljava/lang/String;)V
    .registers 3

    .line 286
    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    const-string p0, ""

    :goto_5
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 288
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 289
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 1

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 119
    return-void
.end method

.method public static openGadgetbridgeApp(Landroid/content/Context;)V
    .registers 3

    .line 191
    if-nez p0, :cond_3

    .line 192
    return-void

    .line 194
    :cond_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 195
    if-nez v0, :cond_a

    .line 196
    return-void

    .line 199
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 200
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_1c

    .line 202
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1d

    .line 206
    :cond_1c
    goto :goto_1e

    .line 205
    :catchall_1d
    move-exception p0

    .line 207
    :goto_1e
    return-void
.end method

.method private static performConnect(Landroid/content/Context;)V
    .registers 4

    .line 234
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 235
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->gateGattOrNotify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 236
    return-void

    .line 238
    :cond_d
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 239
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 240
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 242
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->startRealtime()V

    .line 245
    const-string p0, "BLE:connect"

    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 247
    goto :goto_3f

    .line 248
    :cond_3c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->scheduleGadgetbridgeSequence(Landroid/content/Context;)V

    .line 250
    :goto_3f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 251
    return-void
.end method

.method private static reduceStrengthOnRunningItems(Landroid/content/Context;)V
    .registers 5

    .line 567
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 568
    if-nez v0, :cond_7

    .line 569
    return-void

    .line 571
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result p0

    .line 573
    :try_start_b
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 574
    if-nez v0, :cond_12

    .line 575
    return-void

    .line 577
    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 578
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 579
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_36

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_32

    .line 580
    goto :goto_36

    .line 582
    :cond_32
    neg-int v3, p0

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_3a

    .line 577
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 585
    :cond_39
    goto :goto_3b

    .line 584
    :catchall_3a
    move-exception p0

    .line 586
    :goto_3b
    return-void
.end method

.method private static registerReceiver(Landroid/content/Context;)V
    .registers 4

    .line 496
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_5

    .line 497
    return-void

    .line 499
    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 500
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_14

    .line 501
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    .line 503
    :cond_14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 504
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_35

    .line 508
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_3a

    .line 510
    :cond_35
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 512
    :goto_3a
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 513
    return-void
.end method

.method public static requestConnect()V
    .registers 1

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 211
    return-void
.end method

.method public static requestConnect(Landroid/app/Activity;)V
    .registers 3

    .line 214
    if-nez p0, :cond_6

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object p0

    .line 217
    :cond_6
    if-eqz p0, :cond_a

    move-object v0, p0

    goto :goto_e

    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    :goto_e
    if-nez v0, :cond_11

    .line 219
    return-void

    .line 221
    :cond_11
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 222
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 223
    if-eqz p0, :cond_27

    .line 224
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;-><init>()V

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 227
    :cond_27
    return-void

    .line 230
    :cond_28
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->performConnect(Landroid/content/Context;)V

    .line 231
    return-void
.end method

.method public static resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 126
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly_nopebble"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 127
    return-object v0

    .line 129
    :cond_9
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.nightly"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 130
    return-object v0

    .line 132
    :cond_12
    const-string v0, "nodomain.freeyourgadget.gadgetbridge"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 133
    return-object v0

    .line 135
    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static scheduleGadgetbridgeSequence(Landroid/content/Context;)V
    .registers 11

    .line 391
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 392
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECT"

    const-string v1, "nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 396
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    const/4 v3, 0x2

    if-ge v2, v3, :cond_25

    .line 397
    aget-object v3, v0, v2

    .line 398
    sget-object v4, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;

    invoke-direct {v5, p0, v3}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v6, 0x1f4

    add-int/lit8 v2, v2, 0x1

    int-to-long v8, v2

    mul-long v8, v8, v6

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    goto :goto_e

    .line 408
    :cond_25
    const/4 v0, 0x4

    new-array v2, v0, [J

    fill-array-data v2, :array_3e

    .line 414
    nop

    :goto_2c
    if-ge v1, v0, :cond_3d

    .line 415
    aget-wide v3, v2, v1

    .line 416
    sget-object v5, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    new-instance v6, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$3;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 426
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

    .line 429
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->resolveGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_49

    if-nez p1, :cond_9

    goto :goto_49

    .line 433
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_37

    .line 438
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 439
    const-string p1, "EXTRA_DEVICE_ADDRESS"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_37

    .line 441
    :cond_32
    const-string p1, "device"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    :cond_37
    :goto_37
    sget p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbCommandCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->gbCommandCount:I

    .line 446
    :try_start_3d
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    .line 448
    goto :goto_42

    .line 447
    :catchall_41
    move-exception p1

    .line 450
    :goto_42
    const/4 p1, 0x0

    :try_start_43
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 452
    goto :goto_48

    .line 451
    :catchall_47
    move-exception p0

    .line 453
    :goto_48
    return-void

    .line 431
    :cond_49
    :goto_49
    return-void
.end method

.method private static sendGadgetbridgeStart(Landroid/content/Context;)V
    .registers 2

    .line 456
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method private static sendGadgetbridgeStop(Landroid/content/Context;)V
    .registers 2

    .line 460
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.command.STOP_REALTIME_HR"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method private static startKeepalive()V
    .registers 4

    .line 483
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 484
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    return-void
.end method

.method private static stopKeepalive()V
    .registers 2

    .line 488
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->keepaliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method public static stopListening(Landroid/content/Context;)V
    .registers 3

    .line 264
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 265
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 266
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->directBleActive:Z

    .line 267
    return-void

    .line 269
    :cond_8
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->directBleActive:Z

    if-nez v1, :cond_1d

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1d

    .line 274
    :cond_13
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStop(Landroid/content/Context;)V

    .line 275
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->unregisterReceiver(Landroid/content/Context;)V

    .line 276
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->stopKeepalive()V

    goto :goto_2a

    .line 270
    :cond_1d
    :goto_1d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnect()V

    .line 271
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->directBleActive:Z

    .line 272
    const-string v1, "stopped"

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 278
    :goto_2a
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->stop(Landroid/content/Context;)V

    .line 279
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 280
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 281
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 282
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 283
    return-void
.end method

.method public static syncTrainingState()V
    .registers 2

    .line 106
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_24

    .line 110
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 111
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 112
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 114
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 115
    return-void

    .line 108
    :cond_24
    :goto_24
    return-void
.end method

.method private static unregisterReceiver(Landroid/content/Context;)V
    .registers 2

    .line 516
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_9

    goto :goto_18

    .line 520
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_13

    .line 522
    goto :goto_14

    .line 521
    :catchall_13
    move-exception p0

    .line 523
    :goto_14
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 524
    return-void

    .line 517
    :cond_18
    :goto_18
    return-void
.end method
