.class Lcom/isaigu/gymapp/wearable/WearableSettingsSection$7;
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

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 373
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$500()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_7

    .line 386
    :goto_6
    return-void

    .line 377
    :cond_7
    :try_start_7
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$500()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 378
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->refreshStatus(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$600(Landroid/app/Activity;)V

    .line 379
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$700()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$700()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2f

    .line 380
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->endTest(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$800(Landroid/app/Activity;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2f} :catch_39

    .line 385
    :cond_2f
    :goto_2f
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$900()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 382
    :catch_39
    move-exception v0

    .line 383
    const-string v1, "WearableSettingsSection.status"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f
.end method
