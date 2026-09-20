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

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 990
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2200()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a6

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2200()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_13

    goto/16 :goto_a6

    .line 993
    :cond_13
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2200()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 994
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7e

    if-eq v1, v2, :cond_79

    const/4 p1, 0x2

    if-eq v1, p1, :cond_2f

    const/4 p1, 0x3

    if-eq v1, p1, :cond_79

    .line 1021
    return v0

    .line 1003
    :cond_2f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2500()F

    move-result v0

    sub-float/2addr p1, v0

    .line 1004
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2600()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1005
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1006
    if-eqz v1, :cond_50

    .line 1007
    const/16 v3, 0xa

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1600(Landroid/app/Activity;I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_52

    .line 1008
    :cond_50
    const/high16 v1, 0x41c00000    # 24.0f

    .line 1009
    :goto_52
    mul-float p1, p1, p1

    mul-float v0, v0, v0

    add-float/2addr p1, v0

    mul-float v1, v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_60

    .line 1010
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2702(Z)Z

    .line 1012
    :cond_60
    nop

    .line 1013
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2300()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 1014
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2400()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 1012
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveOverlayWindow(II)V
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2800(II)V

    .line 1015
    return v2

    .line 1019
    :cond_79
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2700()Z

    move-result p1

    return p1

    .line 996
    :cond_7e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2302(F)F

    .line 997
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2402(F)F

    .line 998
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2502(F)F

    .line 999
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2602(F)F

    .line 1000
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2702(Z)Z

    .line 1001
    return v2

    .line 991
    :cond_a6
    :goto_a6
    return v0
.end method
