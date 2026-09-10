.class public Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeMenuLayout.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;


# static fields
.field public static final DEFAULT_SCROLLER_DURATION:I = 0xc8


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContentViewId:I

.field private mDownX:I

.field private mDownY:I

.field private mDragging:Z

.field private mLastX:I

.field private mLastY:I

.field private mLeftViewId:I

.field private mOpenPercent:F

.field private mRightViewId:I

.field private mScaledMaximumFlingVelocity:I

.field private mScaledMinimumFlingVelocity:I

.field private mScaledTouchSlop:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mScrollerDuration:I

.field private mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

.field private mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

.field private mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private shouldResetSwipe:Z

.field private swipeEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLeftViewId:I

    .line 39
    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentViewId:I

    .line 40
    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mRightViewId:I

    .line 42
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mOpenPercent:F

    .line 43
    const/16 v2, 0xc8

    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScrollerDuration:I

    .line 56
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->swipeEnable:Z

    .line 74
    sget-object v2, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->recycler_swipe_SwipeMenuLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 75
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->recycler_swipe_SwipeMenuLayout_leftViewId:I

    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLeftViewId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLeftViewId:I

    .line 76
    sget v2, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->recycler_swipe_SwipeMenuLayout_contentViewId:I

    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentViewId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentViewId:I

    .line 77
    sget v2, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->recycler_swipe_SwipeMenuLayout_rightViewId:I

    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mRightViewId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mRightViewId:I

    .line 78
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 81
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScaledTouchSlop:I

    .line 82
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScaledMinimumFlingVelocity:I

    .line 83
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScaledMaximumFlingVelocity:I

    .line 85
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    .line 86
    return-void
.end method

.method private getSwipeDuration(Landroid/view/MotionEvent;I)I
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "velocity"    # I

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 296
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getScrollX()I

    move-result v6

    .line 297
    .local v6, "sx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    int-to-float v9, v6

    sub-float/2addr v8, v9

    float-to-int v3, v8

    .line 298
    .local v3, "dx":I
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    invoke-virtual {v8}, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->getMenuWidth()I

    move-result v7

    .line 299
    .local v7, "width":I
    div-int/lit8 v4, v7, 0x2

    .line 300
    .local v4, "halfWidth":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    int-to-float v9, v7

    div-float/2addr v8, v9

    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 301
    .local v1, "distanceRatio":F
    int-to-float v8, v4

    int-to-float v9, v4

    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v10

    mul-float/2addr v9, v10

    add-float v0, v8, v9

    .line 303
    .local v0, "distance":F
    if-lez p2, :cond_0

    .line 304
    const/high16 v8, 0x447a0000    # 1000.0f

    int-to-float v9, p2

    div-float v9, v0, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int/lit8 v2, v8, 0x4

    .line 309
    .local v2, "duration":I
    :goto_0
    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScrollerDuration:I

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 310
    return v2

    .line 306
    .end local v2    # "duration":I
    :cond_0
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v7

    div-float v5, v8, v9

    .line 307
    .local v5, "pageDelta":F
    add-float v8, v5, v11

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v2, v8

    .restart local v2    # "duration":I
    goto :goto_0
.end method

.method private judgeOpenClose(II)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->getMenuView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mOpenPercent:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 322
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScaledTouchSlop:I

    if-gt v0, v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScaledTouchSlop:I

    if-le v0, v1, :cond_3

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isMenuOpenNotEqual()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenMenu()V

    goto :goto_0

    .line 326
    :cond_3
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_0

    .line 327
    :cond_4
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenMenu()V

    goto :goto_0

    .line 330
    :cond_5
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_0
.end method

