.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsSliderListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LoopsSliderListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 1605
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreLoopsSlider:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$300()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1606
    return-void

    .line 1608
    :cond_7
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$402(I)I

    .line 1609
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshLoopsDisplay(I)V
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$500(I)V

    .line 1610
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1614
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1618
    return-void
.end method
