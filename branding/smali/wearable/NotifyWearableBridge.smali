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
.field public static final OWNER_AI:Ljava/lang/String; = "ai"

.field public static final OWNER_DIAL:Ljava/lang/String; = "dial"

.field public static final OWNER_SETTINGS:Ljava/lang/String; = "settings"

.field private static bandConnected:Z

.field private static final bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

.field private static bleState:Ljava/lang/String;

.field private static hrEventCount:I

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static lastEventAction:Ljava/lang/String;

.field private static lastEventTimeMs:J

.field private static lastHr:I

.field private static listeningActive:Z

.field private static final owners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 35
    const-string v0, "idle"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;-><init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(J)J
    .registers 2

    .prologue
    .line 21
    sput-wide p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide p0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->performConnect(Landroid/content/Context;)V

    return-void
.end method

.method public static acquire(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 170
    if-nez p1, :cond_3

    .line 178
    :cond_2
    :goto_2
    return-void

    .line 173
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    :cond_12
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .prologue
    .line 79
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 83
    :goto_3
    return-void

    .line 80
    :catch_4
    move-exception v0

    .line 81
    const-string v1, "NotifyWearableBridge.attachMasterPanel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 87
    return-void
.end method

.method public static beginListening(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 132
    if-nez p0, :cond_5

    .line 153
    :cond_4
    :goto_4
    return-void

    .line 136
    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v3, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v1, "dial"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 139
    :cond_1d
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 140
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    goto :goto_4

    .line 143
    :cond_27
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 144
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 145
    sput v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 146
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 147
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 148
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 151
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    goto :goto_4
.end method

.method private static connect(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 212
    if-nez p0, :cond_30

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v1

    .line 215
    :goto_6
    if-eqz v1, :cond_c

    move-object v0, v1

    .line 216
    :goto_9
    if-nez v0, :cond_11

    .line 231
    :cond_b
    :goto_b
    return-void

    .line 215
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_9

    .line 219
    :cond_11
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 220
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    goto :goto_b

    .line 223
    :cond_1b
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 224
    if-eqz v1, :cond_b

    .line 225
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;-><init>()V

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_b

    .line 230
    :cond_2c
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->performConnect(Landroid/content/Context;)V

    goto :goto_b

    :cond_30
    move-object v1, p0

    goto :goto_6
.end method

.method public static detachTrainingHost()V
    .registers 2

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->detachTrainingHostImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 113
    :goto_3
    return-void

    .line 110
    :catch_4
    move-exception v0

    .line 111
    const-string v1, "NotifyWearableBridge.detachTrainingHost"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static detachTrainingHostImpl()V
    .registers 0

    .prologue
    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->detachTrainingHost()V

    .line 117
    return-void
.end method

.method private static disconnect(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 271
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnect()V

    .line 272
    const-string v0, "stopped"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 273
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->stop(Landroid/content/Context;)V

    .line 274
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 275
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 276
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 277
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 278
    return-void
.end method

.method public static getBleBuildTag()Ljava/lang/String;
    .registers 1

    .prologue
    .line 353
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getBuildTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBleLastNotifyChar()Ljava/lang/String;
    .registers 1

    .prologue
    .line 349
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getLastNotifyChar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBleNotifyCount()I
    .registers 1

    .prologue
    .line 337
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getNotifyEventCount()I

    move-result v0

    return v0
.end method

.method public static getBleNotifyCount51()I
    .registers 1

    .prologue
    .line 341
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getNotifyCount51()I

    move-result v0

    return v0
.end method

.method public static getBleNotifyCount52()I
    .registers 1

    .prologue
    .line 345
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getNotifyCount52()I

    move-result v0

    return v0
.end method

.method public static getBleState()Ljava/lang/String;
    .registers 1

    .prologue
    .line 333
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object v0
.end method

.method public static getGbCommandCount()I
    .registers 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public static getGbHrEventCount()I
    .registers 1

    .prologue
    .line 325
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getHrEventCount()I

    move-result v0

    return v0
.end method

.method public static getGbPackageLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    const-string v0, "--"

    return-object v0
.end method

.method public static getLastEventAction()Ljava/lang/String;
    .registers 1

    .prologue
    .line 369
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastEventTimeMs()J
    .registers 2

    .prologue
    .line 373
    sget-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide v0
.end method

.method public static getLastHeartRate()I
    .registers 1

    .prologue
    .line 317
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    return v0
.end method

.method public static getResolvedGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 396
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_b

    .line 397
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 399
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_11

    move v0, v1

    .line 418
    :goto_10
    return v0

    .line 403
    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 404
    if-nez v3, :cond_1b

    move v0, v1

    .line 405
    goto :goto_10

    :cond_1b
    move v2, v1

    .line 407
    :goto_1c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_41

    .line 408
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 409
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_38

    .line 407
    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1c

    .line 412
    :cond_38
    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_3c} :catch_40

    if-eqz v0, :cond_34

    .line 413
    const/4 v0, 0x1

    goto :goto_10

    .line 416
    :catch_40
    move-exception v0

    :cond_41
    move v0, v1

    .line 418
    goto :goto_10
.end method

.method public static isBandConnected()Z
    .registers 1

    .prologue
    .line 321
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    return v0
.end method

.method public static isDirectBleActive()Z
    .registers 1

    .prologue
    .line 329
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isLinkUp()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 204
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 205
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "idle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "stopped"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "disconnected"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_25
    move v0, v1

    .line 208
    :goto_26
    return v0

    .line 204
    :cond_27
    const-string v0, ""

    goto :goto_7

    .line 208
    :cond_2a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    goto :goto_26

    :cond_32
    move v0, v1

    goto :goto_26
.end method

.method public static isListeningActive()Z
    .registers 1

    .prologue
    .line 313
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isOwnedBy(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 199
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static normalizeMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0xc

    .line 377
    if-nez p0, :cond_7

    .line 378
    const-string v0, ""

    .line 392
    :goto_6
    return-object v0

    .line 380
    :cond_7
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_2e

    .line 382
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 384
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x11

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 385
    const/4 v0, 0x0

    :goto_36
    if-ge v0, v4, :cond_56

    .line 386
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_43

    .line 387
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    :cond_43
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    add-int/lit8 v0, v0, 0x2

    goto :goto_36

    .line 392
    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method static onBandConnected()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 301
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 302
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 303
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 304
    return-void
.end method

.method static onBandDisconnected()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 307
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 308
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 309
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 310
    return-void
.end method

.method static onHeartRate(I)V
    .registers 5

    .prologue
    .line 281
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x28

    if-lt p0, v0, :cond_c

    const/16 v0, 0xdc

    if-le p0, v0, :cond_d

    .line 298
    :cond_c
    :goto_c
    return-void

    .line 284
    :cond_d
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 285
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 286
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 288
    :try_start_1a
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->onHeartRate(I)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_3e

    .line 291
    :goto_1d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 294
    :try_start_20
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/HrGuard;->onHeartRate(I)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_c

    .line 295
    :catch_24
    move-exception v0

    .line 296
    const-string v1, "hr_guard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHeartRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 289
    :catch_3e
    move-exception v0

    goto :goto_1d
.end method

.method public static onTrainingFullStop()V
    .registers 2

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onTrainingFullStopImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 125
    :goto_3
    return-void

    .line 122
    :catch_4
    move-exception v0

    .line 123
    const-string v1, "NotifyWearableBridge.onTrainingFullStop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static onTrainingFullStopImpl()V
    .registers 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 129
    return-void
.end method

.method private static performConnect(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 234
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->gateGattOrNotify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 252
    :goto_6
    return-void

    .line 237
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 238
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    goto :goto_6

    .line 241
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 242
    invoke-static {}, Lcom/isaigu/gymapp/wearable/EmsBleCoexist;->pauseEmsBle()V

    .line 243
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->start(Landroid/content/Context;)V

    .line 244
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 246
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->startRealtime()V

    .line 249
    const-string v0, "BLE:connect"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 251
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    goto :goto_6
.end method

.method public static reconnect(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 182
    if-eqz p1, :cond_7

    .line 183
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    .line 186
    return-void
.end method

.method public static release(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 190
    if-eqz p1, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 196
    :cond_a
    :goto_a
    return-void

    .line 193
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 194
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->disconnect(Landroid/content/Context;)V

    goto :goto_a
.end method

.method public static requestConnect()V
    .registers 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 157
    return-void
.end method

.method public static requestConnect(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 161
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v1, "dial"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    .line 163
    return-void
.end method

.method public static stopListening(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 266
    const-string v0, "dial"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 268
    return-void
.end method

.method public static syncTrainingState()V
    .registers 2

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->syncTrainingStateImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 95
    :goto_3
    return-void

    .line 92
    :catch_4
    move-exception v0

    .line 93
    const-string v1, "NotifyWearableBridge.syncTrainingState"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static syncTrainingStateImpl()V
    .registers 1

    .prologue
    .line 98
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 105
    :cond_c
    :goto_c
    return-void

    .line 102
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 103
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingHostReady()V

    .line 104
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    goto :goto_c
.end method
