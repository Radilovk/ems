.class Lcom/isaigu/gymapp/wearable/WearableHrPanel$3;
.super Ljava/lang/Object;
.source "WearableHrPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/WearableHrPanel;->showImpl(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 132
    # getter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$100()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->tick:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$000()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    # setter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$202(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 134
    # setter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$302(Lcom/isaigu/gymapp/wearable/HrChartView;)Lcom/isaigu/gymapp/wearable/HrChartView;

    .line 135
    return-void
.end method
