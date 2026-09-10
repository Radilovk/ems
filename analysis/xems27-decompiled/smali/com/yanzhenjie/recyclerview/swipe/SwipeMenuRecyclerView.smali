.class public Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SwipeMenuRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;,
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;,
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$MenuItemClick;,
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$ItemLongClick;,
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$ItemClick;,
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$DirectionMode;
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field public static final LEFT_DIRECTION:I = 0x1

.field public static final RIGHT_DIRECTION:I = -0x1


# instance fields
.field private allowSwipeDelete:Z

.field private isAutoLoadMore:Z

.field private isLoadError:Z

.field private isLoadMore:Z

.field private mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

.field private mDataEmpty:Z

.field private mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

.field private mDownX:I

.field private mDownY:I

.field private mFooterViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMore:Z

.field private mHeaderViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadMoreListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

.field private mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

.field protected mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

.field protected mOldTouchedPosition:I

.field protected mScaleTouchSlop:I

.field private mScrollState:I

.field private mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

.field private mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

.field private mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

.field private mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->allowSwipeDelete:Z

    .line 356
    new-instance v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;

    invoke-direct {v2, p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)V

    iput-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHeaderViewList:Ljava/util/List;

    .line 395
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mFooterViewList:Ljava/util/List;

    .line 645
    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScrollState:I

    .line 647
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadMore:Z

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isAutoLoadMore:Z

    .line 649
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadError:Z

    .line 651
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDataEmpty:Z

    .line 652
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHasMore:Z

    .line 94
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScaleTouchSlop:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 45
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    return-object v0
.end method

