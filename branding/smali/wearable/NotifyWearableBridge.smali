.class public final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;,
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;,
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;,
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;,
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;
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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    .line 38
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 42
    const-string v0, "idle"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;-><init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    .line 224
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    .line 240
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    .line 383
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(J)J
    .registers 2

    .line 28
    sput-wide p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide p0
.end method

.method static synthetic access$400(Landroid/app/Activity;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->performConnect(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    return-object v0
.end method

.method public static acquire(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 187
    if-nez p1, :cond_3

    .line 188
    return-void

    .line 190
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    sget-boolean p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 192
    return-void

    .line 194
    :cond_13
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    .line 195
    return-void
.end method

.method static applyHr(Landroid/content/Context;)V
    .registers 8

    .line 391
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isSessionActive()Z

    move-result v2

    .line 392
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->getLastMessageMs()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 391
    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/HrDemandPolicy;->wantsHeartRate(Landroid/content/Context;Ljava/util/Set;ZJJ)Z

    move-result p0

    .line 393
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p0, :cond_1e

    .line 394
    return-void

    .line 396
    :cond_1e
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 397
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 398
    if-eqz p0, :cond_2e

    .line 399
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->startRealtime()V

    goto :goto_39

    .line 401
    :cond_2e
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->stopRealtime()V

    .line 402
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 403
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 405
    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "heart rate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_48

    const-string p0, "on"

    goto :goto_4a

    :cond_48
    const-string p0, "off"

    :goto_4a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "health"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 95
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 98
    goto :goto_a

    .line 96
    :catchall_4
    move-exception p0

    .line 97
    const-string p1, "NotifyWearableBridge.attachMasterPanel"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :goto_a
    return-void
.end method

.method private static attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 102
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 103
    return-void
.end method

.method public static beginListening(Landroid/content/Context;)V
    .registers 4

    .line 149
    if-nez p0, :cond_3

    .line 150
    return-void

    .line 153
    :cond_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v2, "dial"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 154
    return-void

    .line 156
    :cond_1d
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 157
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    .line 158
    return-void

    .line 160
    :cond_27
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 161
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 162
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 163
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 164
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 165
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 166
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 168
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 169
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 170
    return-void
.end method

.method private static connect(Landroid/app/Activity;)V
    .registers 3

    .line 312
    if-nez p0, :cond_6

    .line 313
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object p0

    .line 315
    :cond_6
    if-eqz p0, :cond_a

    move-object v0, p0

    goto :goto_e

    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 316
    :goto_e
    if-nez v0, :cond_11

    .line 317
    return-void

    .line 319
    :cond_11
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 320
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->needsBand()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 321
    return-void

    .line 323
    :cond_1b
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 324
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    .line 325
    return-void

    .line 327
    :cond_25
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 328
    if-eqz p0, :cond_35

    .line 329
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;-><init>()V

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 332
    :cond_35
    return-void

    .line 334
    :cond_36
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->performConnect(Landroid/content/Context;)V

    .line 335
    return-void
.end method

.method public static detachTrainingHost()V
    .registers 2

    .line 125
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->detachTrainingHostImpl()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 128
    goto :goto_a

    .line 126
    :catchall_4
    move-exception v0

    .line 127
    const-string v1, "NotifyWearableBridge.detachTrainingHost"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :goto_a
    return-void
.end method

.method private static detachTrainingHostImpl()V
    .registers 0

    .line 132
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->detachTrainingHost()V

    .line 133
    return-void
.end method

.method private static disconnect(Landroid/content/Context;)V
    .registers 3

    .line 430
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 432
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->stop()V

    .line 433
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V

    .line 434
    const-string v0, "stopped"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 435
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->stop(Landroid/content/Context;)V

    .line 436
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 437
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 438
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 439
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 440
    return-void
.end method

.method public static fullReconnect(Landroid/app/Activity;)V
    .registers 5

    .line 206
    const-string v0, "reconnect"

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v2, "dial"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    :try_start_9
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    .line 211
    goto :goto_26

    .line 209
    :catchall_11
    move-exception v1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_26
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCacheOnNextConnect()V

    .line 214
    const-string v1, "reconnecting"

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 215
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 216
    const-string v2, "full Bluetooth reconnect"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 218
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 219
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    iput-object p0, v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;->activity:Landroid/app/Activity;

    .line 221
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    return-void
.end method

.method public static getBleBuildTag()Ljava/lang/String;
    .registers 1

    .line 536
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->getBuildTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBleLastNotifyChar()Ljava/lang/String;
    .registers 1

    .line 532
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastNotifyChar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBleNotifyCount()I
    .registers 1

    .line 520
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getNotifyEventCount()I

    move-result v0

    return v0
.end method

.method public static getBleNotifyCount51()I
    .registers 1

    .line 524
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getNotifyCount51()I

    move-result v0

    return v0
.end method

.method public static getBleNotifyCount52()I
    .registers 1

    .line 528
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getNotifyCount52()I

    move-result v0

    return v0
.end method

.method public static getBleState()Ljava/lang/String;
    .registers 1

    .line 516
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object v0
.end method

.method public static getGbCommandCount()I
    .registers 1

    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public static getGbHrEventCount()I
    .registers 1

    .line 508
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getHrEventCount()I

    move-result v0

    return v0
.end method

.method public static getGbPackageLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 548
    const-string p0, "--"

    return-object p0
.end method

.method public static getLastEventAction()Ljava/lang/String;
    .registers 1

    .line 552
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastEventTimeMs()J
    .registers 2

    .line 556
    sget-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide v0
.end method

.method public static getLastHeartRate()I
    .registers 1

    .line 500
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    return v0
.end method

.method public static getResolvedGadgetbridgePackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 544
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .line 611
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_a

    .line 612
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 614
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 615
    return v1

    .line 618
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 619
    if-nez v0, :cond_17

    .line 620
    return v1

    .line 622
    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 623
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 624
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_31

    .line 625
    goto :goto_39

    .line 627
    :cond_31
    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_3d

    if-eqz v3, :cond_39

    .line 628
    const/4 v0, 0x1

    return v0

    .line 622
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 632
    :cond_3c
    goto :goto_3e

    .line 631
    :catchall_3d
    move-exception v0

    .line 633
    :goto_3e
    return v1
.end method

.method public static isBandConnected()Z
    .registers 1

    .line 504
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    return v0
.end method

.method public static isDirectBleActive()Z
    .registers 1

    .line 512
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isLinkUp()Z
    .registers 2

    .line 304
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, ""

    .line 305
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "idle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "stopped"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "disconnected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_2d

    .line 308
    :cond_26
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 306
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method public static isListeningActive()Z
    .registers 1

    .line 496
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isOwnedBy(Ljava/lang/String;)Z
    .registers 2

    .line 299
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isSessionActive()Z
    .registers 2

    .line 580
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 581
    return v1

    .line 584
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    if-eqz v0, :cond_f

    .line 585
    return v1

    .line 588
    :cond_f
    goto :goto_11

    .line 587
    :catchall_10
    move-exception v0

    .line 590
    :goto_11
    :try_start_11
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ownsOutput()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_19

    if-eqz v0, :cond_18

    .line 591
    return v1

    .line 594
    :cond_18
    goto :goto_1a

    .line 593
    :catchall_19
    move-exception v0

    .line 596
    :goto_1a
    :try_start_1a
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_22

    if-eqz v0, :cond_21

    .line 597
    return v1

    .line 600
    :cond_21
    goto :goto_23

    .line 599
    :catchall_22
    move-exception v0

    .line 602
    :goto_23
    :try_start_23
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->isCounting()Z

    move-result v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_2b

    if-eqz v0, :cond_2a

    .line 603
    return v1

    .line 606
    :cond_2a
    goto :goto_2c

    .line 605
    :catchall_2b
    move-exception v0

    .line 607
    :goto_2c
    const/4 v0, 0x0

    return v0
.end method

.method static normalizeMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 560
    const-string v0, ""

    if-nez p0, :cond_5

    .line 561
    return-object v0

    .line 563
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

    .line 564
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_28

    .line 565
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 567
    :cond_28
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 568
    const/4 v1, 0x0

    :goto_30
    if-ge v1, v2, :cond_50

    .line 569
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3d

    .line 570
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    :cond_3d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 568
    add-int/lit8 v1, v1, 0x2

    goto :goto_30

    .line 575
    :cond_50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static onBandConnected()V
    .registers 4

    .line 469
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 471
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    .line 474
    goto :goto_22

    .line 472
    :catchall_b
    move-exception v1

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyHr on connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "health"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :goto_22
    :try_start_22
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->start()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    .line 479
    goto :goto_3d

    .line 477
    :catchall_26
    move-exception v1

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :goto_3d
    :try_start_3d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onBandConnected()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    .line 484
    goto :goto_58

    .line 482
    :catchall_41
    move-exception v1

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "install"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_58
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 486
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 487
    return-void
.end method

.method static onBandDisconnected()V
    .registers 2

    .line 490
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 491
    sget v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 492
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 493
    return-void
.end method

.method static onHeartRate(I)V
    .registers 3

    .line 443
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_67

    const/16 v0, 0x28

    if-lt p0, v0, :cond_67

    const/16 v0, 0xdc

    if-le p0, v0, :cond_d

    goto :goto_67

    .line 447
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignored "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u2014 band not worn"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hr"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void

    .line 451
    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/isaigu/gymapp/wearable/HrHistory;->add(JI)V

    .line 452
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 453
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 454
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 456
    :try_start_43
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->onHeartRate(I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 458
    goto :goto_48

    .line 457
    :catchall_47
    move-exception v0

    .line 459
    :goto_48
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 462
    :try_start_4b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/HrGuard;->onHeartRate(I)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    .line 465
    goto :goto_66

    .line 463
    :catchall_4f
    move-exception p0

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHeartRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hr_guard"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_66
    return-void

    .line 444
    :cond_67
    :goto_67
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 2

    .line 137
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onTrainingFullStopImpl()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 140
    goto :goto_a

    .line 138
    :catchall_4
    move-exception v0

    .line 139
    const-string v1, "NotifyWearableBridge.onTrainingFullStop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :goto_a
    return-void
.end method

.method private static onTrainingFullStopImpl()V
    .registers 1

    .line 144
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 145
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->onManualStop()V

    .line 146
    return-void
.end method

.method private static performConnect(Landroid/content/Context;)V
    .registers 5

    .line 338
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->gateGattOrNotify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 339
    return-void

    .line 341
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 342
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    .line 343
    return-void

    .line 345
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 346
    invoke-static {}, Lcom/isaigu/gymapp/wearable/EmsBleCoexist;->pauseEmsBle()V

    .line 347
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->start(Landroid/content/Context;)V

    .line 348
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->select(Landroid/content/Context;Ljava/lang/String;I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    .line 351
    sget-object v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    invoke-interface {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 352
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 354
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V

    .line 355
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getTransportName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":connect"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 359
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 360
    return-void
.end method

.method public static reconnect(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 282
    if-eqz p1, :cond_7

    .line 283
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    .line 286
    return-void
.end method

.method public static release(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 290
    if-eqz p1, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_17

    .line 293
    :cond_b
    sget-object p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 294
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->disconnect(Landroid/content/Context;)V

    .line 296
    :cond_16
    return-void

    .line 291
    :cond_17
    :goto_17
    return-void
.end method

.method public static requestConnect()V
    .registers 1

    .line 173
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 174
    return-void
.end method

.method public static requestConnect(Landroid/app/Activity;)V
    .registers 3

    .line 178
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v1, "dial"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    .line 180
    return-void
.end method

.method public static settingsFullReconnect(Landroid/app/Activity;)V
    .registers 5

    .line 261
    const-string v0, "reconnect"

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v2, "settings"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    :try_start_9
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    .line 266
    goto :goto_26

    .line 264
    :catchall_11
    move-exception v1

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings disconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_26
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 268
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCacheOnNextConnect()V

    .line 269
    const-string v1, "reconnecting"

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 270
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 271
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 272
    const-string v2, "settings full reconnect"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 274
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 275
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    iput-object p0, v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;->activity:Landroid/app/Activity;

    .line 277
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    return-void
.end method

.method public static shutdown(Landroid/content/Context;)V
    .registers 2

    .line 425
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 426
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->disconnect(Landroid/content/Context;)V

    .line 427
    return-void
.end method

.method public static stopListening(Landroid/content/Context;)V
    .registers 2

    .line 374
    const-string v0, "dial"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 376
    return-void
.end method

.method public static syncTrainingState()V
    .registers 2

    .line 107
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->syncTrainingStateImpl()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 110
    goto :goto_a

    .line 108
    :catchall_4
    move-exception v0

    .line 109
    const-string v1, "NotifyWearableBridge.syncTrainingState"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :goto_a
    return-void
.end method

.method private static syncTrainingStateImpl()V
    .registers 1

    .line 114
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_1e

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1e

    .line 118
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 119
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingHostReady()V

    .line 120
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 121
    return-void

    .line 116
    :cond_1e
    :goto_1e
    return-void
.end method
