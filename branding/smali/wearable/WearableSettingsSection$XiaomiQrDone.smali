.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;
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
    name = "XiaomiQrDone"
.end annotation


# instance fields
.field private final error:Ljava/lang/String;

.field private final host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

.field private final res:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1575
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    .line 1576
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->res:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;

    .line 1577
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->error:Ljava/lang/String;

    .line 1578
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->closed:Z

    if-eqz v0, :cond_7

    .line 1593
    :goto_6
    return-void

    .line 1585
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->close()V

    .line 1586
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->res:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->error:Ljava/lang/String;

    if-nez v0, :cond_35

    .line 1587
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->res:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;->session:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setXiaomiSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 1588
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->root:Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->res:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;->bands:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->run()V

    goto :goto_6

    .line 1590
    :cond_35
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->error:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;->error:Ljava/lang/String;

    :goto_3f
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_6

    .line 1591
    :cond_43
    const-string v0, "\u0412\u0445\u043e\u0434\u044a\u0442 \u043d\u0435 \u043c\u0438\u043d\u0430."

    const-string v2, "Login failed."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method
