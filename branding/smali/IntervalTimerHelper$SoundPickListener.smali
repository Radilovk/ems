.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;
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
    name = "SoundPickListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1836
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1900()I

    move-result v0

    .line 1837
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_26

    .line 1838
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2300()Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1839
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1702(Z)Z

    .line 1840
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2300()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1841
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1702(Z)Z

    .line 1843
    :cond_1c
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1802(I)I

    .line 1844
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1000()V

    .line 1845
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startRingtonePick(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2400(Landroid/view/View;)V

    .line 1846
    return-void

    .line 1848
    :cond_26
    const/16 v0, 0x8

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1802(I)I

    .line 1849
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2300()Landroid/widget/Spinner;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 1850
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1702(Z)Z

    .line 1851
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2300()Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1852
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1702(Z)Z

    .line 1854
    :cond_3e
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1000()V

    .line 1855
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startSignalPick(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2500(Landroid/view/View;)V

    .line 1856
    return-void
.end method
