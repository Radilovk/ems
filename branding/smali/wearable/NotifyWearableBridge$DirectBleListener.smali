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

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$DirectBleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Z)V
    .registers 2

    .line 91
    if-eqz p1, :cond_6

    .line 92
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_9

    .line 94
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    .line 96
    :goto_9
    return-void
.end method

.method public onHeartRate(I)V
    .registers 3

    .line 86
    const-string v0, "BLE:REALTIME_HR"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(ILjava/lang/String;)V

    .line 87
    return-void
.end method

.method public onState(Ljava/lang/String;)V
    .registers 4

    .line 78
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, ""

    :goto_5
    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BLE:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventAction:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastEventTimeMs:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$602(J)J

    .line 81
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 82
    return-void
.end method
