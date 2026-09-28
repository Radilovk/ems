.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanTask;
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
    name = "LogScanTask"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanTask;->a:Landroid/app/Activity;

    .line 887
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanTask;->root:Landroid/view/View;

    .line 888
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 892
    const/4 v0, 0x0

    .line 894
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scanLocal()Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_16

    move-result-object v0

    .line 897
    :goto_5
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanTask;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanTask;->root:Landroid/view/View;

    invoke-direct {v2, v3, v4, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 898
    return-void

    .line 895
    :catch_16
    move-exception v1

    goto :goto_5
.end method
