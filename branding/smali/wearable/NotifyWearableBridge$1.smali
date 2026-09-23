.class Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 59
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    .line 60
    return-void

    .line 62
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_25

    .line 64
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isGadgetbridgeInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 65
    # invokes: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStart(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100(Landroid/content/Context;)V

    goto :goto_25

    .line 67
    :cond_17
    const/4 v1, 0x0

    # invokes: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendHrEnableSequence(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$200(Landroid/content/Context;Z)V

    .line 68
    const-string v1, "com.mc.xiaomi.tasker.batteryRead"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    const-string v1, "com.mc.miband.tasker.batteryRead"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    :cond_25
    :goto_25
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$300()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method
