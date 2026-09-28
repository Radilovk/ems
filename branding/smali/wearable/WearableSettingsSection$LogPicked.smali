.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogPicked;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LogPicked"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogPicked;->a:Landroid/app/Activity;

    .line 930
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogPicked;->root:Landroid/view/View;

    .line 931
    return-void
.end method


# virtual methods
.method public onFound(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 935
    if-nez p1, :cond_10

    .line 936
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogPicked;->a:Landroid/app/Activity;

    const-string v1, "\u0412 \u0438\u0437\u0431\u0440\u0430\u043d\u0438\u0442\u0435 \u0444\u0430\u0439\u043b\u043e\u0432\u0435 \u043d\u044f\u043c\u0430 \u043a\u043b\u044e\u0447. \u041f\u0440\u043e\u0432\u0435\u0440\u0438, \u0447\u0435 \u0435 \u043b\u043e\u0433\u044a\u0442 \u043e\u0442 Mi Fitness (\u0441\u043b\u0435\u0434 \u0441\u0434\u0432\u043e\u044f\u0432\u0430\u043d\u0435)."

    const-string v2, "No key in the chosen files. Make sure it is the Mi Fitness log (after pairing)."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 941
    :goto_f
    return-void

    .line 940
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogPicked;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogPicked;->root:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->chooseLog(Landroid/app/Activity;Landroid/view/View;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    goto :goto_f
.end method
