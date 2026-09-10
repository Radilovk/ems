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

    .prologue
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

    .prologue
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

    .prologue
    .line 253
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
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

    .prologue
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

    .prologue
    .line 242
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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

    .prologue
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

    .prologue
    .line 208
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

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

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getScrollY()I

    move-result v2

    iget v8, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 267
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->invalidate()V

    .line 268
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
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

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 223
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 228
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->setTotalHeight()V

    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
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

    .prologue
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

    .line 191
    :goto_0
    return v0

    .line 190
    :cond_0
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->fling(I)V

    .line 191
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 131
    instance-of v4, p1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    if-nez v4, :cond_0

    .line 133
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "insert your content must is XRecyclerView!"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, p1

    .line 135
    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    iput-object v4, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 138
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v4, v4, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v4, :cond_2

    .line 139
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v4, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 147
    .local v0, "firstVisiblePosition":I
    :goto_0
    if-gez v0, :cond_4

    .line 177
    :cond_1
    :goto_1
    return-void

    .line 140
    .end local v0    # "firstVisiblePosition":I
    :cond_2
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v4, :cond_3

    .line 141
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v4

    new-array v1, v4, [I

    .line 142
    .local v1, "into":[I
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 143
    aget v0, v1, v6

    .line 144
    .restart local v0    # "firstVisiblePosition":I
    goto :goto_0

    .line 145
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "into":[I
    :cond_3
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .restart local v0    # "firstVisiblePosition":I
    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getScrollY()I

    move-result v2

    .line 151
    .local v2, "scrollY":I
    if-lez p3, :cond_7

    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    if-ge v2, v4, :cond_7

    move v3, v5

    .line 152
    .local v3, "temp":Z
    :goto_2
    const-string v4, "StickyScrollLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTopViewHeight == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\ndy == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nscrollY == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nhiddenTop && showTop "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-nez v3, :cond_6

    .line 159
    if-gez p3, :cond_8

    if-ltz v2, :cond_8

    const/4 v4, -0x1

    .line 163
    invoke-static {p1, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->targetFirstVisiblePosition:I

    if-ne v0, v4, :cond_8

    :cond_5
    move v3, v5

    .line 167
    :goto_3
    const-string v4, "StickyScrollLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTopViewHeight == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopViewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\ndy == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nscrollY == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nfirstVisiblePosition "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_6
    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {p0, v6, p3}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->scrollBy(II)V

    .line 175
    aput p3, p4, v5

    goto/16 :goto_1

    .end local v3    # "temp":Z
    :cond_7
    move v3, v6

    .line 151
    goto/16 :goto_2

    .restart local v3    # "temp":Z
    :cond_8
    move v3, v6

    .line 163
    goto :goto_3
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 125
    const-string v0, "StickyScrollLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedScroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
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

    .prologue
    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 261
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getTopViewHeight()V

    .line 262
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 109
    const-string v0, "StickyScrollLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartNestedScroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 120
    const-string v0, "StickyScrollLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopNestedScroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
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

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "initInterface can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-interface {p1}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout$StickyScrollInitInterface;->setTopView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTopView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->getTopViewHeight()V

    .line 88
    :cond_1
    invoke-interface {p1}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout$StickyScrollInitInterface;->setTabView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mTabView:Landroid/view/View;

    .line 90
    invoke-interface {p1}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout$StickyScrollInitInterface;->setContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mContentView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_2
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->setTotalHeight()V

    .line 94
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setTargetFirstVisiblePosition(I)V
    .locals 0
    .param p1, "targetFirstVisiblePosition"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/StickyScrollLinearLayout;->targetFirstVisiblePosition:I

    .line 105
    return-void
.end method
