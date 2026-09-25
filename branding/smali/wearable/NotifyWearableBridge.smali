.class public final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;,
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;,
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;,
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;,
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;
    }
.end annotation


# static fields
.field private static final FULL_RECONNECT_GAP_MS:J = 0x4b0L

.field private static final HR_POLICY_MS:J = 0x7d0L

.field public static final OWNER_AI:Ljava/lang/String; = "ai"

.field public static final OWNER_DIAL:Ljava/lang/String; = "dial"

.field public static final OWNER_SETTINGS:Ljava/lang/String; = "settings"

.field private static bandConnected:Z

.field private static final bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

.field private static bleState:Ljava/lang/String;

.field private static final fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

.field private static hrEventCount:I

.field private static hrOn:Ljava/lang/Boolean;

.field private static final hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static lastEventAction:Ljava/lang/String;

.field private static lastEventTimeMs:J

.field private static lastHr:I

.field private static listeningActive:Z

.field private static final main:Landroid/os/Handler;

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

.field private static final settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    .line 33
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 37
    const-string v0, "idle"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;-><init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    .line 219
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    .line 235
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    .line 378
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(J)J
    .locals 0

    .prologue
    .line 23
    sput-wide p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide p0
.end method

.method static synthetic access$400(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->performConnect(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    return-object v0
.end method

.method public static acquire(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :cond_2
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method static applyHr(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 385
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/HrDemandPolicy;->wantsHeartRate(Landroid/content/Context;Ljava/util/Set;)Z

    move-result v0

    .line 386
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 390
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    .line 391
    if-eqz v0, :cond_1

    .line 392
    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->startRealtime()V

    .line 398
    :goto_1
    const-string v1, "health"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "heart rate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    const-string v0, "on"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_1
    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->stopRealtime()V

    .line 395
    sput v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 396
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    goto :goto_1

    .line 398
    :cond_2
    const-string v0, "off"

    goto :goto_2
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .locals 2

    .prologue
    .line 90
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "NotifyWearableBridge.attachMasterPanel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .locals 0

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 98
    return-void
.end method

.method public static beginListening(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 144
    if-nez p0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v1, "dial"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :cond_2
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    goto :goto_0

    .line 155
    :cond_3
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 156
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 157
    sput v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 158
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 159
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 160
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 163
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 164
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    goto :goto_0
.end method

.method private static connect(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 307
    if-nez p0, :cond_5

    .line 308
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v1

    .line 310
    :goto_0
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 311
    :goto_1
    if-nez v0, :cond_2

    .line 330
    :cond_0
    :goto_2
    return-void

    .line 310
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 314
    :cond_2
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 315
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->needsBand()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 319
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    goto :goto_2

    .line 322
    :cond_3
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 323
    if-eqz v1, :cond_0

    .line 324
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;-><init>()V

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 329
    :cond_4
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->performConnect(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    move-object v1, p0

    goto :goto_0
.end method

.method public static detachTrainingHost()V
    .locals 2

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->detachTrainingHostImpl()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "NotifyWearableBridge.detachTrainingHost"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static detachTrainingHostImpl()V
    .locals 0

    .prologue
    .line 127
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->detachTrainingHost()V

    .line 128
    return-void
.end method

.method private static disconnect(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 423
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 424
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 425
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->stop()V

    .line 426
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V

    .line 427
    const-string v0, "stopped"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 428
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->stop(Landroid/content/Context;)V

    .line 429
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 430
    sput v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 431
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 432
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 433
    return-void
.end method

.method public static fullReconnect(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 201
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v1, "dial"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 208
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCacheOnNextConnect()V

    .line 209
    const-string v0, "reconnecting"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 210
    sput v4, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 211
    const-string v0, "reconnect"

    const-string v1, "full Bluetooth reconnect"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 214
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    iput-object p0, v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;->activity:Landroid/app/Activity;

    .line 216
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string v1, "reconnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBleBuildTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->getBuildTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBleLastNotifyChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastNotifyChar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBleNotifyCount()I
    .locals 1

    .prologue
    .line 513
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getNotifyEventCount()I

    move-result v0

    return v0
.end method

.method public static getBleNotifyCount51()I
    .locals 1

    .prologue
    .line 517
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getNotifyCount51()I

    move-result v0

    return v0
.end method

.method public static getBleNotifyCount52()I
    .locals 1

    .prologue
    .line 521
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getNotifyCount52()I

    move-result v0

    return v0
.end method

.method public static getBleState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object v0
.end method

.method public static getGbCommandCount()I
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public static getGbHrEventCount()I
    .locals 1

    .prologue
    .line 501
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getHrEventCount()I

    move-result v0

    return v0
.end method

.method public static getGbPackageLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    const-string v0, "--"

    return-object v0
.end method

.method public static getLastEventAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastEventTimeMs()J
    .locals 2

    .prologue
    .line 549
    sget-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide v0
.end method

.method public static getLastHeartRate()I
    .locals 1

    .prologue
    .line 493
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    return v0
.end method

.method public static getResolvedGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isAnyTrainingRunning()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 572
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_0

    .line 573
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 575
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_1

    move v0, v1

    .line 594
    :goto_0
    return v0

    .line 579
    :cond_1
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 580
    if-nez v3, :cond_2

    move v0, v1

    .line 581
    goto :goto_0

    :cond_2
    move v2, v1

    .line 583
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 584
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 585
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_4

    .line 583
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 588
    :cond_4
    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 589
    const/4 v0, 0x1

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    :cond_5
    move v0, v1

    .line 594
    goto :goto_0
.end method

.method public static isBandConnected()Z
    .locals 1

    .prologue
    .line 497
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    return v0
.end method

.method public static isDirectBleActive()Z
    .locals 1

    .prologue
    .line 505
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isLinkUp()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 299
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 300
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "idle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "stopped"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "disconnected"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 303
    :goto_1
    return v0

    .line 299
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 303
    :cond_2
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static isListeningActive()Z
    .locals 1

    .prologue
    .line 489
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isOwnedBy(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static normalizeMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 553
    if-nez p0, :cond_0

    .line 554
    const-string v0, ""

    .line 568
    :goto_0
    return-object v0

    .line 556
    :cond_0
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

    .line 557
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 558
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 560
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x11

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 561
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    .line 562
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 563
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 565
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 568
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static onBandConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 462
    sput-boolean v4, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 464
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 474
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onBandConnected()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 478
    :goto_2
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 479
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 480
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    const-string v1, "health"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyHr on connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :catch_1
    move-exception v0

    .line 471
    const-string v1, "remote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 475
    :catch_2
    move-exception v0

    .line 476
    const-string v1, "install"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static onBandDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 483
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 484
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 485
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 486
    return-void
.end method

.method static onHeartRate(I)V
    .locals 4

    .prologue
    .line 436
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    if-lt p0, v0, :cond_0

    const/16 v0, 0xdc

    if-le p0, v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    const-string v0, "hr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2014 band not worn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/isaigu/gymapp/wearable/HrHistory;->add(JI)V

    .line 445
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 446
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 447
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 449
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->onHeartRate(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 455
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/HrGuard;->onHeartRate(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
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

    goto :goto_0

    .line 450
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static onTrainingFullStop()V
    .locals 2

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onTrainingFullStopImpl()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "NotifyWearableBridge.onTrainingFullStop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static onTrainingFullStopImpl()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 140
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->onManualStop()V

    .line 141
    return-void
.end method

.method private static performConnect(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 333
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->gateGattOrNotify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    goto :goto_0

    .line 340
    :cond_1
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 341
    invoke-static {}, Lcom/isaigu/gymapp/wearable/EmsBleCoexist;->pauseEmsBle()V

    .line 342
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->start(Landroid/content/Context;)V

    .line 343
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->select(Landroid/content/Context;Ljava/lang/String;I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    .line 346
    sget-object v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    invoke-interface {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 347
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 349
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V

    .line 350
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getTransportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":connect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 354
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    goto :goto_0
.end method

.method public static reconnect(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    .line 281
    return-void
.end method

.method public static release(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 285
    if-eqz p1, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->disconnect(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static requestConnect()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 169
    return-void
.end method

.method public static requestConnect(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v1, "dial"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    .line 175
    return-void
.end method

.method public static settingsFullReconnect(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 256
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v1, "settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 263
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCacheOnNextConnect()V

    .line 264
    const-string v0, "reconnecting"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 265
    sput v4, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 266
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 267
    const-string v0, "reconnect"

    const-string v1, "settings full reconnect"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 269
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 270
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    iput-object p0, v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;->activity:Landroid/app/Activity;

    .line 272
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const-string v1, "reconnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings disconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shutdown(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 419
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->disconnect(Landroid/content/Context;)V

    .line 420
    return-void
.end method

.method public static stopListening(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 369
    const-string v0, "dial"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 371
    return-void
.end method

.method public static syncTrainingState()V
    .locals 2

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->syncTrainingStateImpl()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "NotifyWearableBridge.syncTrainingState"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static syncTrainingStateImpl()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 114
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingHostReady()V

    .line 115
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    goto :goto_0
.end method
