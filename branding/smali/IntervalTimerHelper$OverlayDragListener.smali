.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OverlayDragListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 526
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1100()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 527
    return v0

    .line 529
    :cond_8
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1100()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 530
    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_15

    .line 531
    return v0

    .line 533
    :cond_15
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 534
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_42

    const/4 v3, 0x2

    if-eq v1, v3, :cond_22

    .line 545
    return v0

    .line 540
    :cond_22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1200()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 541
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1300()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 542
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1100()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    return v2

    .line 536
    :cond_42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1202(F)F

    .line 537
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1302(F)F

    .line 538
    return v2
.end method
