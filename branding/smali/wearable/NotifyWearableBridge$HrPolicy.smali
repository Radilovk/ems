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

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 462
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$900()Z

    move-result v0

    if-nez v0, :cond_7

    .line 471
    :goto_6
    return-void

    .line 466
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_18

    .line 470
    :goto_e
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$1000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 467
    :catch_18
    move-exception v0

    .line 468
    const-string v1, "NotifyWearableBridge.hrPolicy"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method
