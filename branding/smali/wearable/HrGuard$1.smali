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
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->access$000()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 82
    :goto_0
    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->access$100()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    .line 88
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
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

    .line 80
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->access$202(Z)Z

    goto :goto_1
.end method
