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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
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

    .prologue
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

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-boolean v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isLoadingData:Z

    .line 28
    iput-boolean v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isNoMore:Z

    .line 29
    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshProgressStyle:I

    .line 30
    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingMoreProgressStyle:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    .line 33
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    .line 34
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->dragRate:F

    .line 38
    iput-boolean v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->pullRefreshEnabled:Z

    .line 39
    iput-boolean v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->loadingMoreEnabled:Z

    .line 49
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DataObserver;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Lcom/jcodecraeer/xrecyclerview/XRecyclerView$1;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 50
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->appbarState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    .line 54
    iput v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->limitNumberToCallLoadMore:I

    .line 892
    iput v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollDyCounter:I

    .line 66
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isReservedItemViewType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;)Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;
    .locals 0
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .param p1, "x1"    # Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->appbarState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->loadingMoreEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isHeaderType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaderViewByType(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    return-object v0
.end method

.method private findMax([I)I
    .locals 4
    .param p1, "lastPositions"    # [I

    .prologue
    const/4 v2, 0x0

    .line 470
    aget v0, p1, v2

    .line 471
    .local v0, "max":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 472
    .local v1, "value":I
    if-le v1, v0, :cond_0

    .line 473
    move v0, v1

    .line 471
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "value":I
    :cond_1
    return v0
.end method

.method private getHeaderViewByType(I)Landroid/view/View;
    .locals 2
    .param p1, "itemType"    # I

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isHeaderType(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x2712

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private getHeaders_includingRefreshCount()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 70
    iget-boolean v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->pullRefreshEnabled:Z

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    .line 72
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshProgressStyle:I

    invoke-virtual {v1, v2}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setProgressStyle(I)V

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
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    return-void
.end method

.method private isHeaderType(I)Z
    .locals 3
    .param p1, "itemViewType"    # I

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOnTop()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 480
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-nez v1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v0

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 483
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isReservedItemViewType(I)Z
    .locals 2
    .param p1, "itemViewType"    # I

    .prologue
    .line 185
    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit16 v1, v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v0, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->destroy()V

    .line 92
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->destroy()V

    .line 96
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    .line 98
    :cond_2
    return-void
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getOriginalAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultFootView()Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v1, v1, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    goto :goto_0
.end method

.method public getDefaultRefreshHeaderView()Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    goto :goto_0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    return-object v0
.end method

.method public loadMoreComplete()V
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isLoadingData:Z

    .line 210
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v0, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;->onLoadMoreComplete(Landroid/view/View;)V

    goto :goto_0
.end method

.method public notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 370
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v1

    add-int v0, p1, v1

    .line 373
    .local v0, "adjPos":I
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public notifyItemChanged(ILjava/lang/Object;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 377
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v1

    add-int v0, p1, v1

    .line 380
    .local v0, "adjPos":I
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyItemInserted(Ljava/util/List;I)V
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "listData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 367
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v1

    .line 364
    .local v1, "headerSize":I
    add-int v0, p2, v1

    .line 365
    .local v0, "adjPos":I
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 366
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v1, v3, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyItemRemoved(Ljava/util/List;I)V
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "listData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 358
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v1

    .line 355
    .local v1, "headerSize":I
    add-int v0, p2, v1

    .line 356
    .local v0, "adjPos":I
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 357
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-static {v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v1, v3, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    .line 749
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 751
    const/4 v0, 0x0

    .line 752
    .local v0, "appBarLayout":Landroid/support/design/widget/AppBarLayout;
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 753
    .local v5, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v5, :cond_0

    .line 754
    instance-of v6, v5, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v6, :cond_3

    .line 759
    :cond_0
    instance-of v6, v5, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v6, :cond_2

    move-object v3, v5

    .line 760
    check-cast v3, Landroid/support/design/widget/CoordinatorLayout;

    .line 761
    .local v3, "coordinatorLayout":Landroid/support/design/widget/CoordinatorLayout;
    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    .line 762
    .local v2, "childCount":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 763
    invoke-virtual {v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 764
    .local v1, "child":Landroid/view/View;
    instance-of v6, v1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v6, :cond_4

    move-object v0, v1

    .line 765
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 769
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    if-eqz v0, :cond_2

    .line 770
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$2;

    invoke-direct {v6, p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$2;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)V

    invoke-virtual {v0, v6}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 778
    .end local v2    # "childCount":I
    .end local v3    # "coordinatorLayout":Landroid/support/design/widget/CoordinatorLayout;
    .end local v4    # "i":I
    :cond_2
    return-void

    .line 757
    :cond_3
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_0

    .line 762
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childCount":I
    .restart local v3    # "coordinatorLayout":Landroid/support/design/widget/CoordinatorLayout;
    .restart local v4    # "i":I
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public onScrollStateChanged(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    .line 393
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 394
    if-nez p1, :cond_2

    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isLoadingData:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->loadingMoreEnabled:Z

    if-eqz v5, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    .line 397
    .local v3, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v5, v3, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v5, :cond_3

    move-object v5, v3

    .line 398
    check-cast v5, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 406
    .local v2, "lastVisibleItemPosition":I
    :goto_0
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v5

    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v6

    add-int v0, v5, v6

    .line 409
    .local v0, "adjAdapterItemCount":I
    const/4 v4, 0x3

    .line 411
    .local v4, "status":I
    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v5, :cond_0

    .line 412
    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v5}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getState()I

    move-result v4

    .line 414
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_2

    iget v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->limitNumberToCallLoadMore:I

    sub-int v5, v0, v5

    if-lt v2, v5, :cond_2

    .line 416
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-lt v0, v5, :cond_2

    iget-boolean v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isNoMore:Z

    if-nez v5, :cond_2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 421
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isLoadingData:Z

    .line 422
    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v5, v5, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v5, :cond_5

    .line 423
    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    check-cast v5, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    .line 429
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    invoke-interface {v5}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;->onLoadMore()V

    .line 432
    .end local v0    # "adjAdapterItemCount":I
    .end local v2    # "lastVisibleItemPosition":I
    .end local v3    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .end local v4    # "status":I
    :cond_2
    return-void

    .line 399
    .restart local v3    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_3
    instance-of v5, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v5, :cond_4

    move-object v5, v3

    .line 400
    check-cast v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v5

    new-array v1, v5, [I

    .local v1, "into":[I
    move-object v5, v3

    .line 401
    check-cast v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 402
    invoke-direct {p0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->findMax([I)I

    move-result v2

    .line 403
    .restart local v2    # "lastVisibleItemPosition":I
    goto :goto_0

    .end local v1    # "into":[I
    .end local v2    # "lastVisibleItemPosition":I
    :cond_4
    move-object v5, v3

    .line 404
    check-cast v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .restart local v2    # "lastVisibleItemPosition":I
    goto :goto_0

    .line 425
    .restart local v0    # "adjAdapterItemCount":I
    .restart local v4    # "status":I
    :cond_5
    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    if-eqz v5, :cond_1

    .line 426
    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    iget-object v6, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;->onLoadingMore(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onScrolled(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 905
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 906
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    if-nez v3, :cond_0

    .line 920
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    invoke-interface {v3}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->setLimitHeight()I

    move-result v1

    .line 910
    .local v1, "height":I
    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollDyCounter:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollDyCounter:I

    .line 911
    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollDyCounter:I

    if-gtz v3, :cond_1

    .line 912
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->onAlphaChange(I)V

    goto :goto_0

    .line 913
    :cond_1
    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollDyCounter:I

    if-gt v3, v1, :cond_2

    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollDyCounter:I

    if-lez v3, :cond_2

    .line 914
    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollDyCounter:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float v2, v3, v4

    .line 915
    .local v2, "scale":F
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v0, v3, v2

    .line 916
    .local v0, "alpha":F
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    float-to-int v4, v0

    invoke-interface {v3, v4}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->onAlphaChange(I)V

    goto :goto_0

    .line 918
    .end local v0    # "alpha":F
    .end local v2    # "scale":F
    :cond_2
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    const/16 v4, 0xff

    invoke-interface {v3, v4}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->onAlphaChange(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 436
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    .line 439
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 456
    :pswitch_0
    iput v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    .line 457
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->pullRefreshEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->appbarState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v2, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    if-ne v1, v2, :cond_1

    .line 458
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->releaseAction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    invoke-interface {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;->onRefresh()V

    .line 466
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 441
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    goto :goto_0

    .line 444
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    sub-float v0, v1, v2

    .line 445
    .local v0, "deltaY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLastY:F

    .line 446
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->pullRefreshEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->appbarState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v2, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    if-ne v1, v2, :cond_1

    .line 447
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->dragRate:F

    div-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->onMove(F)V

    .line 450
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 451
    const/4 v1, 0x0

    goto :goto_1

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refresh()V
    .locals 2

    .prologue
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

    .prologue
    .line 243
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->refreshComplete()V

    .line 245
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setNoMore(Z)V

    .line 246
    return-void
.end method

.method public removeAllHeaderView()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 144
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->sHeaderTypes:Ljava/util/List;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 147
    .local v0, "view":Landroid/view/View;
    if-ne v0, p1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    .end local v0    # "view":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-virtual {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
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

    .prologue
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

    .prologue
    .line 313
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    invoke-direct {v0, p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    .line 314
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

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

    .prologue
    .line 280
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setArrowImageView(I)V

    .line 283
    :cond_0
    return-void
.end method

.method public setDragRate(F)V
    .locals 4
    .param p1, "rate"    # F

    .prologue
    .line 292
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->dragRate:F

    goto :goto_0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
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

    .prologue
    .line 194
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    .line 198
    iput-object p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    goto :goto_0
.end method

.method public setFootViewText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "loading"    # Ljava/lang/String;
    .param p2, "noMore"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v0, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

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

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 331
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mWrapAdapter:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    if-eqz v1, :cond_0

    .line 332
    instance-of v1, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 333
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

    .prologue
    .line 119
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->limitNumberToCallLoadMore:I

    .line 120
    return-void
.end method

.method public setLoadingListener(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    .line 738
    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->loadingMoreEnabled:Z

    .line 258
    if-nez p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v0, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    .line 263
    :cond_0
    return-void
.end method

.method public setLoadingMoreProgressStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mLoadingMoreProgressStyle:I

    .line 274
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v0, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setProgressStyle(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public setNoMore(Z)V
    .locals 2
    .param p1, "noMore"    # Z

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isLoadingData:Z

    .line 221
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isNoMore:Z

    .line 222
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    instance-of v0, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    iget-boolean v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->isNoMore:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    .line 229
    :cond_0
    :goto_1
    return-void

    .line 223
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->footerViewCallBack:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mFootView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;->onSetNoMore(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public setPullRefreshEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->pullRefreshEnabled:Z

    .line 254
    return-void
.end method

.method public setRefreshHeader(Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;)V
    .locals 0
    .param p1, "refreshHeader"    # Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    .line 250
    return-void
.end method

.method public setRefreshProgressStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshProgressStyle:I

    .line 267
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setProgressStyle(I)V

    .line 270
    :cond_0
    return-void
.end method

.method public setRefreshTimeSpKeyName(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->mRefreshHeader:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setXrRefreshTimeKey(Ljava/lang/String;)V

    .line 206
    :cond_0
    return-void
.end method

.method public setScrollAlphaChangeListener(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;)V
    .locals 0
    .param p1, "scrollAlphaChangeListener"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    .prologue
    .line 926
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->scrollAlphaChangeListener:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    .line 927
    return-void
.end method
