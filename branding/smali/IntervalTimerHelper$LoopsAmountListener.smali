.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAmountListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LoopsAmountListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmountChange(Landroid/view/View;I)V
    .registers 4

    .line 1623
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreAmountCallback:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$100()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1624
    return-void

    .line 1626
    :cond_7
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsView:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$400()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x1e

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readAmount(Lcom/isaigu/gymapp/widget/AmountView;II)I
    invoke-static {p1, p2, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$500(Lcom/isaigu/gymapp/widget/AmountView;II)I

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$302(I)I

    .line 1627
    return-void
.end method
