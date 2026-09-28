.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiReopen;
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
    name = "XiaomiReopen"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiReopen;->a:Landroid/app/Activity;

    .line 1603
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiReopen;->root:Landroid/view/View;

    .line 1604
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiReopen;->a:Landroid/app/Activity;

    const-string v1, "Xiaomi \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0435 \u0438\u0437\u0442\u0435\u043a\u043b\u0430 \u2014 \u0432\u043b\u0435\u0437 \u043e\u0442\u043d\u043e\u0432\u043e."

    const-string v2, "The Xiaomi session expired \u2014 log in again."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1609
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiReopen;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiReopen;->root:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->openXiaomiQr(Landroid/app/Activity;Landroid/view/View;)V

    .line 1610
    return-void
.end method
