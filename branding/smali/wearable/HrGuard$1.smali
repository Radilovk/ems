.class Lcom/isaigu/gymapp/wearable/HrGuard$1;
.super Ljava/lang/Object;
.source "HrGuard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/HrGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 74
    :try_start_0
    # invokes: Lcom/isaigu/gymapp/wearable/HrGuard;->tick()Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->access$000()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_13

    move-result v0

    .line 79
    :goto_4
    if-eqz v0, :cond_2e

    .line 80
    # getter for: Lcom/isaigu/gymapp/wearable/HrGuard;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->access$100()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    :goto_f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 85
    return-void

    .line 75
    :catch_13
    move-exception v0

    .line 76
    const-string v1, "hr_guard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    goto :goto_4

    .line 82
    :cond_2e
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->access$202(Z)Z

    goto :goto_f
.end method
