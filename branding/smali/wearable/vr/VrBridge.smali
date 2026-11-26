.class public final Lcom/isaigu/gymapp/wearable/vr/VrBridge;
.super Ljava/lang/Object;
.source "VrBridge.java"


# static fields
.field private static held:Z

.field private static receiver:Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;

.field private static trainingOpen:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized attach(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 34
    const-class v1, Lcom/isaigu/gymapp/wearable/vr/VrBridge;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->trainingOpen:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->held:Z

    if-nez v0, :cond_16

    :cond_b
    const/4 v0, 0x1

    :goto_c
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->trainingOpen:Z

    .line 35
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->receiver:Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_49

    if-nez v0, :cond_14

    if-nez p0, :cond_18

    .line 49
    :cond_14
    :goto_14
    monitor-exit v1

    return-void

    .line 34
    :cond_16
    const/4 v0, 0x0

    goto :goto_c

    .line 39
    :cond_18
    :try_start_18
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->setContext(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;

    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;)V

    .line 41
    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrControl;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/vr/VrControl;-><init>()V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->setControl(Lcom/isaigu/gymapp/wearable/vr/VrControlSink;)V

    .line 42
    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;-><init>()V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->setZoneSink(Lcom/isaigu/gymapp/wearable/vr/VrZoneSink;)V

    .line 43
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->start()V

    .line 44
    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->receiver:Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;

    .line 45
    const-string v0, "vr"

    const-string v2, "listening udp 47800"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_41} :catch_42
    .catchall {:try_start_18 .. :try_end_41} :catchall_49

    goto :goto_14

    .line 46
    :catch_42
    move-exception v0

    .line 47
    :try_start_43
    const-string v2, "VrBridge.attach"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_49

    goto :goto_14

    .line 34
    :catchall_49
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized detach()V
    .registers 3

    .prologue
    .line 52
    const-class v1, Lcom/isaigu/gymapp/wearable/vr/VrBridge;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->trainingOpen:Z

    .line 53
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->held:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1e

    if-eqz v0, :cond_c

    .line 66
    :cond_a
    :goto_a
    monitor-exit v1

    return-void

    .line 56
    :cond_c
    :try_start_c
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->receiver:Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;

    .line 57
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->receiver:Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1e

    .line 58
    if-eqz v0, :cond_a

    .line 62
    :try_start_13
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stop()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_1e

    goto :goto_a

    .line 63
    :catch_17
    move-exception v0

    .line 64
    :try_start_18
    const-string v2, "VrBridge.detach"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1e

    goto :goto_a

    .line 52
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized hold(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 22
    const-class v1, Lcom/isaigu/gymapp/wearable/vr/VrBridge;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->held:Z

    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->attach(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 24
    monitor-exit v1

    return-void

    .line 22
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isListening()Z
    .registers 2

    .prologue
    .line 77
    const-class v1, Lcom/isaigu/gymapp/wearable/vr/VrBridge;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->receiver:Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onTrainingStopped()V
    .registers 2

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->onTrainingStopped()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 74
    :goto_3
    return-void

    .line 71
    :catch_4
    move-exception v0

    .line 72
    const-string v1, "VrBridge.onTrainingStopped"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static declared-synchronized unhold()V
    .registers 2

    .prologue
    .line 27
    const-class v1, Lcom/isaigu/gymapp/wearable/vr/VrBridge;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->held:Z

    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->trainingOpen:Z

    if-nez v0, :cond_d

    .line 29
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->detach()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    .line 31
    :cond_d
    monitor-exit v1

    return-void

    .line 27
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
