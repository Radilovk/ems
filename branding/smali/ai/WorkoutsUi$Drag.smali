.class final Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;
.super Ljava/lang/Object;
.source "WorkoutsUi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WorkoutsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Drag"
.end annotation


# instance fields
.field private downY:F

.field private final row:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->row:Landroid/view/View;

    .line 435
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const v6, 0x3f81eb85    # 1.015f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 439
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->itemsBox:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$000()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 440
    if-eqz v2, :cond_15

    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$100()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-nez v0, :cond_17

    .line 441
    :cond_15
    const/4 v0, 0x0

    .line 493
    :goto_16
    return v0

    .line 443
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 444
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 445
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_11e

    move v0, v1

    .line 493
    goto :goto_16

    .line 447
    :pswitch_2a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->downY:F

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_34
    if-eqz v0, :cond_3e

    .line 449
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 448
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_34

    .line 451
    :cond_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->row:Landroid/view/View;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 452
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 453
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    move v0, v1

    .line 454
    goto :goto_16

    .line 456
    :pswitch_66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v5, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->downY:F

    sub-float/2addr v0, v5

    .line 457
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->row:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 458
    cmpl-float v6, v0, v7

    if-lez v6, :cond_b8

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_b8

    .line 459
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 460
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    .line 461
    int-to-float v7, v4

    div-float/2addr v7, v9

    cmpl-float v7, v0, v7

    if-lez v7, :cond_b0

    .line 462
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 463
    const/16 v7, 0x8

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v6, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 464
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$100()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v2

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v2, v5, v3}, Lcom/isaigu/gymapp/ai/Workout;->move(II)V

    .line 465
    iget v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->downY:F

    int-to-float v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->downY:F

    .line 466
    int-to-float v2, v4

    sub-float/2addr v0, v2

    .line 467
    # setter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$202(Z)Z

    .line 481
    :cond_b0
    :goto_b0
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->row:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    move v0, v1

    .line 482
    goto/16 :goto_16

    .line 469
    :cond_b8
    cmpg-float v6, v0, v7

    if-gez v6, :cond_b0

    if-lez v5, :cond_b0

    .line 470
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 471
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    .line 472
    neg-float v7, v0

    int-to-float v8, v4

    div-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b0

    .line 473
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 474
    const/16 v7, 0x8

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v6, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 475
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$100()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v2

    add-int/lit8 v3, v5, -0x1

    invoke-virtual {v2, v5, v3}, Lcom/isaigu/gymapp/ai/Workout;->move(II)V

    .line 476
    iget v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->downY:F

    int-to-float v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->downY:F

    .line 477
    int-to-float v2, v4

    add-float/2addr v0, v2

    .line 478
    # setter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$202(Z)Z

    goto :goto_b0

    .line 486
    :pswitch_f1
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 487
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;->row:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setElevation(F)V

    .line 488
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$200()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 489
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshFooter()V

    :cond_11a
    move v0, v1

    .line 491
    goto/16 :goto_16

    .line 445
    nop

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_f1
        :pswitch_66
        :pswitch_f1
    .end packed-switch
.end method
