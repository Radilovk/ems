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
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 398
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$600()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 402
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$700(Landroid/app/Activity;)V

    .line 404
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$800()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$800()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 405
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$900(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_1
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    const-string v1, "WearableSettingsSection.status"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