.method private checkAdapterExist(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    .line 202
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchLoadMore()V
    .locals 2

    .line 694
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadError:Z

    if-eqz v0, :cond_0

    return-void

    .line 696
    :cond_0
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isAutoLoadMore:Z

    if-nez v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    if-eqz v0, :cond_4

    .line 698
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;->onWaitToLoadMore(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;)V

    goto :goto_0

    .line 700
    :cond_1
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadMore:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDataEmpty:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHasMore:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 702
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadMore:Z

    .line 704
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    if-eqz v0, :cond_3

    .line 705
    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;->onLoading()V

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

    if-eqz v0, :cond_4

    .line 708
    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;->onLoadMore()V

    .line 710
    :cond_4
    :goto_0
    return-void

    .line 700
    :cond_5
    :goto_1
    return-void
.end method

.method private getSwipeMenuView(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "itemView"    # Landroid/view/View;

    .line 629
    instance-of v0, p1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v0, :cond_0

    return-object p1

    .line 630
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v0, "unvisited":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 633
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 634
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 635
    goto :goto_0

    .line 637
    :cond_1
    instance-of v2, v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v2, :cond_2

    return-object v1

    .line 638
    :cond_2
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 639
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 640
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 641
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_3
    goto :goto_0

    .line 642
    :cond_4
    return-object p1
.end method

.method private handleUnDown(IIZ)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "defaultValue"    # Z

    .line 597
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDownX:I

    sub-int/2addr v0, p1

    .line 598
    .local v0, "disX":I
    iget v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDownY:I

    sub-int/2addr v1, p2

    .line 601
    .local v1, "disY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScaleTouchSlop:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 602
    return v4

    .line 604
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScaleTouchSlop:I

    if-ge v2, v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScaleTouchSlop:I

    if-ge v2, v3, :cond_1

    .line 605
    return v4

    .line 606
    :cond_1
    return p3
.end method

.method private initializeItemTouchHelper()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-direct {v0}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    .line 100
    invoke-virtual {v0, p0}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 421
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->addFooterViewAndNotify(Landroid/view/View;)V

    .line 425
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 401
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->addHeaderViewAndNotify(Landroid/view/View;)V

    .line 405
    :cond_0
    return-void
.end method

.method public getFooterItemCount()I
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 447
    :cond_0
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getFooterItemCount()I

    move-result v0

    return v0
.end method

.method public getHeaderItemCount()I
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 439
    :cond_0
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 454
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 455
    :cond_0
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getOriginAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_0
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getOriginAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->initializeItemTouchHelper()V

    .line 173
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->isItemViewSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->initializeItemTouchHelper()V

    .line 151
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->isLongPressDragEnabled()Z

    move-result v0

    return v0
.end method

.method public loadMoreError(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadMore:Z

    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadError:Z

    .line 776
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    if-eqz v0, :cond_0

    .line 777
    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;->onLoadError(ILjava/lang/String;)V

    .line 779
    :cond_0
    return-void
.end method

.method public final loadMoreFinish(ZZ)V
    .locals 1
    .param p1, "dataEmpty"    # Z
    .param p2, "hasMore"    # Z

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadMore:Z

    .line 756
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadError:Z

    .line 758
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDataEmpty:Z

    .line 759
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHasMore:Z

    .line 761
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    if-eqz v0, :cond_0

    .line 762
    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;->onLoadFinish(ZZ)V

    .line 764
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 537
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 538
    .local v0, "isIntercepted":Z
    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->allowSwipeDelete:Z

    if-eqz v1, :cond_0

    .line 539
    return v0

    .line 541
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    return v2

    .line 542
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 543
    .local v1, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 544
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 545
    .local v4, "y":I
    if-eqz v1, :cond_c

    if-eq v1, v2, :cond_b

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    goto/16 :goto_3

    .line 574
    :cond_2
    invoke-direct {p0, v3, v4, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->handleUnDown(IIZ)Z

    move-result v0

    .line 575
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-nez v5, :cond_3

    goto/16 :goto_3

    .line 576
    :cond_3
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 577
    .local v5, "viewParent":Landroid/view/ViewParent;
    if-nez v5, :cond_4

    goto/16 :goto_3

    .line 579
    :cond_4
    iget v6, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDownX:I

    sub-int/2addr v6, v3

    .line 581
    .local v6, "disX":I
    const/4 v7, 0x0

    if-lez v6, :cond_6

    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v8}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->hasRightMenu()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v8}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isLeftCompleteOpen()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    .line 583
    .local v8, "showRightCloseLeft":Z
    :goto_0
    if-gez v6, :cond_8

    iget-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v9}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->hasLeftMenu()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v9}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isRightCompleteOpen()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    const/4 v9, 0x1

    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    .line 584
    .local v9, "showLeftCloseRight":Z
    :goto_1
    if-nez v8, :cond_a

    if-eqz v9, :cond_9

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :cond_a
    :goto_2
    invoke-interface {v5, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 588
    .end local v5    # "viewParent":Landroid/view/ViewParent;
    .end local v6    # "disX":I
    .end local v8    # "showRightCloseLeft":Z
    .end local v9    # "showLeftCloseRight":Z
    :cond_b
    invoke-direct {p0, v3, v4, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->handleUnDown(IIZ)Z

    move-result v0

    goto :goto_3

    .line 547
    :cond_c
    iput v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDownX:I

    .line 548
    iput v4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDownY:I

    .line 549
    const/4 v0, 0x0

    .line 551
    int-to-float v2, v3

    int-to-float v5, v4

    invoke-virtual {p0, v2, v5}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 552
    .local v2, "touchingPosition":I
    iget v5, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    if-eq v2, v5, :cond_d

    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 553
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v5}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    .line 554
    const/4 v0, 0x1

    .line 557
    :cond_d
    if-eqz v0, :cond_e

    .line 558
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 559
    const/4 v5, -0x1

    iput v5, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    goto :goto_3

    .line 561
    :cond_e
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 562
    .local v5, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v5, :cond_f

    .line 563
    iget-object v6, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getSwipeMenuView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 564
    .local v6, "itemView":Landroid/view/View;
    instance-of v7, v6, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v7, :cond_f

    .line 565
    move-object v7, v6

    check-cast v7, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    iput-object v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 566
    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    .line 570
    .end local v5    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "itemView":Landroid/view/View;
    :cond_f
    nop

    .line 593
    .end local v1    # "action":I
    .end local v2    # "touchingPosition":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :goto_3
    return v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 659
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScrollState:I

    .line 660
    return-void
.end method

.method public onScrolled(II)V
    .locals 8
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 664
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 665
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_2

    .line 666
    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/LinearLayoutManager;

    .line 668
    .local v3, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    .line 669
    .local v4, "itemCount":I
    if-gtz v4, :cond_0

    return-void

    .line 671
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v5

    .line 673
    .local v5, "lastVisiblePosition":I
    add-int/lit8 v6, v5, 0x1

    if-ne v4, v6, :cond_5

    iget v6, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScrollState:I

    if-eq v6, v2, :cond_1

    if-ne v6, v1, :cond_5

    .line 675
    :cond_1
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->dispatchLoadMore()V

    goto :goto_0

    .line 677
    .end local v3    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v4    # "itemCount":I
    .end local v5    # "lastVisiblePosition":I
    :cond_2
    if-eqz v0, :cond_5

    instance-of v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_5

    .line 678
    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 680
    .local v3, "staggeredGridLayoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    .line 681
    .restart local v4    # "itemCount":I
    if-gtz v4, :cond_3

    return-void

    .line 683
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v5

    .line 684
    .local v5, "lastVisiblePositionArray":[I
    array-length v6, v5

    sub-int/2addr v6, v2

    aget v6, v5, v6

    .line 686
    .local v6, "lastVisiblePosition":I
    add-int/lit8 v7, v6, 0x1

    if-ne v4, v7, :cond_6

    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScrollState:I

    if-eq v7, v2, :cond_4

    if-ne v7, v1, :cond_6

    .line 688
    :cond_4
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->dispatchLoadMore()V

    goto :goto_1

    .line 677
    .end local v3    # "staggeredGridLayoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    .end local v4    # "itemCount":I
    .end local v5    # "lastVisiblePositionArray":[I
    .end local v6    # "lastVisiblePosition":I
    :cond_5
    :goto_0
    nop

    .line 691
    :cond_6
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 612
    .local v0, "action":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    .line 625
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 428
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->removeFooterViewAndNotify(Landroid/view/View;)V

    .line 432
    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 411
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->removeHeaderViewAndNotify(Landroid/view/View;)V

    .line 415
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 327
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getOriginAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 331
    :cond_0
    if-nez p1, :cond_1

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    goto :goto_2

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 336
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    .line 337
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->setSwipeItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->setSwipeItemLongClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V

    .line 340
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 344
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v2, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->addHeaderView(Landroid/view/View;)V

    .line 345
    .end local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 349
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v2, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->addFooterView(Landroid/view/View;)V

    .line 350
    .end local v1    # "view":Landroid/view/View;
    goto :goto_1

    .line 353
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 354
    return-void
.end method

.method public setAutoLoadMore(Z)V
    .locals 0
    .param p1, "autoLoadMore"    # Z

    .line 745
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isAutoLoadMore:Z

    .line 746
    return-void
.end method

.method public setItemViewSwipeEnabled(Z)V
    .locals 1
    .param p1, "canSwipe"    # Z

    .line 161
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->initializeItemTouchHelper()V

    .line 162
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->allowSwipeDelete:Z

    .line 163
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->setItemViewSwipeEnabled(Z)V

    .line 164
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 298
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 299
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 300
    .local v0, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    .line 302
    .local v1, "spanSizeLookupHolder":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    new-instance v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$1;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 314
    .end local v0    # "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    .end local v1    # "spanSizeLookupHolder":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 315
    return-void
.end method

.method public setLoadMoreListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;)V
    .locals 0
    .param p1, "loadMoreListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

    .line 732
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

    .line 733
    return-void
.end method

.method public setLoadMoreView(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;)V
    .locals 0
    .param p1, "loadMoreView"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    .line 725
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    .line 726
    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .locals 1
    .param p1, "canDrag"    # Z

    .line 140
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->initializeItemTouchHelper()V

    .line 141
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->setLongPressDragEnabled(Z)V

    .line 142
    return-void
.end method

.method public setOnItemMoveListener(Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;)V
    .locals 1
    .param p1, "onItemMoveListener"    # Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;

    .line 110
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->initializeItemTouchHelper()V

    .line 111
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->setOnItemMoveListener(Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;)V

    .line 112
    return-void
.end method

.method public setOnItemMovementListener(Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;)V
    .locals 1
    .param p1, "onItemMovementListener"    # Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;

    .line 120
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->initializeItemTouchHelper()V

    .line 121
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->setOnItemMovementListener(Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;)V

    .line 122
    return-void
.end method

.method public setOnItemStateChangedListener(Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;)V
    .locals 1
    .param p1, "onItemStateChangedListener"    # Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;

    .line 130
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->initializeItemTouchHelper()V

    .line 131
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->setOnItemStateChangedListener(Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;)V

    .line 132
    return-void
.end method

.method public setSwipeItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;)V
    .locals 1
    .param p1, "itemClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    .line 208
    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    const-string v0, "Cannot set item click listener, setAdapter has already been called."

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$ItemClick;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$ItemClick;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    .line 211
    return-void
