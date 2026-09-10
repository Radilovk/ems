.class abstract Landroid/support/design/widget/HeaderBehavior;
.super Landroid/support/design/widget/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field mScroller:Landroid/widget/OverScroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 43
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 43
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 50
    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .line 279
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 280
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 264
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method final fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 13
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "minOffset"    # I
    .param p4, "maxOffset"    # I
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .line 227
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "layout":Landroid/view/View;, "TV;"
    move-object v0, p0

    move-object v1, p2

    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 229
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 232
    :cond_0
    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    if-nez v2, :cond_1

    .line 233
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 236
    :cond_1
    iget-object v4, v0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    .line 237
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v6

    const/4 v7, 0x0

    .line 238
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 236
    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 242
    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    new-instance v2, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;

    move-object v3, p1

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;-><init>(Landroid/support/design/widget/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 244
    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 245
    const/4 v2, 0x1

    return v2

    .line 247
    :cond_2
    move-object v3, p1

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 248
    const/4 v2, 0x0

    return v2
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 271
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 275
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .line 216
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 258
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "layout":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 54
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 58
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 61
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v3, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    .line 62
    return v2

    .line 65
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const/4 v5, -0x1

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_2

    const/4 v1, 0x3

    if-eq v3, v1, :cond_5

    goto :goto_0

    .line 79
    :cond_2
    iget v1, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 80
    .local v1, "activePointerId":I
    if-ne v1, v5, :cond_3

    .line 82
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 85
    .local v3, "pointerIndex":I
    if-ne v3, v5, :cond_4

    .line 86
    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    .line 90
    .local v4, "y":I
    iget v5, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 91
    .local v5, "yDiff":I
    iget v6, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v5, v6, :cond_7

    .line 92
    iput-boolean v2, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 93
    iput v4, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    goto :goto_0

    .line 100
    .end local v1    # "activePointerId":I
    .end local v3    # "pointerIndex":I
    .end local v4    # "y":I
    .end local v5    # "yDiff":I
    :cond_5
    iput-boolean v4, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 101
    iput v5, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 102
    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_7

    .line 103
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 67
    :cond_6
    iput-boolean v4, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 68
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 69
    .local v1, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 70
    .local v2, "y":I
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, p2, v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 71
    iput v2, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 72
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 73
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    .line 110
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_7
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_8

    .line 111
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 114
    :cond_8
    iget-boolean v1, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    return v1
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 119
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 123
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    const/4 v3, -0x1

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    goto/16 :goto_1

    .line 139
    :cond_1
    iget v0, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 140
    .local v0, "activePointerIndex":I
    if-ne v0, v3, :cond_2

    .line 141
    return v2

    .line 144
    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 145
    .local v2, "y":I
    iget v3, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int/2addr v3, v2

    .line 147
    .local v3, "dy":I
    iget-boolean v4, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-nez v4, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v4, v5, :cond_4

    .line 148
    iput-boolean v1, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 149
    if-lez v3, :cond_3

    .line 150
    sub-int/2addr v3, v5

    goto :goto_0

    .line 152
    :cond_3
    add-int/2addr v3, v5

    .line 156
    :cond_4
    :goto_0
    iget-boolean v4, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v4, :cond_8

    .line 157
    iput v2, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 159
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/design/widget/HeaderBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_1

    .line 165
    .end local v0    # "activePointerIndex":I
    .end local v2    # "y":I
    .end local v3    # "dy":I
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 166
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 167
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 168
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    .line 169
    .local v0, "yvel":F
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v4

    neg-int v8, v4

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/support/design/widget/HeaderBehavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 173
    .end local v0    # "yvel":F
    :cond_6
    iput-boolean v2, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 174
    iput v3, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 175
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_8

    .line 176
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 125
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 126
    .local v0, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 128
    .local v3, "y":I
    invoke-virtual {p1, p2, v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 129
    iput v3, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 130
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 131
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    .line 183
    .end local v0    # "x":I
    .end local v3    # "y":I
    :cond_8
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 184
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 187
    :cond_9
    return v1

    .line 133
    .restart local v0    # "x":I
    .restart local v3    # "y":I
    :cond_a
    return v2
.end method

.method final scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "dy"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 221
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    nop

    .line 222
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v4, v0, p3

    .line 221
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    .line 191
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 2
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 197
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    .line 198
    .local v0, "curOffset":I
    const/4 v1, 0x0

    .line 200
    .local v1, "consumed":I
    if-eqz p4, :cond_0

    if-lt v0, p4, :cond_0

    if-gt v0, p5, :cond_0

    .line 203
    invoke-static {p3, p4, p5}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result p3

    .line 205
    if-eq v0, p3, :cond_0

    .line 206
    invoke-virtual {p0, p3}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    .line 208
    sub-int v1, v0, p3

    .line 212
    :cond_0
    return v1
.end method
