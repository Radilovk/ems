.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiRefreshTask;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XiaomiRefreshTask"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;

.field private final saved:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiRefreshTask;->a:Landroid/app/Activity;

    .line 1304
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiRefreshTask;->root:Landroid/view/View;

    .line 1305
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiRefreshTask;->saved:Ljava/lang/String;

    .line 1306
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1310
    .line 1312
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiRefreshTask;->saved:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->refresh(Ljava/lang/String;)Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_27

    move-result-object v0

    .line 1316
    :goto_7
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1317
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiRefreshTask;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setXiaomiSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 1318
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiReopen;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiRefreshTask;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiRefreshTask;->root:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiReopen;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1322
    :goto_26
    return-void

    .line 1313
    :catch_27
    move-exception v0

    move-object v0, v1

    .line 1314
    goto :goto_7

    .line 1321
    :cond_2a
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiRefreshTask;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiRefreshTask;->root:Landroid/view/View;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_26
.end method
