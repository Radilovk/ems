.class public Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;
.super Landroid/widget/LinearLayout;
.source "DefaultLoadMoreView.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mLoadMoreListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

.field private mLoadingView:Lcom/yanzhenjie/loading/LoadingView;

.field private mTvMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->setGravity(I)V

    .line 52
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 56
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42700000    # 60.0f

    mul-float v1, v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 57
    .local v1, "minHeight":I
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->setMinimumHeight(I)V

    .line 59
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yanzhenjie/recyclerview/swipe/R$layout;->recycler_swipe_view_load_more:I

    invoke-static {v2, v3, p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    sget v2, Lcom/yanzhenjie/recyclerview/swipe/R$id;->loading_view:I

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/loading/LoadingView;

    iput-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mLoadingView:Lcom/yanzhenjie/loading/LoadingView;

    .line 61
    sget v2, Lcom/yanzhenjie/recyclerview/swipe/R$id;->tv_load_more_message:I

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yanzhenjie/recyclerview/swipe/R$color;->recycler_swipe_color_loading_color1:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 64
    .local v2, "color1":I
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/yanzhenjie/recyclerview/swipe/R$color;->recycler_swipe_color_loading_color2:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 65
    .local v3, "color2":I
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/yanzhenjie/recyclerview/swipe/R$color;->recycler_swipe_color_loading_color3:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 67
    .local v4, "color3":I
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mLoadingView:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {v5, v2, v3, v4}, Lcom/yanzhenjie/loading/LoadingView;->setCircleColors(III)V

    .line 69
    invoke-virtual {p0, p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;->onLoadMore()V

    .line 120
    :cond_0
    return-void
.end method

.method public onLoadError(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mLoadingView:Lcom/yanzhenjie/loading/LoadingView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/loading/LoadingView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/yanzhenjie/recyclerview/swipe/R$string;->recycler_swipe_load_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method public onLoadFinish(ZZ)V
    .locals 3
    .param p1, "dataEmpty"    # Z
    .param p2, "hasMore"    # Z

    .line 82
    if-nez p2, :cond_1

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->setVisibility(I)V

    .line 85
    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 86
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mLoadingView:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {v2, v1}, Lcom/yanzhenjie/loading/LoadingView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    sget v1, Lcom/yanzhenjie/recyclerview/swipe/R$string;->recycler_swipe_data_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mLoadingView:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {v2, v1}, Lcom/yanzhenjie/loading/LoadingView;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    sget v1, Lcom/yanzhenjie/recyclerview/swipe/R$string;->recycler_swipe_more_not:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->setVisibility(I)V

    .line 97
    :goto_0
    return-void
.end method

.method public onLoading()V
    .locals 2

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mLoadingView:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/loading/LoadingView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    sget v1, Lcom/yanzhenjie/recyclerview/swipe/R$string;->recycler_swipe_load_more_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    return-void
.end method

.method public onWaitToLoadMore(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;)V
    .locals 3
    .param p1, "loadMoreListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

    .line 101
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreListener;

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mLoadingView:Lcom/yanzhenjie/loading/LoadingView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/loading/LoadingView;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    sget v1, Lcom/yanzhenjie/recyclerview/swipe/R$string;->recycler_swipe_click_load_more:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    return-void
.end method
