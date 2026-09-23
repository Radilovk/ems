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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Z)V
    .registers 2

    .line 57
    if-eqz p1, :cond_6

    .line 58
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_9

    .line 60
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    .line 62
    :goto_9
    return-void
.end method

.method public onHeartRate(I)V
    .registers 2

    .line 52
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(I)V

    .line 53
    return-void
.end method

.method public onState(Ljava/lang/String;)V
    .registers 4

    .line 32
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, ""

    :goto_5
    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BLE:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$302(J)J

    .line 35
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 36
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bad_auth_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 37
    const-string p1, "Auth key \u0433\u0440\u0435\u0448\u0435\u043d \u2014 32 hex \u0441\u0438\u043c\u0432\u043e\u043b\u0430 \u043e\u0442 Mi Fitness"

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_6f

    .line 39
    :cond_3c
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bad_mac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 40
    const-string p1, "MAC \u0433\u0440\u0435\u0448\u0435\u043d \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u0438 \u0430\u0434\u0440\u0435\u0441\u0430 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_6f

    .line 42
    :cond_4e
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auth_fail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 43
    const-string p1, "Auth \u043d\u0435\u0443\u0441\u043f\u0435\u0448\u0435\u043d \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u0438 auth key \u0438 MAC"

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_6f

    .line 45
    :cond_60
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no_bt_permission"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    .line 48
    :cond_6f
    :goto_6f
    return-void
.end method
