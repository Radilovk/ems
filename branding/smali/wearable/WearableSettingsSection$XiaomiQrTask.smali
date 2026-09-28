.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrTask;
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
    name = "XiaomiQrTask"
.end annotation


# instance fields
.field private final host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;)V
    .registers 2

    .prologue
    .line 1414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1415
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrTask;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    .line 1416
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1420
    .line 1424
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->startQr()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;

    move-result-object v0

    .line 1425
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->fetchQrImage(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;)[B

    move-result-object v2

    .line 1426
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrShow;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrTask;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    invoke-direct {v4, v5, v2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrShow;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;[B)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1427
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->awaitQr(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;
    :try_end_1a
    .catch Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError; {:try_start_1 .. :try_end_1a} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_32

    move-result-object v2

    move-object v0, v1

    .line 1433
    :goto_1c
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrTask;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    invoke-direct {v3, v4, v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrDone;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1434
    return-void

    .line 1428
    :catch_2b
    move-exception v0

    .line 1429
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$CloudError;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 1432
    goto :goto_1c

    .line 1430
    :catch_32
    move-exception v0

    .line 1431
    const-string v0, "\u041d\u0435\u0449\u043e \u0441\u0435 \u043e\u0431\u044a\u0440\u043a\u0430 \u043f\u0440\u0438 QR \u0432\u0445\u043e\u0434\u0430."

    const-string v2, "Something went wrong during the QR login."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    goto :goto_1c
.end method