.end method

.method public setSwipeItemLongClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;)V
    .locals 1
    .param p1, "itemLongClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    .line 235
    if-nez p1, :cond_0

    return-void

    .line 236
    :cond_0
    const-string v0, "Cannot set item long click listener, setAdapter has already been called."

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 237
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$ItemLongClick;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$ItemLongClick;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    .line 238
    return-void
.end method

.method public setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V
    .locals 1
    .param p1, "menuCreator"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 261
    if-nez p1, :cond_0

    return-void

    .line 262
    :cond_0
    const-string v0, "Cannot set menu creator, setAdapter has already been called."

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 263
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 264
    return-void
.end method

.method public setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V
    .locals 1
    .param p1, "menuItemClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 270
    if-nez p1, :cond_0

    return-void

    .line 271
    :cond_0
    const-string v0, "Cannot set menu item click listener, setAdapter has already been called."

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$MenuItemClick;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$MenuItemClick;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 273
    return-void
.end method

.method public smoothCloseMenu()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    .line 533
    :cond_0
    return-void
.end method

.method public smoothOpenLeftMenu(I)V
    .locals 2
    .param p1, "position"    # I

    .line 464
    const/4 v0, 0x1

    const/16 v1, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->smoothOpenMenu(III)V

    .line 465
    return-void
