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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 77
    :try_start_0
    # invokes: Lcom/isaigu/gymapp/wearable/HrGuard;->tick()Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->access$000()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    .line 81
    goto :goto_1d

    .line 78
    :catchall_5
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hr_guard"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_1d
    if-eqz v0, :cond_29

    .line 83
    # getter for: Lcom/isaigu/gymapp/wearable/HrGuard;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->access$100()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2d

    .line 85
    :cond_29
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->access$202(Z)Z

    .line 87
    :goto_2d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 88
    return-void
.end method
