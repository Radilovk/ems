.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;
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
    name = "LogScanDone"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final found:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 4

    .prologue
    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;->a:Landroid/app/Activity;

    .line 908
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;->root:Landroid/view/View;

    .line 909
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;->found:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    .line 910
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 914
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;->found:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    if-eqz v0, :cond_e

    .line 915
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;->root:Landroid/view/View;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;->found:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->applyLog(Landroid/app/Activity;Landroid/view/View;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    .line 921
    :goto_d
    return-void

    .line 918
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;->a:Landroid/app/Activity;

    const-string v1, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e \u043d\u0435 \u043c\u043e\u0433\u0430 \u0434\u0430 \u0433\u043e \u043f\u0440\u043e\u0447\u0435\u0442\u0430 \u2014 \u0438\u0437\u0431\u0435\u0440\u0438 \u0444\u0430\u0439\u043b\u0430 \u043e\u0442 \u043b\u043e\u0433\u0430 (Download/wearablelog)."

    const-string v2, "Cannot read it automatically \u2014 pick the log file (Download/wearablelog)."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogPicked;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanDone;->root:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogPicked;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pick(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V

    goto :goto_d
.end method