.end method

.method public smoothOpenLeftMenu(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .line 474
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->smoothOpenMenu(III)V

    .line 475
    return-void
.end method

.method public smoothOpenMenu(III)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "direction"    # I
    .param p3, "duration"    # I

    .line 504
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 510
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 511
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_2

    .line 512
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getSwipeMenuView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 513
    .local v1, "itemView":Landroid/view/View;
    instance-of v2, v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v2, :cond_2

    .line 514
    move-object v2, v1

    check-cast v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    iput-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 515
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 516
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    .line 517
    invoke-virtual {v2, p3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenRightMenu(I)V

    goto :goto_0

    .line 518
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 519
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    .line 520
    invoke-virtual {v2, p3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenLeftMenu(I)V

    .line 524
    .end local v1    # "itemView":Landroid/view/View;
    :cond_2
    :goto_0
    return-void
.end method

.method public smoothOpenRightMenu(I)V
    .locals 2
    .param p1, "position"    # I

    .line 483
    const/4 v0, -0x1

    const/16 v1, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->smoothOpenMenu(III)V

    .line 484
    return-void
.end method

.method public smoothOpenRightMenu(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .line 493
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->smoothOpenMenu(III)V

    .line 494
    return-void
.end method

.method public startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 182
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->initializeItemTouchHelper()V

    .line 183
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 184
    return-void
.end method

.method public startSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 192
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->initializeItemTouchHelper()V

    .line 193
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->startSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 194
    return-void
.end method

.method public useDefaultLoadMore()V
    .locals 2

    .line 716
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;-><init>(Landroid/content/Context;)V

    .line 717
    .local v0, "defaultLoadMoreView":Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->addFooterView(Landroid/view/View;)V

    .line 718
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLoadMoreView(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;)V

    .line 719
    return-void
.end method
