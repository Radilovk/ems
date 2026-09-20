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

    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1408
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1300()I

    move-result v0

    .line 1409
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_26

    .line 1410
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1700()Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1411
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1002(Z)Z

    .line 1412
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1700()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1413
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1002(Z)Z

    .line 1415
    :cond_1c
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1102(I)I

    .line 1416
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1200()V

    .line 1417
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startRingtonePick(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1800(Landroid/view/View;)V

    .line 1418
    return-void

    .line 1420
    :cond_26
    const/16 v0, 0x8

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1102(I)I

    .line 1421
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1700()Landroid/widget/Spinner;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 1422
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1002(Z)Z

    .line 1423
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1700()Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1424
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1002(Z)Z

    .line 1426
    :cond_3e
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1200()V

    .line 1427
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startSignalPick(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1900(Landroid/view/View;)V

    .line 1428
    return-void
.end method
