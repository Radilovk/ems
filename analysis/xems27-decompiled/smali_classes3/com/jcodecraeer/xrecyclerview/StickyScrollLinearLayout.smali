.class public Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;
.super Landroid/widget/LinearLayout;
.source "StickyScrollLinearLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout$StickyScrollInitInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StickyScrollLayout"


# instance fields
.field private layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mContentView:Landroid/view/View;

.field private mScroller:Landroid/widget/OverScroller;

.field private mTabView:Landroid/view/View;

.field private mTopView:Landroid/view/View;

.field private mTopViewHeight:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private targetFirstVisiblePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->targetFirstVisiblePosition:I

    .line 67
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->targetFirstVisiblePosition:I

    .line 72
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private getTopViewHeight()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 254
    return-void

    .line 255
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    .line 256
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->setOrientation(I)V

    .line 77
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mScroller:Landroid/widget/OverScroller;

    .line 78
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 204
    :cond_0
    return-void
.end method

.method private setTotalHeight()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 243
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 244
    nop

    .line 245
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopView:Landroid/view/View;

    .line 246
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTabView:Landroid/view/View;

    .line 247
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mContentView:Landroid/view/View;

    .line 248
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 244
    invoke-virtual {p0, v1, v2}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->setMeasuredDimension(II)V

    .line 250
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->scrollTo(II)V

    .line 288
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->invalidate()V

    .line 290
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 212
    :cond_0
    return-void
.end method

.method public fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .line 266
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getScrollY()I

    move-result v2

    iget v8, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 267
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->invalidate()V

    .line 268
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .line 196
    const-string v0, "StickyScrollLayout"

    const-string v1, "getNestedScrollAxes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 216
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 223
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 227
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 228
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->setTotalHeight()V

    .line 239
    return-void

    .line 229
    :cond_1
    :goto_0
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 181
    const-string v0, "StickyScrollLayout"

    const-string v1, "onNestedFling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 187
    const-string v0, "StickyScrollLayout"

    const-string v1, "onNestedPreFling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 190
    :cond_0
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->fling(I)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 131
    instance-of v0, p1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    if-eqz v0, :cond_8

    .line 135
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 138
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 139
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .local v0, "firstVisiblePosition":I
    goto :goto_0

    .line 140
    .end local v0    # "firstVisiblePosition":I
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 141
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    .line 142
    .local v0, "into":[I
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 143
    aget v0, v0, v2

    .line 144
    .local v0, "firstVisiblePosition":I
    goto :goto_0

    .line 145
    .end local v0    # "firstVisiblePosition":I
    :cond_1
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 147
    .restart local v0    # "firstVisiblePosition":I
    :goto_0
    if-gez v0, :cond_2

    .line 148
    return-void

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getScrollY()I

    move-result v1

    .line 151
    .local v1, "scrollY":I
    const/4 v3, 0x1

    if-lez p3, :cond_3

    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    if-ge v1, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 152
    .local v4, "temp":Z
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTopViewHeight == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\ndy == "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\nscrollY == "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\nhiddenTop && showTop "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "StickyScrollLayout"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-nez v4, :cond_6

    .line 159
    if-gez p3, :cond_5

    if-ltz v1, :cond_5

    const/4 v5, -0x1

    .line 163
    invoke-static {p1, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->targetFirstVisiblePosition:I

    if-ne v0, v5, :cond_5

    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    move v4, v5

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\nfirstVisiblePosition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_6
    if-eqz v4, :cond_7

    .line 174
    invoke-virtual {p0, v2, p3}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->scrollBy(II)V

    .line 175
    aput p3, p4, v3

    .line 177
    :cond_7
    return-void

    .line 133
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "scrollY":I
    .end local v4    # "temp":Z
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "insert your content must is XRecyclerView!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNestedScroll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickyScrollLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 115
    const-string v0, "StickyScrollLayout"

    const-string v1, "onNestedScrollAccepted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 261
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getTopViewHeight()V

    .line 262
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartNestedScroll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickyScrollLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopNestedScroll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickyScrollLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 272
    if-gez p2, :cond_0

    .line 273
    const/4 p2, 0x0

    .line 275
    :cond_0
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    if-le p2, v0, :cond_1

    .line 278
    iget p2, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 281
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 282
    :cond_2
    return-void
.end method

.method public setInitInterface(Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout$StickyScrollInitInterface;)V
    .locals 2
    .param p1, "initInterface"    # Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout$StickyScrollInitInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    if-eqz p1, :cond_2

    .line 84
    invoke-interface {p1}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout$StickyScrollInitInterface;->setTopView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopView:Landroid/view/View;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getTopViewHeight()V

    .line 88
    :cond_0
    invoke-interface {p1}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout$StickyScrollInitInterface;->setTabView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTabView:Landroid/view/View;

    .line 90
    invoke-interface {p1}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout$StickyScrollInitInterface;->setContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mContentView:Landroid/view/View;

    .line 91
    if-nez v0, :cond_1

    .line 92
    return-void

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->setTotalHeight()V

    .line 94
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->requestLayout()V

    .line 95
    return-void

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "initInterface can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTargetFirstVisiblePosition(I)V
    .locals 0
    .param p1, "targetFirstVisiblePosition"    # I

    .line 104
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->targetFirstVisiblePosition:I

    .line 105
    return-void
.end method
