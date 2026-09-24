.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DetachListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 324
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 328
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$800()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1100()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$600()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->endTest(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$700(Landroid/app/Activity;)V

    .line 332
    :cond_21
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$402(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 333
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$002(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 334
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1002(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 335
    return-void
.end method
