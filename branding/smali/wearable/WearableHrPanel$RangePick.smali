.class final Lcom/isaigu/gymapp/wearable/WearableHrPanel$RangePick;
.super Ljava/lang/Object;
.source "WearableHrPanel.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableHrPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangePick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 4

    .line 300
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    # setter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$402(I)I

    .line 301
    # getter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$300()Lcom/isaigu/gymapp/wearable/HrChartView;

    move-result-object p1

    if-eqz p1, :cond_20

    # getter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$300()Lcom/isaigu/gymapp/wearable/HrChartView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/HrChartView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    .line 302
    :goto_21
    if-eqz p1, :cond_3e

    # getter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$500()Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 303
    # getter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$500()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 304
    # getter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$500()Landroid/widget/LinearLayout;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->range(Landroid/app/Activity;)Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$600(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 305
    # invokes: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->refresh()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$700()V

    .line 307
    :cond_3e
    return-void
.end method
