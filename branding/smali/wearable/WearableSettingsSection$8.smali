.class Lcom/isaigu/gymapp/wearable/WearableSettingsSection$8;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 403
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$600()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_7

    .line 404
    return-void

    .line 407
    :cond_7
    :try_start_7
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 408
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->refreshStatus(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$700(Landroid/app/Activity;)V

    .line 409
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$800()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$800()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_2f

    .line 410
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->endTest(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$900(Landroid/app/Activity;)V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_30

    .line 414
    :cond_2f
    goto :goto_36

    .line 412
    :catchall_30
    move-exception v0

    .line 413
    const-string v1, "WearableSettingsSection.status"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    :goto_36
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 416
    return-void
.end method
