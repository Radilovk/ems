.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$DurationAmountListener;
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
    name = "DurationAmountListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmountChange(Landroid/view/View;I)V
    .registers 3

    .line 1614
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreAmountCallback:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$100()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1615
    return-void

    .line 1617
    :cond_7
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readDurationTotalSec()I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$200()I

    .line 1618
    return-void
.end method
