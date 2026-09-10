.class public Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;,
        Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;,
        Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;,
        Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;,
        Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DataObserver;
    }
.end annotation


# static fields
.field private static final HEADER_INIT_INDEX:I = 0x2712

.field private static final TYPE_FOOTER:I = 0x2711

.field private static final TYPE_REFRESH_HEADER:I = 0x2710

.field private static sHeaderTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appbarState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

.field private dragRate:F

.field private footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

.field private isLoadingData:Z

.field private isNoMore:Z

.field private limitNumberToCallLoadMore:I

.field private loadingMoreEnabled:Z

.field private final mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mEmptyView:Landroid/view/View;

.field private mFootView:Landroid/view/View;

.field private mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLastY:F

.field private mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

.field private mLoadingMoreProgressStyle:I

.field private mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

.field private mRefreshProgressStyle:I

.field private mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

.field private pullRefreshEnabled:Z

.field private scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

.field private scrollDyCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isLoadingData:Z

    .line 28
    iput-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isNoMore:Z

    .line 29
    const/4 v1, -0x1

    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshProgressStyle:I

    .line 30
    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingMoreProgressStyle:I

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    .line 33
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    .line 34
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->dragRate:F

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->pullRefreshEnabled:Z

    .line 39
    iput-boolean v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->loadingMoreEnabled:Z

    .line 49
    new-instance v2, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DataObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DataObserver;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Lcom/jcodecraeer/xrecyclerview/XRecyclerView$1;)V

    iput-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 50
    sget-object v2, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    iput-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->appbarState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    .line 54
    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->limitNumberToCallLoadMore:I

    .line 892
    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollDyCounter:I

    .line 66
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 26
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .line 26
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .param p1, "x1"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isReservedItemViewType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;)Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;
    .locals 0
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .param p1, "x1"    # Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    .line 26
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->appbarState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 26
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 26
    iget-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->loadingMoreEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 26
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 26
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .param p1, "x1"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isHeaderType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .param p1, "x1"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaderViewByType(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 26
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    return-object v0
.end method

.method private findMax([I)I
    .locals 4
    .param p1, "lastPositions"    # [I

    .line 470
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 471
    .local v1, "max":I
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    .line 472
    .local v3, "value":I
    if-le v3, v1, :cond_0

    .line 473
    move v1, v3

    .line 471
    .end local v3    # "value":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_1
    return v1
.end method

.method private getHeaderViewByType(I)Landroid/view/View;
    .locals 2
    .param p1, "itemType"    # I

    .line 168
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isHeaderType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    return-object v1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 172
    return-object v1

    .line 173
    :cond_1
    add-int/lit16 v1, p1, -0x2712

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private getHeaders_includingRefreshCount()I
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    return v0

    .line 386
    :cond_0
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private init()V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->pullRefreshEnabled:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    .line 72
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshProgressStyle:I

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setProgressStyle(I)V

    .line 74
    :cond_0
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "footView":Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingMoreProgressStyle:I

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setProgressStyle(I)V

    .line 76
    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    .line 77
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    return-void
.end method

.method private isHeaderType(I)Z
    .locals 3
    .param p1, "itemViewType"    # I

    .line 178
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 179
    :cond_2
    :goto_0
    return v1
.end method

.method private isOnTop()Z
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 481
    return v1

    .line 482
    :cond_0
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 483
    const/4 v0, 0x1

    return v0

    .line 485
    :cond_1
    return v1
.end method

.method private isReservedItemViewType(I)Z
    .locals 2
    .param p1, "itemViewType"    # I

    .line 185
    const/16 v0, 0x2710

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 186
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit16 v0, v0, 0x2712

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->notifyDataSetChanged()V

    .line 141
    :cond_1
    return-void

    .line 135
    :cond_2
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v2, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v2, :cond_1

    .line 91
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->destroy()V

    .line 92
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->destroy()V

    .line 96
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    .line 98
    :cond_2
    return-void
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getOriginalAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultFootView()Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    return-object v1

    .line 111
    :cond_0
    instance-of v2, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v2, :cond_1

    .line 112
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    return-object v0

    .line 114
    :cond_1
    return-object v1
.end method

.method public getDefaultRefreshHeaderView()Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFootView()Landroid/view/View;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    return-object v0
.end method

.method public loadMoreComplete()V
    .locals 2

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isLoadingData:Z

    .line 210
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v1, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    if-eqz v1, :cond_1

    .line 214
    invoke-interface {v1, v0}, Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;->onLoadMoreComplete(Landroid/view/View;)V

    .line 217
    :cond_1
    :goto_0
    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .line 370
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    return-void

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v0

    add-int/2addr v0, p1

    .line 373
    .local v0, "adjPos":I
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 374
    return-void
.end method

.method public notifyItemChanged(ILjava/lang/Object;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v0

    add-int/2addr v0, p1

    .line 380
    .local v0, "adjPos":I
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 381
    return-void
.end method

.method public notifyItemInserted(Ljava/util/List;I)V
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 361
    .local p1, "listData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 362
    return-void

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v0

    .line 364
    .local v0, "headerSize":I
    add-int v1, p2, v0

    .line 365
    .local v1, "adjPos":I
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 366
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 367
    return-void
.end method

.method public notifyItemRemoved(Ljava/util/List;I)V
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 352
    .local p1, "listData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 353
    return-void

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v0

    .line 355
    .local v0, "headerSize":I
    add-int v1, p2, v0

    .line 356
    .local v1, "adjPos":I
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 357
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 358
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 749
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 751
    const/4 v0, 0x0

    .line 752
    .local v0, "appBarLayout":Landroid/support/design/widget/AppBarLayout;
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 753
    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_1

    .line 754
    instance-of v2, v1, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v2, :cond_0

    .line 755
    goto :goto_1

    .line 757
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 759
    :cond_1
    :goto_1
    instance-of v2, v1, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v2, :cond_4

    .line 760
    move-object v2, v1

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout;

    .line 761
    .local v2, "coordinatorLayout":Landroid/support/design/widget/CoordinatorLayout;
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .line 762
    .local v3, "childCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_3

    .line 763
    invoke-virtual {v2, v4}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 764
    .local v5, "child":Landroid/view/View;
    instance-of v6, v5, Landroid/support/design/widget/AppBarLayout;

    if-eqz v6, :cond_2

    .line 765
    move-object v0, v5

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 766
    goto :goto_3

    .line 762
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 769
    .end local v4    # "i":I
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 770
    new-instance v4, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$2;

    invoke-direct {v4, p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$2;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)V

    invoke-virtual {v0, v4}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 778
    .end local v2    # "coordinatorLayout":Landroid/support/design/widget/CoordinatorLayout;
    .end local v3    # "childCount":I
    :cond_4
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .line 393
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 394
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isLoadingData:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->loadingMoreEnabled:Z

    if-eqz v0, :cond_5

    .line 395
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 397
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 398
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .local v1, "lastVisibleItemPosition":I
    goto :goto_0

    .line 399
    .end local v1    # "lastVisibleItemPosition":I
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 400
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v1, v1, [I

    .line 401
    .local v1, "into":[I
    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 402
    invoke-direct {p0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->findMax([I)I

    move-result v1

    .line 403
    .local v1, "lastVisibleItemPosition":I
    goto :goto_0

    .line 404
    .end local v1    # "lastVisibleItemPosition":I
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 406
    .restart local v1    # "lastVisibleItemPosition":I
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 409
    .local v2, "adjAdapterItemCount":I
    const/4 v3, 0x3

    .line 411
    .local v3, "status":I
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v4, :cond_2

    .line 412
    invoke-virtual {v4}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getState()I

    move-result v3

    .line 413
    :cond_2
    nop

    .line 414
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_5

    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->limitNumberToCallLoadMore:I

    sub-int v4, v2, v4

    if-lt v1, v4, :cond_5

    .line 416
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_5

    iget-boolean v4, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isNoMore:Z

    if-nez v4, :cond_5

    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 421
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isLoadingData:Z

    .line 422
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v5, v4, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v5, :cond_3

    .line 423
    check-cast v4, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    goto :goto_1

    .line 425
    :cond_3
    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    if-eqz v5, :cond_4

    .line 426
    invoke-interface {v5, v4}, Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;->onLoadingMore(Landroid/view/View;)V

    .line 429
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    invoke-interface {v4}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;->onLoadMore()V

    .line 432
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .end local v1    # "lastVisibleItemPosition":I
    .end local v2    # "adjAdapterItemCount":I
    .end local v3    # "status":I
    :cond_5
    return-void
.end method

.method public onScrolled(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 905
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 906
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    if-nez v0, :cond_0

    .line 907
    return-void

    .line 909
    :cond_0
    invoke-interface {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->setLimitHeight()I

    move-result v0

    .line 910
    .local v0, "height":I
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollDyCounter:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollDyCounter:I

    .line 911
    if-gtz v1, :cond_1

    .line 912
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->onAlphaChange(I)V

    goto :goto_0

    .line 913
    :cond_1
    if-gt v1, v0, :cond_2

    if-lez v1, :cond_2

    .line 914
    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 915
    .local v1, "scale":F
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v1

    .line 916
    .local v2, "alpha":F
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    float-to-int v4, v2

    invoke-interface {v3, v4}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->onAlphaChange(I)V

    .line 917
    .end local v1    # "scale":F
    .end local v2    # "alpha":F
    goto :goto_0

    .line 918
    :cond_2
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    const/16 v2, 0xff

    invoke-interface {v1, v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->onAlphaChange(I)V

    .line 920
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 436
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    .line 439
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 456
    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    .line 457
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->pullRefreshEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->appbarState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    if-ne v0, v1, :cond_4

    .line 458
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->releaseAction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    if-eqz v0, :cond_4

    .line 460
    invoke-interface {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;->onRefresh()V

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    sub-float/2addr v0, v1

    .line 445
    .local v0, "deltaY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    .line 446
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->pullRefreshEnabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->appbarState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v3, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    if-ne v1, v3, :cond_4

    .line 447
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-nez v1, :cond_2

    .line 448
    goto :goto_0

    .line 449
    :cond_2
    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->dragRate:F

    div-float v3, v0, v3

    invoke-virtual {v1, v3}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->onMove(F)V

    .line 450
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getState()I

    move-result v1

    if-ge v1, v2, :cond_4

    .line 451
    const/4 v1, 0x0

    return v1

    .line 441
    .end local v0    # "deltaY":F
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    .line 442
    nop

    .line 466
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->pullRefreshEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setState(I)V

    .line 233
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    invoke-interface {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;->onRefresh()V

    .line 235
    :cond_0
    return-void
.end method

.method public refreshComplete()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->refreshComplete()V

    .line 245
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setNoMore(Z)V

    .line 246
    return-void
.end method

.method public removeAllHeaderView()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->notifyDataSetChanged()V

    .line 164
    :cond_1
    return-void

    .line 159
    :cond_2
    :goto_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 147
    .local v1, "view":Landroid/view/View;
    if-ne v1, p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    goto :goto_1

    .line 151
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 152
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->notifyDataSetChanged()V

    .line 155
    :cond_3
    return-void

    .line 145
    :cond_4
    :goto_2
    return-void
.end method

.method public reset()V
    .locals 1

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setNoMore(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 239
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->refreshComplete()V

    .line 240
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 896
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 898
    if-nez p1, :cond_0

    .line 899
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollDyCounter:I

    .line 901
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 313
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-direct {v0, p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    .line 314
    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 315
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 316
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 317
    return-void
.end method

.method public setArrowImageView(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 280
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setArrowImageView(I)V

    .line 283
    :cond_0
    return-void
.end method

.method public setDragRate(F)V
    .locals 5
    .param p1, "rate"    # F

    .line 292
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 293
    return-void

    .line 295
    :cond_0
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->dragRate:F

    .line 296
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mEmptyView:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 304
    return-void
.end method

.method public setFootView(Landroid/view/View;Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "footerViewCallBack"    # Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 194
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    .line 198
    iput-object p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    .line 199
    return-void

    .line 195
    :cond_1
    :goto_0
    return-void
.end method

.method public setFootViewText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "loading"    # Ljava/lang/String;
    .param p2, "noMore"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v1, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_0

    .line 128
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setLoadingHint(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {v0, p2}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setNoMoreHint(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1, "layout"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 330
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 331
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-eqz v0, :cond_0

    .line 332
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 333
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 334
    .local v0, "gridManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$1;

    invoke-direct {v1, p0, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$1;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 343
    .end local v0    # "gridManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    return-void
.end method

.method public setLimitNumberToCallLoadMore(I)V
    .locals 0
    .param p1, "limitNumberToCallLoadMore"    # I

    .line 119
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->limitNumberToCallLoadMore:I

    .line 120
    return-void
.end method

.method public setLoadingListener(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    .line 737
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    .line 738
    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 257
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->loadingMoreEnabled:Z

    .line 258
    if-nez p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v1, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_0

    .line 260
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    .line 263
    :cond_0
    return-void
.end method

.method public setLoadingMoreProgressStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .line 273
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingMoreProgressStyle:I

    .line 274
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v1, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_0

    .line 275
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setProgressStyle(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public setNoMore(Z)V
    .locals 2
    .param p1, "noMore"    # Z

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isLoadingData:Z

    .line 221
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isNoMore:Z

    .line 222
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v1, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_1

    .line 223
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    goto :goto_1

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    if-eqz v1, :cond_2

    .line 226
    invoke-interface {v1, v0, p1}, Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;->onSetNoMore(Landroid/view/View;Z)V

    .line 229
    :cond_2
    :goto_1
    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 253
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->pullRefreshEnabled:Z

    .line 254
    return-void
.end method

.method public setRefreshHeader(Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;)V
    .locals 0
    .param p1, "refreshHeader"    # Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    .line 249
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    .line 250
    return-void
.end method

.method public setRefreshProgressStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 266
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshProgressStyle:I

    .line 267
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setProgressStyle(I)V

    .line 270
    :cond_0
    return-void
.end method

.method public setRefreshTimeSpKeyName(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setXrRefreshTimeKey(Ljava/lang/String;)V

    .line 206
    :cond_0
    return-void
.end method

.method public setScrollAlphaChangeListener(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;)V
    .locals 0
    .param p1, "scrollAlphaChangeListener"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    .line 926
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    .line 927
    return-void
.end method
