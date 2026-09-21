.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OverlayDragListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1567
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1100()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_ad

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1100()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_13

    goto/16 :goto_ad

    .line 1570
    :cond_13
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isTouchOnSeekBar(Landroid/view/MotionEvent;)Z
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1571
    return v0

    .line 1573
    :cond_1a
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1100()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 1574
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_85

    if-eq v1, v2, :cond_80

    const/4 p1, 0x2

    if-eq v1, p1, :cond_36

    const/4 p1, 0x3

    if-eq v1, p1, :cond_80

    .line 1601
    return v0

    .line 1583
    :cond_36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4100()F

    move-result v0

    sub-float/2addr p1, v0

    .line 1584
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4200()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1585
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1586
    if-eqz v1, :cond_57

    .line 1587
    const/16 v3, 0xa

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3200(Landroid/app/Activity;I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_59

    .line 1588
    :cond_57
    const/high16 v1, 0x41c00000    # 24.0f

    .line 1589
    :goto_59
    mul-float p1, p1, p1

    mul-float v0, v0, v0

    add-float/2addr p1, v0

    mul-float v1, v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_67

    .line 1590
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4302(Z)Z

    .line 1592
    :cond_67
    nop

    .line 1593
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3900()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 1594
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4000()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 1592
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveOverlayWindow(II)V
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4400(II)V

    .line 1595
    return v2

    .line 1599
    :cond_80
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4300()Z

    move-result p1

    return p1

    .line 1576
    :cond_85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3902(F)F

    .line 1577
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4002(F)F

    .line 1578
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4102(F)F

    .line 1579
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4202(F)F

    .line 1580
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4302(Z)Z

    .line 1581
    return v2

    .line 1568
    :cond_ad
    :goto_ad
    return v0
.end method
