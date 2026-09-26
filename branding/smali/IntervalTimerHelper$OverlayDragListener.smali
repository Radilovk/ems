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

    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 2018
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3500()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_ac

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3500()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_13

    goto/16 :goto_ac

    .line 2021
    :cond_13
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3500()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 2022
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_84

    if-eq v1, v2, :cond_7a

    const/4 p1, 0x2

    if-eq v1, p1, :cond_30

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2f

    .line 2053
    return v0

    .line 2051
    :cond_2f
    return v2

    .line 2031
    :cond_30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawX:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3800()F

    move-result v0

    sub-float/2addr p1, v0

    .line 2032
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawY:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3900()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2033
    const/4 v1, 0x0

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$100(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    .line 2034
    if-eqz v1, :cond_51

    .line 2035
    const/16 v3, 0xa

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4100(Landroid/app/Activity;I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_53

    .line 2036
    :cond_51
    const/high16 v1, 0x41c00000    # 24.0f

    .line 2037
    :goto_53
    mul-float p1, p1, p1

    mul-float v0, v0, v0

    add-float/2addr p1, v0

    mul-float v1, v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_61

    .line 2038
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayMoved:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4002(Z)Z

    .line 2040
    :cond_61
    nop

    .line 2041
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3600()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 2042
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3700()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 2040
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->moveOverlayWindow(II)V
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4200(II)V

    .line 2043
    return v2

    .line 2046
    :cond_7a
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayMoved:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4000()Z

    move-result p1

    if-nez p1, :cond_83

    .line 2047
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->openOverlaySettings()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4300()V

    .line 2049
    :cond_83
    return v2

    .line 2024
    :cond_84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3602(F)F

    .line 2025
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3702(F)F

    .line 2026
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawX:F
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3802(F)F

    .line 2027
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawY:F
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3902(F)F

    .line 2028
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayMoved:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4002(Z)Z

    .line 2029
    return v2

    .line 2019
    :cond_ac
    :goto_ac
    return v0
.end method
