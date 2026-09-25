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
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Z)V
    .locals 0

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    goto :goto_0
.end method

.method public onHeartRate(I)V
    .locals 0

    .prologue
    .line 67
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(I)V

    .line 68
    return-void
.end method

.method public onState(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 45
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

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$302(J)J

    .line 47
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 48
    const-string v0, "bad_auth_key"

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    const-string v0, "\u0413\u0440\u0435\u0448\u0435\u043d \u043a\u043b\u044e\u0447 \u2014 \u043d\u0443\u0436\u043d\u0438 \u0441\u0430 32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 \u043e\u0442 Mi Fitness"

    const-string v1, "Wrong key \u2014 32 characters from Mi Fitness"

    .line 50
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authenticated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_hr_try

    const-string v1, "initialized"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_hr_try

    return-void

    :cond_hr_try
    :try_start_hr
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V
    :try_end_hr
    .catch Ljava/lang/Throwable; {:try_start_hr .. :try_end_hr} :catch_hr

    :catch_hr
    return-void

    .line 44
    :cond_1
    const-string p1, ""

    goto :goto_0

    .line 52
    :cond_2
    const-string v0, "bad_mac"

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    const-string v0, "\u0413\u0440\u0435\u0448\u0435\u043d MAC \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u0438 \u0430\u0434\u0440\u0435\u0441\u0430 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v1, "Wrong MAC \u2014 check the band\'s address"

    .line 54
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_3
    const-string v0, "auth_fail"

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u043f\u0440\u0438\u0435 \u043a\u043b\u044e\u0447\u0430 \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u0438 \u043a\u043b\u044e\u0447\u0430 \u0438 MAC"

    const-string v1, "The band rejected the key \u2014 check key and MAC"

    .line 58
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_4
    const-string v0, "no_bt_permission"

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    goto :goto_1
.end method
