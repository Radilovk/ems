.class final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectBleListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Z)V
    .registers 2

    .prologue
    .line 134
    if-eqz p1, :cond_6

    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    .line 139
    :goto_5
    return-void

    .line 137
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    goto :goto_5
.end method

.method public onHeartRate(I)V
    .registers 2

    .prologue
    .line 129
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(I)V

    .line 130
    return-void
.end method

.method public onState(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 100
    if-eqz p1, :cond_6c

    :goto_2
    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getTransportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$602(J)J

    .line 103
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 104
    const-string v0, "bad_auth_key"

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 105
    const-string v0, "\u0413\u0440\u0435\u0448\u0435\u043d \u043a\u043b\u044e\u0447 \u2014 \u043d\u0443\u0436\u043d\u0438 \u0441\u0430 32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 \u043e\u0442 Mi Fitness"

    const-string v1, "Wrong key \u2014 32 characters from Mi Fitness"

    .line 106
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    .line 119
    :cond_4c
    :goto_4c
    const-string v0, "authenticated"

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    const-string v0, "initialized"

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 121
    :cond_64
    :try_start_64
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6b} :catch_af

    .line 125
    :cond_6b
    :goto_6b
    return-void

    .line 100
    :cond_6c
    const-string p1, ""

    goto :goto_2

    .line 108
    :cond_6f
    const-string v0, "bad_mac"

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 109
    const-string v0, "\u0413\u0440\u0435\u0448\u0435\u043d MAC \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u0438 \u0430\u0434\u0440\u0435\u0441\u0430 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v1, "Wrong MAC \u2014 check the band\'s address"

    .line 110
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_4c

    .line 112
    :cond_87
    const-string v0, "auth_fail"

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 113
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u043f\u0440\u0438\u0435 \u043a\u043b\u044e\u0447\u0430 \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u0438 \u043a\u043b\u044e\u0447\u0430 \u0438 MAC"

    const-string v1, "The band rejected the key \u2014 check key and MAC"

    .line 114
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_4c

    .line 116
    :cond_9f
    const-string v0, "no_bt_permission"

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 117
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    goto :goto_4c

    .line 122
    :catch_af
    move-exception v0

    goto :goto_6b
.end method
