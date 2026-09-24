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

    .prologue
    .line 1998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2001
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1600()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_12

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1600()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_12
    move v0, v1

    .line 2032
    :goto_13
    return v0

    .line 2004
    :cond_14
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1600()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2005
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_a2

    move v0, v1

    .line 2032
    goto :goto_13

    .line 2007
    :pswitch_29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4402(F)F

    .line 2008
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4502(F)F

    .line 2009
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4602(F)F

    .line 2010
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4702(F)F

    .line 2011
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4802(Z)Z

    goto :goto_13

    .line 2014
    :pswitch_52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4600()F

    move-result v2

    sub-float v2, v1, v2

    .line 2015
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4700()F

    move-result v3

    sub-float v3, v1, v3

    .line 2016
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 2017
    if-eqz v1, :cond_98

    .line 2018
    const/16 v4, 0xa

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3700(Landroid/app/Activity;I)I

    move-result v1

    int-to-float v1, v1

    .line 2020
    :goto_74
    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_7f

    .line 2021
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4802(Z)Z

    .line 2024
    :cond_7f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4400()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 2025
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4500()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 2023
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveOverlayWindow(II)V
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4900(II)V

    goto/16 :goto_13

    .line 2019
    :cond_98
    const/high16 v1, 0x41c00000    # 24.0f

    goto :goto_74

    .line 2030
    :pswitch_9b
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4800()Z

    move-result v0

    goto/16 :goto_13

    .line 2005
    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_29
        :pswitch_9b
        :pswitch_52
        :pswitch_9b
    .end packed-switch
.end method
