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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 129
    # getter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$100()Landroid/os/Handler;

    move-result-object p1

    # getter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->tick:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$000()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$202(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 131
    # setter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$302(Lcom/isaigu/gymapp/wearable/HrChartView;)Lcom/isaigu/gymapp/wearable/HrChartView;

    .line 132
    return-void
.end method
