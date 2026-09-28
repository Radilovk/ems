.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogImportClick;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LogImportClick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogImportClick;->a:Landroid/app/Activity;

    .line 871
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogImportClick;->root:Landroid/view/View;

    .line 872
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 876
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogImportClick;->a:Landroid/app/Activity;

    const-string v1, "\u0422\u044a\u0440\u0441\u044f \u043b\u043e\u0433\u0430 \u043d\u0430 Mi Fitness\u2026"

    const-string v2, "Looking for the Mi Fitness log\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 877
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanTask;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogImportClick;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogImportClick;->root:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogScanTask;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    const-string v2, "xems-mifit-scan"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 878
    return-void
.end method
