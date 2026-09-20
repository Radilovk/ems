.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$DurationSliderListener;
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
    name = "DurationSliderListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 1496
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreDurationSlider:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$100()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1497
    return-void

    .line 1499
    :cond_7
    mul-int/lit8 p2, p2, 0x5

    add-int/lit8 p2, p2, 0x5

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshDurationDisplay(I)V
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$200(I)V

    .line 1500
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1504
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1508
    return-void
.end method
