.class final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$HrPolicy;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HrPolicy"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 411
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$600()Z

    move-result v0

    if-nez v0, :cond_7

    .line 412
    return-void

    .line 415
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    .line 418
    goto :goto_15

    .line 416
    :catchall_f
    move-exception v0

    .line 417
    const-string v1, "NotifyWearableBridge.hrPolicy"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    :goto_15
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$700()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 420
    return-void
.end method
