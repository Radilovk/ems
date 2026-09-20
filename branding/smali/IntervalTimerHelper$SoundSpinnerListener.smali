.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSpinnerListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoundSpinnerListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1710
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1900()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1711
    return-void

    .line 1713
    :cond_7
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {p3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2002(I)I

    .line 1714
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1400()V

    .line 1715
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1719
    return-void
.end method
