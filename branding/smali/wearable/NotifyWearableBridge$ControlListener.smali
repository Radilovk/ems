.class final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ControlListener;
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
    name = "ControlListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ControlListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Z)V
    .registers 4

    .prologue
    .line 69
    # setter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->controlConnected:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$202(Z)Z

    .line 70
    const-string v1, "control"

    if-eqz p1, :cond_15

    const-string v0, "connected"

    :goto_9
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz p1, :cond_11

    .line 72
    # invokes: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->startRemote()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$300()V

    .line 74
    :cond_11
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 75
    return-void

    .line 70
    :cond_15
    const-string v0, "disconnected"

    goto :goto_9
.end method

.method public onHeartRate(I)V
    .registers 2

    .prologue
    .line 65
    return-void
.end method

.method public onState(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 58
    const-string v0, "control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 60
    return-void
.end method
