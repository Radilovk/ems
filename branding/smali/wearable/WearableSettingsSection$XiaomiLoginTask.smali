.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;
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
    name = "XiaomiLoginTask"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final cookies:Ljava/lang/String;

.field private final refresh:Z

.field private final root:Landroid/view/View;

.field private final sess:[Ljava/lang/String;

.field private final ua:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 1364
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;-><init>(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1365
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 1367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->a:Landroid/app/Activity;

    .line 1369
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->root:Landroid/view/View;

    .line 1370
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->sess:[Ljava/lang/String;

    .line 1371
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->cookies:Ljava/lang/String;

    .line 1372
    iput-object p5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->ua:Ljava/lang/String;

    .line 1373
    iput-boolean p6, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->refresh:Z

    .line 1374
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1379
    .line 1381
    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->refresh:Z

    if-eqz v0, :cond_37

    .line 1382
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->cookies:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->ua:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->fetchWithCookies(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_c
    .catch Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError; {:try_start_1 .. :try_end_c} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_5b

    move-result-object v0

    .line 1387
    :goto_d
    :try_start_d
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->cookies:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 1388
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->cookies:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setXiaomiSession(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_18
    .catch Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError; {:try_start_d .. :try_end_18} :catch_79
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_18} :catch_77

    :cond_18
    move-object v1, v6

    .line 1396
    :goto_19
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->refresh:Z

    if-eqz v2, :cond_66

    if-eqz v1, :cond_66

    .line 1397
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setXiaomiSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 1398
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiReopen;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->root:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiReopen;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1402
    :goto_36
    return-void

    .line 1384
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->sess:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->sess:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->sess:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->sess:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->cookies:Ljava/lang/String;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->ua:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->fetchWithSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_52
    .catch Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError; {:try_start_37 .. :try_end_52} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_52} :catch_5b

    move-result-object v0

    goto :goto_d

    .line 1391
    :catch_54
    move-exception v1

    move-object v0, v6

    .line 1392
    :goto_56
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 1393
    :catch_5b
    move-exception v0

    move-object v0, v6

    .line 1394
    :goto_5d
    const-string v1, "\u041d\u0435\u0449\u043e \u0441\u0435 \u043e\u0431\u044a\u0440\u043a\u0430 \u043f\u0440\u0438 \u0432\u0445\u043e\u0434\u0430."

    const-string v2, "Something went wrong during login."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 1401
    :cond_66
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->root:Landroid/view/View;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_36

    .line 1393
    :catch_77
    move-exception v1

    goto :goto_5d

    .line 1391
    :catch_79
    move-exception v1

    goto :goto_56
.end method
