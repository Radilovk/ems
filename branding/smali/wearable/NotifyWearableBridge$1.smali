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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 55
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    .line 56
    return-void

    .line 58
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1b

    .line 60
    const/4 v1, 0x0

    # invokes: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendHrEnableSequence(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100(Landroid/content/Context;Z)V

    .line 61
    const-string v1, "com.mc.xiaomi.tasker.batteryRead"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    const-string v1, "com.mc.miband.tasker.batteryRead"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    :cond_1b
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$200()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    return-void
.end method
