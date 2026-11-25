.class public final Lcom/isaigu/gymapp/wearable/vr/VrBridge;
.super Ljava/lang/Object;
.source "VrBridge.java"


# static fields
.field private static receiver:Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized attach(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 18
    const-class v1, Lcom/isaigu/gymapp/wearable/vr/VrBridge;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->receiver:Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3c

    if-nez v0, :cond_9

    if-nez p0, :cond_b

    .line 32
    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    .line 22
    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->setContext(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;

    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;)V

    .line 24
    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrControl;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/vr/VrControl;-><init>()V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->setControl(Lcom/isaigu/gymapp/wearable/vr/VrControlSink;)V

    .line 25
    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;-><init>()V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->setZoneSink(Lcom/isaigu/gymapp/wearable/vr/VrZoneSink;)V

    .line 26
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->start()V

    .line 27
    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->receiver:Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;

    .line 28
    const-string v0, "vr"

    const-string v2, "listening udp 47800"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_34} :catch_35
    .catchall {:try_start_b .. :try_end_34} :catchall_3c

    goto :goto_9

    .line 29
    :catch_35
    move-exception v0

    .line 30
    :try_start_36
    const-string v2, "VrBridge.attach"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3c

    goto :goto_9

    .line 18
    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized detach()V
    .registers 3

    .prologue
    .line 35
    const-class v1, Lcom/isaigu/gymapp/wearable/vr/VrBridge;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->receiver:Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;

    .line 36
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->receiver:Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    .line 37
    if-nez v0, :cond_c

    .line 45
    :goto_a
    monitor-exit v1

    return-void

    .line 41
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stop()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_10
    .catchall {:try_start_c .. :try_end_f} :catchall_17

    goto :goto_a

    .line 42
    :catch_10
    move-exception v0

    .line 43
    :try_start_11
    const-string v2, "VrBridge.detach"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    goto :goto_a

    .line 35
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isListening()Z
    .registers 2

    .prologue
    .line 56
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
    .line 49
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->onTrainingStopped()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 53
    :goto_3
    return-void

    .line 50
    :catch_4
    move-exception v0

    .line 51
    const-string v1, "VrBridge.onTrainingStopped"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
