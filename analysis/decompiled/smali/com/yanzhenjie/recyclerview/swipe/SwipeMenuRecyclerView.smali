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
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMore:Z

.field private mHeaderViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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

    .prologue
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

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    .line 73
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->allowSwipeDelete:Z

    .line 356
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHeaderViewList:Ljava/util/List;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mFooterViewList:Ljava/util/List;

    .line 645
    iput v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScrollState:I

    .line 647
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadMore:Z

    .line 648
    iput-boolean v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isAutoLoadMore:Z

    .line 649
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadError:Z

    .line 651
    iput-boolean v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDataEmpty:Z

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

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    return-object v0
.end method

.method private checkAdapterExist(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    return-void
.end method

.method private dispatchLoadMore()V
    .locals 2

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadError:Z

    if-eqz v0, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isAutoLoadMore:Z

    if-nez v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;->onWaitToLoadMore(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;)V

    goto :goto_0

    .line 700
    :cond_2
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadMore:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDataEmpty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHasMore:Z

    if-eqz v0, :cond_0

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isLoadMore:Z

    .line 704
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    if-eqz v0, :cond_3

    .line 705
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;->onLoading()V

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;->onLoadMore()V

    goto :goto_0
.end method

.method private getSwipeMenuView(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 629
    instance-of v5, p1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v5, :cond_1

    .line 642
    .end local p1    # "itemView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p1

    .line 630
    .restart local p1    # "itemView":Landroid/view/View;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v4, "unvisited":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 633
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 634
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 637
    instance-of v5, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v5, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 638
    check-cast v2, Landroid/view/ViewGroup;

    .line 639
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 640
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private handleUnDown(IIZ)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x0

    .line 597
    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDownX:I

    sub-int v0, v3, p1

    .line 598
    .local v0, "disX":I
    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDownY:I

    sub-int v1, v3, p2

    .line 601
    .local v1, "disY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScaleTouchSlop:I

    if-le v3, v4, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_1

    move p3, v2

    .line 606
    .end local p3    # "defaultValue":Z
    :cond_0
    :goto_0
    return p3

    .line 604
    .restart local p3    # "defaultValue":Z
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScaleTouchSlop:I

    if-ge v3, v4, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScaleTouchSlop:I

    if-ge v3, v4, :cond_0

    move p3, v2

    .line 605
    goto :goto_0
.end method

.method private initializeItemTouchHelper()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-direct {v0}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    .line 100
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDefaultItemTouchHelper:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p0}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->addFooterViewAndNotify(Landroid/view/View;)V

    .line 425
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->addHeaderViewAndNotify(Landroid/view/View;)V

    .line 405
    :cond_0
    return-void
.end method

.method public getFooterItemCount()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 447
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getFooterItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getHeaderItemCount()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 455
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getOriginAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getOriginAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
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

    .prologue
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

    .prologue
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
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;->onLoadError(ILjava/lang/String;)V

    .line 779
    :cond_0
    return-void
.end method

.method public final loadMoreFinish(ZZ)V
    .locals 1
    .param p1, "dataEmpty"    # Z
    .param p2, "hasMore"    # Z

    .prologue
    const/4 v0, 0x0

    .line 755
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
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;->onLoadFinish(ZZ)V

    .line 764
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 537
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 538
    .local v2, "isIntercepted":Z
    iget-boolean v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->allowSwipeDelete:Z

    if-eqz v12, :cond_0

    move v3, v2

    .end local v2    # "isIntercepted":Z
    .local v3, "isIntercepted":Z
    move v12, v2

    .line 593
    :goto_0
    return v12

    .line 541
    .end local v3    # "isIntercepted":Z
    .restart local v2    # "isIntercepted":Z
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_1

    const/4 v12, 0x1

    move v3, v2

    .end local v2    # "isIntercepted":Z
    .restart local v3    # "isIntercepted":Z
    goto :goto_0

    .line 542
    .end local v3    # "isIntercepted":Z
    .restart local v2    # "isIntercepted":Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 543
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 544
    .local v10, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 545
    .local v11, "y":I
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v3, v2

    .end local v2    # "isIntercepted":Z
    .restart local v3    # "isIntercepted":Z
    move v12, v2

    .line 593
    goto :goto_0

    .line 547
    .end local v3    # "isIntercepted":Z
    .restart local v2    # "isIntercepted":Z
    :pswitch_0
    iput v10, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDownX:I

    .line 548
    iput v11, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDownY:I

    .line 549
    const/4 v2, 0x0

    .line 551
    int-to-float v12, v10

    int-to-float v13, v11

    invoke-virtual {p0, v12, v13}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    .line 552
    .local v7, "touchingPosition":I
    iget v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    if-eq v7, v12, :cond_3

    iget-object v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v12}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isMenuOpen()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 553
    iget-object v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v12}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    .line 554
    const/4 v2, 0x1

    .line 557
    :cond_3
    if-eqz v2, :cond_4

    .line 558
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 559
    const/4 v12, -0x1

    iput v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    goto :goto_1

    .line 561
    :cond_4
    invoke-virtual {p0, v7}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    .line 562
    .local v8, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v8, :cond_2

    .line 563
    iget-object v12, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v12}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getSwipeMenuView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 564
    .local v4, "itemView":Landroid/view/View;
    instance-of v12, v4, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v12, :cond_2

    .line 565
    check-cast v4, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .end local v4    # "itemView":Landroid/view/View;
    iput-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 566
    iput v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    goto :goto_1

    .line 574
    .end local v7    # "touchingPosition":I
    .end local v8    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_1
    invoke-direct {p0, v10, v11, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->handleUnDown(IIZ)Z

    move-result v2

    .line 575
    iget-object v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v12, :cond_2

    .line 576
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 577
    .local v9, "viewParent":Landroid/view/ViewParent;
    if-eqz v9, :cond_2

    .line 579
    iget v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mDownX:I

    sub-int v1, v12, v10

    .line 581
    .local v1, "disX":I
    if-lez v1, :cond_8

    iget-object v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v12}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->hasRightMenu()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v12}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isLeftCompleteOpen()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_5
    const/4 v6, 0x1

    .line 583
    .local v6, "showRightCloseLeft":Z
    :goto_2
    if-gez v1, :cond_9

    iget-object v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v12}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->hasLeftMenu()Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v12}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isRightCompleteOpen()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_6
    const/4 v5, 0x1

    .line 584
    .local v5, "showLeftCloseRight":Z
    :goto_3
    if-nez v6, :cond_7

    if-eqz v5, :cond_a

    :cond_7
    const/4 v12, 0x1

    :goto_4
    invoke-interface {v9, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 588
    .end local v1    # "disX":I
    .end local v5    # "showLeftCloseRight":Z
    .end local v6    # "showRightCloseLeft":Z
    .end local v9    # "viewParent":Landroid/view/ViewParent;
    :pswitch_2
    invoke-direct {p0, v10, v11, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->handleUnDown(IIZ)Z

    move-result v2

    goto/16 :goto_1

    .line 581
    .restart local v1    # "disX":I
    .restart local v9    # "viewParent":Landroid/view/ViewParent;
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 583
    .restart local v6    # "showRightCloseLeft":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    .line 584
    .restart local v5    # "showLeftCloseRight":Z
    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 659
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScrollState:I

    .line 660
    return-void
.end method

.method public onScrolled(II)V
    .locals 9
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 664
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    .line 665
    .local v3, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v3, :cond_3

    instance-of v6, v3, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v6, :cond_3

    move-object v4, v3

    .line 666
    check-cast v4, Landroid/support/v7/widget/LinearLayoutManager;

    .line 668
    .local v4, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 669
    .local v0, "itemCount":I
    if-gtz v0, :cond_1

    .line 691
    .end local v0    # "itemCount":I
    .end local v4    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_0
    :goto_0
    return-void

    .line 671
    .restart local v0    # "itemCount":I
    .restart local v4    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_1
    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 673
    .local v1, "lastVisiblePosition":I
    add-int/lit8 v6, v1, 0x1

    if-ne v0, v6, :cond_0

    iget v6, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScrollState:I

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScrollState:I

    if-ne v6, v8, :cond_0

    .line 675
    :cond_2
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->dispatchLoadMore()V

    goto :goto_0

    .line 677
    .end local v0    # "itemCount":I
    .end local v1    # "lastVisiblePosition":I
    .end local v4    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_3
    if-eqz v3, :cond_0

    instance-of v6, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v6, :cond_0

    move-object v5, v3

    .line 678
    check-cast v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 680
    .local v5, "staggeredGridLayoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 681
    .restart local v0    # "itemCount":I
    if-lez v0, :cond_0

    .line 683
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v2

    .line 684
    .local v2, "lastVisiblePositionArray":[I
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget v1, v2, v6

    .line 686
    .restart local v1    # "lastVisiblePosition":I
    add-int/lit8 v6, v1, 0x1

    if-ne v0, v6, :cond_0

    iget v6, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScrollState:I

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mScrollState:I

    if-ne v6, v8, :cond_0

    .line 688
    :cond_4
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->dispatchLoadMore()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 612
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 625
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 616
    :pswitch_1
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_0

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->removeFooterViewAndNotify(Landroid/view/View;)V

    .line 432
    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->removeHeaderViewAndNotify(Landroid/view/View;)V

    .line 415
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 327
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getOriginAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 331
    :cond_0
    if-nez p1, :cond_2

    .line 332
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-super {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 354
    return-void

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 336
    new-instance v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    .line 337
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->setSwipeItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;)V

    .line 338
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->setSwipeItemLongClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;)V

    .line 339
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V

    .line 340
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    .line 342
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 343
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 344
    .local v0, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->addHeaderView(Landroid/view/View;)V

    goto :goto_0

    .line 347
    .end local v0    # "view":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 349
    .restart local v0    # "view":Landroid/view/View;
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->addFooterView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setAutoLoadMore(Z)V
    .locals 0
    .param p1, "autoLoadMore"    # Z

    .prologue
    .line 745
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->isAutoLoadMore:Z

    .line 746
    return-void
.end method

.method public setItemViewSwipeEnabled(Z)V
    .locals 1
    .param p1, "canSwipe"    # Z

    .prologue
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

    .prologue
    .line 298
    instance-of v2, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 299
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

    .prologue
    .line 732
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

    .line 733
    return-void
.end method

.method public setLoadMoreView(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;)V
    .locals 0
    .param p1, "loadMoreView"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    .line 726
    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .locals 1
    .param p1, "canDrag"    # Z

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v0, "Cannot set item click listener, setAdapter has already been called."

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$ItemClick;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$ItemClick;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    goto :goto_0
.end method

.method public setSwipeItemLongClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;)V
    .locals 1
    .param p1, "itemLongClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string v0, "Cannot set item long click listener, setAdapter has already been called."

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 237
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$ItemLongClick;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$ItemLongClick;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    goto :goto_0
.end method

.method public setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V
    .locals 1
    .param p1, "menuCreator"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v0, "Cannot set menu creator, setAdapter has already been called."

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 263
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    goto :goto_0
.end method

.method public setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V
    .locals 1
    .param p1, "menuItemClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    const-string v0, "Cannot set menu item click listener, setAdapter has already been called."

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$MenuItemClick;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$MenuItemClick;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    goto :goto_0
.end method

.method public smoothCloseMenu()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

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

    .prologue
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

    .prologue
    .line 474
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->smoothOpenMenu(III)V

    .line 475
    return-void
.end method

.method public smoothOpenMenu(III)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "direction"    # I
    .param p3, "duration"    # I

    .prologue
    .line 504
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothCloseMenu()V

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v2

    add-int/2addr p1, v2

    .line 510
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 511
    .local v1, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    .line 512
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getSwipeMenuView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 513
    .local v0, "itemView":Landroid/view/View;
    instance-of v2, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v2, :cond_1

    .line 514
    check-cast v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .end local v0    # "itemView":Landroid/view/View;
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 515
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 516
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    .line 517
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v2, p3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenRightMenu(I)V

    .line 524
    :cond_1
    :goto_0
    return-void

    .line 518
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 519
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldTouchedPosition:I

    .line 520
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v2, p3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->smoothOpenLeftMenu(I)V

    goto :goto_0
.end method

.method public smoothOpenRightMenu(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
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

    .prologue
    .line 493
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->smoothOpenMenu(III)V

    .line 494
    return-void
.end method

.method public startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
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

    .prologue
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

    .prologue
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
