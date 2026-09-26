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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Z)V
    .registers 2

    .line 83
    if-eqz p1, :cond_6

    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_9

    .line 86
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    .line 88
    :goto_9
    return-void
.end method

.method public onHeartRate(I)V
    .registers 2

    .line 78
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(I)V

    .line 79
    return-void
.end method

.method public onState(Ljava/lang/String;)V
    .registers 4

    .line 49
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, ""

    :goto_5
    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getTransportName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$302(J)J

    .line 52
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 53
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bad_auth_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 54
    nop

    .line 55
    const-string p1, "\u0413\u0440\u0435\u0448\u0435\u043d \u043a\u043b\u044e\u0447 \u2014 \u043d\u0443\u0436\u043d\u0438 \u0441\u0430 32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 \u043e\u0442 Mi Fitness"

    const-string v0, "Wrong key \u2014 32 characters from Mi Fitness"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_8f

    .line 57
    :cond_4e
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bad_mac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 58
    nop

    .line 59
    const-string p1, "\u0413\u0440\u0435\u0448\u0435\u043d MAC \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u0438 \u0430\u0434\u0440\u0435\u0441\u0430 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v0, "Wrong MAC \u2014 check the band\'s address"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_8f

    .line 61
    :cond_67
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auth_fail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 62
    nop

    .line 63
    const-string p1, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u043f\u0440\u0438\u0435 \u043a\u043b\u044e\u0447\u0430 \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u0438 \u043a\u043b\u044e\u0447\u0430 \u0438 MAC"

    const-string v0, "The band rejected the key \u2014 check key and MAC"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_8f

    .line 65
    :cond_80
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no_bt_permission"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 66
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    .line 68
    :cond_8f
    :goto_8f
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "authenticated"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "initialized"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 70
    :cond_a7
    :try_start_a7
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_af

    .line 72
    goto :goto_b0

    .line 71
    :catchall_af
    move-exception p1

    .line 74
    :cond_b0
    :goto_b0
    return-void
.end method
