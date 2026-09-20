.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundClearListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoundClearListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1765
    const/4 p1, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2002(I)I

    .line 1766
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2500()Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1767
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1902(Z)Z

    .line 1768
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2500()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1769
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1902(Z)Z

    .line 1771
    :cond_18
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1400()V

    .line 1772
    return-void
.end method
