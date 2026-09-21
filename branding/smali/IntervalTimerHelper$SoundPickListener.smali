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

    .line 1875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1878
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1900()I

    move-result v0

    .line 1879
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_26

    .line 1880
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2300()Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1881
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1702(Z)Z

    .line 1882
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2300()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1883
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1702(Z)Z

    .line 1885
    :cond_1c
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1802(I)I

    .line 1886
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1000()V

    .line 1887
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startRingtonePick(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2400(Landroid/view/View;)V

    .line 1888
    return-void

    .line 1890
    :cond_26
    const/16 v0, 0x8

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1802(I)I

    .line 1891
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2300()Landroid/widget/Spinner;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 1892
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1702(Z)Z

    .line 1893
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2300()Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1894
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1702(Z)Z

    .line 1896
    :cond_3e
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1000()V

    .line 1897
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startSignalPick(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2500(Landroid/view/View;)V

    .line 1898
    return-void
.end method
