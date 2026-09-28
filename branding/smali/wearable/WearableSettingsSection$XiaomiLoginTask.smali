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

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->a:Landroid/app/Activity;

    .line 1059
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->root:Landroid/view/View;

    .line 1060
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->cookies:Ljava/lang/String;

    .line 1061
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1066
    .line 1068
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->cookies:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->fetchWithCookies(Ljava/lang/String;)Ljava/util/List;
    :try_end_6
    .catch Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError; {:try_start_1 .. :try_end_6} :catch_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_20

    move-result-object v0

    move-object v2, v1

    .line 1075
    :goto_8
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;->root:Landroid/view/View;

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1076
    return-void

    .line 1070
    :catch_19
    move-exception v0

    .line 1071
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    .line 1074
    goto :goto_8

    .line 1072
    :catch_20
    move-exception v0

    .line 1073
    const-string v0, "\u041d\u0435\u0449\u043e \u0441\u0435 \u043e\u0431\u044a\u0440\u043a\u0430 \u043f\u0440\u0438 \u0432\u0445\u043e\u0434\u0430."

    const-string v2, "Something went wrong during login."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    goto :goto_8
.end method
