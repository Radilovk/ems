.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RolePick;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RolePick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RolePick;->a:Landroid/app/Activity;

    .line 739
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RolePick;->root:Landroid/view/View;

    .line 740
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 4

    .prologue
    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RolePick;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandRole(Landroid/content/Context;I)V

    .line 746
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RolePick;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onRoleChanged(Landroid/content/Context;)V

    .line 747
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RolePick;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RolePick;->root:Landroid/view/View;

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$500(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 751
    :goto_11
    return-void

    .line 748
    :catch_12
    move-exception v0

    .line 749
    const-string v1, "WearableSettingsSection.role"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method
