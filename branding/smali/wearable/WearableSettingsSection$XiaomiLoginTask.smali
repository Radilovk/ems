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

.field private final email:Ljava/lang/String;

.field private final pass:Ljava/lang/String;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->a:Landroid/app/Activity;

    .line 951
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->root:Landroid/view/View;

    .line 952
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->email:Ljava/lang/String;

    .line 953
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->pass:Ljava/lang/String;

    .line 954
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 959
    .line 961
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->email:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->pass:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->fetchBands(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_8
    .catch Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError; {:try_start_1 .. :try_end_8} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_22

    move-result-object v0

    move-object v2, v1

    .line 968
    :goto_a
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->root:Landroid/view/View;

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 969
    return-void

    .line 963
    :catch_1b
    move-exception v0

    .line 964
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    .line 967
    goto :goto_a

    .line 965
    :catch_22
    move-exception v0

    .line 966
    const-string v0, "\u041d\u0435\u0449\u043e \u0441\u0435 \u043e\u0431\u044a\u0440\u043a\u0430 \u043f\u0440\u0438 \u0432\u0445\u043e\u0434\u0430."

    const-string v2, "Something went wrong during login."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    goto :goto_a
.end method
