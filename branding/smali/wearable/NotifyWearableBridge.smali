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
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;,
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ControlListener;
    }
.end annotation


# static fields
.field private static final FULL_RECONNECT_GAP_MS:J = 0x4b0L

.field private static final HR_POLICY_MS:J = 0x7d0L

.field public static final OWNER_AI:Ljava/lang/String; = "ai"

.field public static final OWNER_DIAL:Ljava/lang/String; = "dial"

.field public static final OWNER_LINK:Ljava/lang/String; = "link"

.field public static final OWNER_SETTINGS:Ljava/lang/String; = "settings"

.field private static bandConnected:Z

.field private static final bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

.field private static bleState:Ljava/lang/String;

.field private static controlConnected:Z

.field private static final controlListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ControlListener;

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
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 40
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 49
    const-string v0, "idle"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;-><init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    .line 52
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ControlListener;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ControlListener;-><init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->controlListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ControlListener;

    .line 253
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    .line 280
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    .line 296
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    .line 440
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 29
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->controlConnected:Z

    return p0
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 29
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->startRemote()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(J)J
    .registers 2

    .prologue
    .line 29
    sput-wide p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide p0
.end method

.method static synthetic access$700(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->performConnect(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static acquire(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 243
    if-nez p1, :cond_3

    .line 251
    :cond_2
    :goto_2
    return-void

    .line 246
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    :cond_12
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method static applyHr(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v8, -0x1

    .line 448
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->usesPulse(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isSessionActive()Z

    move-result v3

    .line 449
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->getLastMessageMs()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    .line 448
    invoke-static/range {v1 .. v7}, Lcom/isaigu/gymapp/wearable/HrDemandPolicy;->wantsHeartRate(Landroid/content/Context;Ljava/util/Set;ZJJ)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    .line 450
    :goto_1d
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_2c

    .line 463
    :goto_29
    return-void

    .line 448
    :cond_2a
    const/4 v0, 0x0

    goto :goto_1d

    .line 453
    :cond_2c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 454
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    .line 455
    if-eqz v0, :cond_58

    .line 456
    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->startRealtime()V

    .line 462
    :goto_3b
    const-string v1, "health"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "heart rate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_63

    const-string v0, "on"

    :goto_4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 458
    :cond_58
    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->stopRealtime()V

    .line 459
    sput v8, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 460
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v8, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    goto :goto_3b

    .line 462
    :cond_63
    const-string v0, "off"

    goto :goto_4c
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .prologue
    .line 146
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 150
    :goto_3
    return-void

    .line 147
    :catch_4
    move-exception v0

    .line 148
    const-string v1, "NotifyWearableBridge.attachMasterPanel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 3

    .prologue
    .line 153
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 154
    if-eqz p0, :cond_c

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->attach(Landroid/content/Context;)V

    .line 157
    :cond_c
    return-void
.end method

.method public static beginListening(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 205
    if-nez p0, :cond_5

    .line 226
    :cond_4
    :goto_4
    return-void

    .line 209
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

    .line 212
    :cond_1d
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    goto :goto_4

    .line 216
    :cond_27
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 217
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 218
    sput v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 219
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 220
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    .line 221
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 222
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 223
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 224
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 225
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    goto :goto_4
.end method

.method private static connect(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 368
    if-nez p0, :cond_39

    .line 369
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v1

    .line 371
    :goto_6
    if-eqz v1, :cond_c

    move-object v0, v1

    .line 372
    :goto_9
    if-nez v0, :cond_11

    .line 391
    :cond_b
    :goto_b
    return-void

    .line 371
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_9

    .line 375
    :cond_11
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 376
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->needsBand()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 379
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 380
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    goto :goto_b

    .line 383
    :cond_24
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 384
    if-eqz v1, :cond_b

    .line 385
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;-><init>()V

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_b

    .line 390
    :cond_35
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->performConnect(Landroid/content/Context;)V

    goto :goto_b

    :cond_39
    move-object v1, p0

    goto :goto_6
.end method

.method private static connectControl(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 489
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->hasControlBand(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 490
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->selectControl(Landroid/content/Context;Ljava/lang/String;I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    .line 491
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->controlConnected:Z

    .line 504
    :cond_e
    :goto_e
    return-void

    .line 494
    :cond_f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getControlMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->selectControl(Landroid/content/Context;Ljava/lang/String;I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    .line 496
    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v2

    if-nez v2, :cond_e

    .line 497
    sget-object v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->controlListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ControlListener;

    invoke-interface {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 498
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getControlKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v0, "control"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getTransportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_e

    .line 501
    :catch_4d
    move-exception v0

    .line 502
    const-string v1, "control"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static detachTrainingHost()V
    .registers 2

    .prologue
    .line 179
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->detachTrainingHostImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 183
    :goto_3
    return-void

    .line 180
    :catch_4
    move-exception v0

    .line 181
    const-string v1, "NotifyWearableBridge.detachTrainingHost"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static detachTrainingHostImpl()V
    .registers 0

    .prologue
    .line 186
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->detachTrainingHost()V

    .line 187
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->detach()V

    .line 188
    return-void
.end method

.method private static disconnect(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 528
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 530
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->stop()V

    .line 531
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->isDual()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 533
    :try_start_15
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->control()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_39

    .line 536
    :goto_1c
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->controlConnected:Z

    .line 538
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V

    .line 539
    const-string v0, "stopped"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 540
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->stop(Landroid/content/Context;)V

    .line 541
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    .line 542
    sput v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 543
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 544
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 545
    return-void

    .line 534
    :catch_39
    move-exception v0

    goto :goto_1c
.end method

.method public static fullReconnect(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 262
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v1, "dial"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    :try_start_8
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_42

    .line 268
    :goto_f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 269
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCacheOnNextConnect()V

    .line 270
    const-string v0, "reconnecting"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 271
    sput v4, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 272
    const-string v0, "reconnect"

    const-string v1, "full Bluetooth reconnect"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 274
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 275
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    iput-object p0, v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;->activity:Landroid/app/Activity;

    .line 277
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    return-void

    .line 265
    :catch_42
    move-exception v0

    .line 266
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

    goto :goto_f
.end method

.method public static getBleBuildTag()Ljava/lang/String;
    .registers 1

    .prologue
    .line 650
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->getBuildTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBleLastNotifyChar()Ljava/lang/String;
    .registers 1

    .prologue
    .line 646
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastNotifyChar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBleNotifyCount()I
    .registers 1

    .prologue
    .line 634
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getNotifyEventCount()I

    move-result v0

    return v0
.end method

.method public static getBleNotifyCount51()I
    .registers 1

    .prologue
    .line 638
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getNotifyCount51()I

    move-result v0

    return v0
.end method

.method public static getBleNotifyCount52()I
    .registers 1

    .prologue
    .line 642
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getNotifyCount52()I

    move-result v0

    return v0
.end method

.method public static getBleState()Ljava/lang/String;
    .registers 1

    .prologue
    .line 630
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    return-object v0
.end method

.method public static getGbHrEventCount()I
    .registers 1

    .prologue
    .line 622
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getHrEventCount()I

    move-result v0

    return v0
.end method

.method public static getLastEventAction()Ljava/lang/String;
    .registers 1

    .prologue
    .line 654
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastEventTimeMs()J
    .registers 2

    .prologue
    .line 658
    sget-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    return-wide v0
.end method

.method public static getLastHeartRate()I
    .registers 1

    .prologue
    .line 614
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    return v0
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 713
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_b

    .line 714
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 716
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_11

    move v0, v1

    .line 735
    :goto_10
    return v0

    .line 720
    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 721
    if-nez v3, :cond_1b

    move v0, v1

    .line 722
    goto :goto_10

    :cond_1b
    move v2, v1

    .line 724
    :goto_1c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_41

    .line 725
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 726
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_38

    .line 724
    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1c

    .line 729
    :cond_38
    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_3c} :catch_40

    if-eqz v0, :cond_34

    .line 730
    const/4 v0, 0x1

    goto :goto_10

    .line 733
    :catch_40
    move-exception v0

    :cond_41
    move v0, v1

    .line 735
    goto :goto_10
.end method

.method public static isBandConnected()Z
    .registers 1

    .prologue
    .line 618
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    return v0
.end method

.method public static isControlConnected()Z
    .registers 1

    .prologue
    .line 80
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->isDual()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->controlConnected:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isDirectBleActive()Z
    .registers 1

    .prologue
    .line 626
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isLinkUp()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 360
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 361
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

    .line 364
    :goto_26
    return v0

    .line 360
    :cond_27
    const-string v0, ""

    goto :goto_7

    .line 364
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
    .line 610
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    return v0
.end method

.method public static isOwnedBy(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 355
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isSessionActive()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 682
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 709
    :cond_7
    :goto_7
    return v0

    .line 686
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_22

    move-result v1

    if-nez v1, :cond_7

    .line 692
    :goto_e
    :try_start_e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ownsOutput()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_24

    move-result v1

    if-nez v1, :cond_7

    .line 698
    :goto_14
    :try_start_14
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_26

    move-result v1

    if-nez v1, :cond_7

    .line 704
    :goto_1a
    :try_start_1a
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->isCounting()Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_28

    move-result v1

    if-nez v1, :cond_7

    .line 709
    :goto_20
    const/4 v0, 0x0

    goto :goto_7

    .line 689
    :catch_22
    move-exception v1

    goto :goto_e

    .line 695
    :catch_24
    move-exception v1

    goto :goto_14

    .line 701
    :catch_26
    move-exception v1

    goto :goto_1a

    .line 707
    :catch_28
    move-exception v0

    goto :goto_20
.end method

.method static normalizeMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0xc

    .line 662
    if-nez p0, :cond_7

    .line 663
    const-string v0, ""

    .line 677
    :goto_6
    return-object v0

    .line 665
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

    .line 666
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_2e

    .line 667
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 669
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x11

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 670
    const/4 v0, 0x0

    :goto_36
    if-ge v0, v4, :cond_56

    .line 671
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_43

    .line 672
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 674
    :cond_43
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 675
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    add-int/lit8 v0, v0, 0x2

    goto :goto_36

    .line 677
    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method static onBandConnected()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 590
    sput-boolean v4, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 592
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_1c

    .line 596
    :goto_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->isDual()Z

    move-result v0

    if-nez v0, :cond_13

    .line 597
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->startRemote()V

    .line 599
    :cond_13
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 600
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 601
    return-void

    .line 593
    :catch_1c
    move-exception v0

    .line 594
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

    goto :goto_a
.end method

.method static onBandDisconnected()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 604
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 605
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 606
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 607
    return-void
.end method

.method public static onControlBandChanged(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 509
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->isDual()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->control()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 510
    :cond_b
    if-eqz v0, :cond_10

    .line 511
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V

    .line 513
    :cond_10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->controlConnected:Z

    .line 514
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_28

    .line 515
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connectControl(Landroid/content/Context;)V

    .line 516
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->isDual()Z

    move-result v0

    if-nez v0, :cond_27

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    if-eqz v0, :cond_27

    .line 517
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->startRemote()V

    .line 525
    :cond_27
    :goto_27
    return-void

    .line 519
    :cond_28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->hasControlBand(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 520
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->selectControl(Landroid/content/Context;Ljava/lang/String;I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_33} :catch_34

    goto :goto_27

    .line 522
    :catch_34
    move-exception v0

    .line 523
    const-string v1, "control"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method static onHeartRate(I)V
    .registers 5

    .prologue
    .line 548
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x28

    if-lt p0, v0, :cond_c

    const/16 v0, 0xdc

    if-le p0, v0, :cond_d

    .line 575
    :cond_c
    :goto_c
    return-void

    .line 552
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->usesPulse(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 556
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 557
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

    goto :goto_c

    .line 560
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/isaigu/gymapp/wearable/HrHistory;->add(JI)V

    .line 561
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrEventCount:I

    .line 562
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 563
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 565
    :try_start_50
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->onHeartRate(I)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_74

    .line 568
    :goto_53
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 571
    :try_start_56
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/HrGuard;->onHeartRate(I)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_c

    .line 572
    :catch_5a
    move-exception v0

    .line 573
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

    .line 566
    :catch_74
    move-exception v0

    goto :goto_53
.end method

.method static onRoleChanged(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 579
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->usesPulse(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 580
    sput v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 581
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 583
    :cond_e
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z

    if-eqz v0, :cond_1c

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    if-eqz v0, :cond_1c

    .line 584
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 585
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V

    .line 587
    :cond_1c
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 2

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onTrainingFullStopImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 196
    :goto_3
    return-void

    .line 193
    :catch_4
    move-exception v0

    .line 194
    const-string v1, "NotifyWearableBridge.onTrainingFullStop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static onTrainingFullStopImpl()V
    .registers 1

    .prologue
    .line 199
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->onTrainingStopped()V

    .line 200
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    .line 201
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->onManualStop()V

    .line 202
    return-void
.end method

.method private static performConnect(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 394
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->gateGattOrNotify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 417
    :goto_6
    return-void

    .line 397
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 398
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V

    goto :goto_6

    .line 401
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 402
    invoke-static {}, Lcom/isaigu/gymapp/wearable/EmsBleCoexist;->pauseEmsBle()V

    .line 403
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaForegroundService;->start(Landroid/content/Context;)V

    .line 404
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->select(Landroid/content/Context;Ljava/lang/String;I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    .line 407
    sget-object v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleListener:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;

    invoke-interface {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 408
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connectControl(Landroid/content/Context;)V

    .line 410
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 411
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V

    .line 412
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrPolicy:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
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

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J

    .line 416
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    goto :goto_6
.end method

.method public static reconnect(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 338
    if-eqz p1, :cond_7

    .line 339
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    .line 342
    return-void
.end method

.method public static release(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 346
    if-eqz p1, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 352
    :cond_a
    :goto_a
    return-void

    .line 349
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 350
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->disconnect(Landroid/content/Context;)V

    goto :goto_a
.end method

.method public static requestConnect()V
    .registers 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 230
    return-void
.end method

.method public static requestConnect(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 234
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v1, "dial"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V

    .line 236
    return-void
.end method

.method public static settingsFullReconnect(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 317
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v1, "settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    :try_start_8
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_45

    .line 323
    :goto_f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 324
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCacheOnNextConnect()V

    .line 325
    const-string v0, "reconnecting"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    .line 326
    sput v4, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 327
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    .line 328
    const-string v0, "reconnect"

    const-string v1, "settings full reconnect"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 331
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    iput-object p0, v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;->activity:Landroid/app/Activity;

    .line 333
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    return-void

    .line 320
    :catch_45
    move-exception v0

    .line 321
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

    goto :goto_f
.end method

.method public static shutdown(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 482
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 483
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->disconnect(Landroid/content/Context;)V

    .line 484
    return-void
.end method

.method private static startRemote()V
    .registers 4

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->start()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_7

    .line 91
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onBandConnected()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_21

    .line 95
    :goto_6
    return-void

    .line 87
    :catch_7
    move-exception v0

    .line 88
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

    goto :goto_3

    .line 92
    :catch_21
    move-exception v0

    .line 93
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

    goto :goto_6
.end method

.method public static stopListening(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 431
    const-string v0, "dial"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 433
    return-void
.end method

.method public static syncTrainingState()V
    .registers 2

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->syncTrainingStateImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 165
    :goto_3
    return-void

    .line 162
    :catch_4
    move-exception v0

    .line 163
    const-string v1, "NotifyWearableBridge.syncTrainingState"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static syncTrainingStateImpl()V
    .registers 1

    .prologue
    .line 168
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 175
    :cond_c
    :goto_c
    return-void

    .line 172
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 173
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingHostReady()V

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChanged(Z)V

    goto :goto_c
.end method