.method private smoothOpenMenu(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->autoOpenMenu(Landroid/widget/OverScroller;II)V

    .line 448
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->invalidate()V

    .line 450
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    instance-of v0, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->scrollTo(II)V

    .line 353
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->invalidate()V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->scrollTo(II)V

    .line 356
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->invalidate()V

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 314
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 315
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 316
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getOpenPercent()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mOpenPercent:F

    return v0
.end method

.method public hasLeftMenu()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;->canSwipe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRightMenu()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;->canSwipe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompleteOpen()Z
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isLeftCompleteOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isRightMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeftCompleteOpen()Z
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;->isCompleteClose(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeftMenuOpen()Z
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;->isMenuOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeftMenuOpenNotEqual()Z
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;->isMenuOpenNotEqual(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isLeftMenuOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isRightMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMenuOpenNotEqual()Z
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isLeftMenuOpenNotEqual()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isRightMenuOpenNotEqual()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightCompleteOpen()Z
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;->isCompleteClose(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightMenuOpen()Z
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;->isMenuOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightMenuOpenNotEqual()Z
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;->isMenuOpenNotEqual(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwipeEnable()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->swipeEnable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 91
    iget v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLeftViewId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    if-nez v2, :cond_0

    .line 92
    iget v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLeftViewId:I

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    invoke-direct {v2, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    .line 95
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mRightViewId:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-nez v2, :cond_1

    .line 96
    iget v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mRightViewId:I

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 97
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    invoke-direct {v2, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    .line 99
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentViewId:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 100
    iget v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentViewId:I

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "errorView":Landroid/widget/TextView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 104
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    const-string v2, "You may not have set the ContentView."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 108
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 159
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 160
    .local v5, "isIntercepted":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 161
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v6, v5

    .line 188
    :cond_0
    :goto_0
    return v6

    .line 163
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLastX:I

    iput v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDownX:I

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDownY:I

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDownX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v1, v7

    .line 169
    .local v1, "disX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDownY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v2, v7

    .line 170
    .local v2, "disY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScaledTouchSlop:I

    if-le v7, v8, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v7, v8, :cond_1

    .local v3, "i":Z
    :goto_1
    move v6, v3

    .line 171
    goto :goto_0

    .end local v3    # "i":Z
    :cond_1
    move v3, v6

    .line 170
    goto :goto_1

    .line 174
    .end local v1    # "disX":I
    .end local v2    # "disY":I
    :pswitch_2
    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    .line 175
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->isClickOnContentView(IF)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v3

    .line 176
    .local v4, "isClick":Z
    :goto_2
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isMenuOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    move v6, v3

    .line 178
    goto :goto_0

    .end local v4    # "isClick":Z
    :cond_2
    move v4, v6

    .line 175
    goto :goto_2

    .line 183
    :pswitch_3
    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_0

    .line 184
    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 517
    iget-object v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 518
    iget-object v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v1

    .line 519
    .local v1, "contentViewWidth":I
    iget-object v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v0

    .line 520
    .local v0, "contentViewHeight":I
    iget-object v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 521
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getPaddingLeft()I

    move-result v8

    .line 522
    .local v8, "start":I
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getPaddingTop()I

    move-result v10

    iget v11, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v9, v10, v11

    .line 523
    .local v9, "top":I
    iget-object v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    add-int v11, v8, v1

    add-int v12, v9, v0

    invoke-virtual {v10, v8, v9, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 526
    .end local v0    # "contentViewHeight":I
    .end local v1    # "contentViewWidth":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "start":I
    .end local v9    # "top":I
    :cond_0
    iget-object v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    if-eqz v10, :cond_1

    .line 527
    iget-object v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    invoke-virtual {v10}, Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;->getMenuView()Landroid/view/View;

    move-result-object v2

    .line 528
    .local v2, "leftMenu":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v5

    .line 529
    .local v5, "menuViewWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v4

    .line 530
    .local v4, "menuViewHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 531
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getPaddingTop()I

    move-result v10

    iget v11, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v9, v10, v11

    .line 532
    .restart local v9    # "top":I
    neg-int v10, v5

    const/4 v11, 0x0

    add-int v12, v9, v4

    invoke-virtual {v2, v10, v9, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 535
    .end local v2    # "leftMenu":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "menuViewHeight":I
    .end local v5    # "menuViewWidth":I
    .end local v9    # "top":I
    :cond_1
    iget-object v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-eqz v10, :cond_2

    .line 536
    iget-object v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    invoke-virtual {v10}, Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;->getMenuView()Landroid/view/View;

    move-result-object v7

    .line 537
    .local v7, "rightMenu":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v5

    .line 538
    .restart local v5    # "menuViewWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v4

    .line 539
    .restart local v4    # "menuViewHeight":I
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 540
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getPaddingTop()I

    move-result v10

    iget v11, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v9, v10, v11

    .line 542
    .restart local v9    # "top":I
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getMeasuredWidthAndState()I

    move-result v6

    .line 543
    .local v6, "parentViewWidth":I
    add-int v10, v6, v5

    add-int v11, v9, v4

    invoke-virtual {v7, v6, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 545
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "menuViewHeight":I
    .end local v5    # "menuViewWidth":I
    .end local v6    # "parentViewWidth":I
    .end local v7    # "rightMenu":Landroid/view/View;
    .end local v9    # "top":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 483
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 484
    const/4 v6, 0x0

    .line 486
    .local v6, "contentViewHeight":I
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 487
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 488
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;->getMenuView()Landroid/view/View;

    move-result-object v7

    .line 493
    .local v7, "leftMenu":Landroid/view/View;
    if-nez v6, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v9

    .line 495
    .local v9, "menuViewHeight":I
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 496
    .local v10, "menuWidthSpec":I
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 497
    .local v8, "menuHeightSpec":I
    invoke-virtual {v7, v10, v8}, Landroid/view/View;->measure(II)V

    .line 500
    .end local v7    # "leftMenu":Landroid/view/View;
    .end local v8    # "menuHeightSpec":I
    .end local v9    # "menuViewHeight":I
    .end local v10    # "menuWidthSpec":I
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;->getMenuView()Landroid/view/View;

    move-result-object v11

    .line 502
    .local v11, "rightMenu":Landroid/view/View;
    if-nez v6, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v9

    .line 504
    .restart local v9    # "menuViewHeight":I
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 505
    .restart local v10    # "menuWidthSpec":I
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 506
    .restart local v8    # "menuHeightSpec":I
    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    .line 509
    .end local v8    # "menuHeightSpec":I
    .end local v9    # "menuViewHeight":I
    .end local v10    # "menuWidthSpec":I
    .end local v11    # "rightMenu":Landroid/view/View;
    :cond_2
    if-lez v6, :cond_3

    .line 510
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->setMeasuredDimension(II)V

    .line 512
    :cond_3
    return-void

    .restart local v7    # "leftMenu":Landroid/view/View;
    :cond_4
    move v9, v6

    .line 493
    goto :goto_0

    .end local v7    # "leftMenu":Landroid/view/View;
    .restart local v11    # "rightMenu":Landroid/view/View;
    :cond_5
    move v9, v6

    .line 502
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 193
    iget-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 194
    :cond_0
    iget-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 198
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 285
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    return v8

    .line 200
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLastX:I

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLastY:I

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isSwipeEnable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 206
    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLastX:I

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v1, v9

    .line 207
    .local v1, "disX":I
    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLastY:I

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v2, v9

    .line 208
    .local v2, "disY":I
    iget-boolean v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDragging:Z

    if-nez v9, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScaledTouchSlop:I

    if-le v9, v10, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v9, v10, :cond_2

    .line 209
    iput-boolean v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDragging:Z

    .line 211
    :cond_2
    iget-boolean v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDragging:Z

    if-eqz v8, :cond_1

    .line 212
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->shouldResetSwipe:Z

    if-eqz v8, :cond_4

    .line 213
    :cond_3
    if-gez v1, :cond_6

    .line 214
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    if-eqz v8, :cond_5

    .line 215
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    iput-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    .line 225
    :cond_4
    :goto_2
    invoke-virtual {p0, v1, v11}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->scrollBy(II)V

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLastX:I

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mLastY:I

    .line 228
    iput-boolean v11, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->shouldResetSwipe:Z

    goto :goto_0

    .line 217
    :cond_5
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    iput-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    goto :goto_2

    .line 219
    :cond_6
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-eqz v8, :cond_7

    .line 220
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    iput-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    goto :goto_2

    .line 222
    :cond_7
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    iput-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    goto :goto_2

    .line 233
    .end local v1    # "disX":I
    .end local v2    # "disY":I
    :pswitch_2
    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDownX:I

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v4, v9

    .line 234
    .local v4, "dx":I
    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDownY:I

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v5, v9

    .line 235
    .local v5, "dy":I
    iput-boolean v11, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDragging:Z

    .line 236
    iget-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    iget v11, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScaledMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 237
    iget-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    float-to-int v7, v9

    .line 238
    .local v7, "velocityX":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 239
    .local v6, "velocity":I
    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScaledMinimumFlingVelocity:I

    if-le v6, v9, :cond_d

    .line 240
    iget-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    if-eqz v9, :cond_8

    .line 241
    invoke-direct {p0, p1, v6}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getSwipeDuration(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 242
    .local v3, "duration":I
    iget-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    instance-of v9, v9, Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-eqz v9, :cond_b

    .line 243
    if-gez v7, :cond_a

    .line 244
    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenMenu(I)V

    .line 255
    :goto_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 260
    .end local v3    # "duration":I
    :cond_8
    :goto_4
    iget-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 261
    iget-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 262
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 263
    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDownX:I

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScaledTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_9

    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDownY:I

    int-to-float v9, v9

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScaledTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_9

    .line 265
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isLeftMenuOpen()Z

    move-result v9

    if-nez v9, :cond_9

    .line 266
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isRightMenuOpen()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 267
    :cond_9
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 268
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    .line 246
    .restart local v3    # "duration":I
    :cond_a
    invoke-virtual {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu(I)V

    goto :goto_3

    .line 249
    :cond_b
    if-lez v7, :cond_c

    .line 250
    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenMenu(I)V

    goto :goto_3

    .line 252
    :cond_c
    invoke-virtual {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu(I)V

    goto :goto_3

    .line 258
    .end local v3    # "duration":I
    :cond_d
    invoke-direct {p0, v4, v5}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->judgeOpenClose(II)V

    goto :goto_4

    .line 274
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "velocity":I
    .end local v7    # "velocityX":I
    :pswitch_3
    iput-boolean v11, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDragging:Z

    .line 275
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_e

    .line 276
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->abortAnimation()V

    goto/16 :goto_0

    .line 278
    :cond_e
    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDownX:I

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v4, v8

    .line 279
    .restart local v4    # "dx":I
    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mDownY:I

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v5, v8

    .line 280
    .restart local v5    # "dy":I
    invoke-direct {p0, v4, v5}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->judgeOpenClose(II)V

    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 337
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    if-nez v1, :cond_1

    .line 338
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    invoke-virtual {v1, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->checkXY(II)Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;

    move-result-object v0

    .line 341
    .local v0, "checker":Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;
    iget-boolean v1, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;->shouldResetSwipe:Z

    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->shouldResetSwipe:Z

    .line 342
    iget v1, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;->x:I

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getScrollX()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 343
    iget v1, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;->x:I

    iget v2, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;->y:I

    invoke-super {p0, v1, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method public setOpenPercent(F)V
    .locals 0
    .param p1, "openPercent"    # F

    .prologue
    .line 136
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mOpenPercent:F

    .line 137
    return-void
.end method

.method public setScrollerDuration(I)V
    .locals 0
    .param p1, "scrollerDuration"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScrollerDuration:I

    .line 155
    return-void
.end method

.method public setSwipeEnable(Z)V
    .locals 0
    .param p1, "swipeEnable"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->swipeEnable:Z

    .line 119
    return-void
.end method

.method public smoothCloseLeftMenu()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    .line 461
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    .line 463
    :cond_0
    return-void
.end method

.method public smoothCloseMenu()V
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu(I)V

    .line 455
    return-void
.end method

.method public smoothCloseMenu(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->autoCloseMenu(Landroid/widget/OverScroller;II)V

    .line 477
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->invalidate()V

    .line 479
    :cond_0
    return-void
.end method

.method public smoothCloseRightMenu()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    .line 469
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    .line 471
    :cond_0
    return-void
.end method

.method public smoothOpenLeftMenu()V
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenLeftMenu(I)V

    .line 422
    return-void
.end method

.method public smoothOpenLeftMenu(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeLeftHorizontal;

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    .line 433
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenMenu(I)V

    .line 435
    :cond_0
    return-void
.end method

.method public smoothOpenMenu()V
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScrollerDuration:I

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenMenu(I)V

    .line 417
    return-void
.end method

.method public smoothOpenRightMenu()V
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenRightMenu(I)V

    .line 427
    return-void
.end method

.method public smoothOpenRightMenu(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeRightHorizontal;

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;

    .line 441
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenMenu(I)V

    .line 443
    :cond_0
    return-void
.end method
