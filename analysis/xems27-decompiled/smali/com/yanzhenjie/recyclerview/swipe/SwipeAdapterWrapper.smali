.class public Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SwipeAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_ITEM_TYPE_FOOTER:I = 0x30d40

.field private static final BASE_ITEM_TYPE_HEADER:I = 0x186a0


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mFootViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

.field private mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

.field private mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

.field private mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 38
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;)Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    .line 32
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;)Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    .line 32
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    return-object v0
.end method

.method private getContentItemCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method private getSupperClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 167
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 168
    .local v0, "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getSupperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 171
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getFooterItemCount()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 244
    return-void
.end method

.method public addFooterViewAndNotify(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getFooterItemCount()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 248
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v0

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getContentItemCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getFooterItemCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->notifyItemInserted(I)V

    .line 249
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 229
    return-void
.end method

.method public addHeaderViewAndNotify(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 232
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 233
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->notifyItemInserted(I)V

    .line 234
    return-void
.end method

.method public getFooterItemCount()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderItemCount()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v0

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getContentItemCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getFooterItemCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 278
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isFooterView(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    .line 281
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .line 94
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    return v0

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getContentItemCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    return v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getOriginAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public isFooterView(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 224
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v0

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getContentItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeaderView(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 220
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 201
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 202
    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 176
    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 185
    .local v0, "itemView":Landroid/view/View;
    instance-of v1, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v1, :cond_2

    .line 186
    move-object v1, v0

    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 187
    .local v1, "swipeMenuLayout":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;
    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getChildCount()I

    move-result v2

    .line 188
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 189
    invoke-virtual {v1, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 190
    .local v4, "childView":Landroid/view/View;
    instance-of v5, v4, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    if-eqz v5, :cond_1

    .line 191
    move-object v5, v4

    check-cast v5, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    invoke-virtual {v5, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 188
    .end local v4    # "childView":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "swipeMenuLayout":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, p1, v2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 197
    return-void

    .line 181
    .end local v0    # "itemView":Landroid/view/View;
    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 104
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$ViewHolder;

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$ViewHolder;

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 111
    .local v0, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$1;

    invoke-direct {v2, p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$1;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$2;

    invoke-direct {v2, p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$2;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    if-nez v1, :cond_4

    return-object v0

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/yanzhenjie/recyclerview/swipe/R$layout;->recycler_swipe_view_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 132
    .local v1, "swipeMenuLayout":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;
    new-instance v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;

    invoke-direct {v2, v1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;I)V

    .line 133
    .local v2, "swipeLeftMenu":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    new-instance v3, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;

    invoke-direct {v3, v1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;I)V

    .line 135
    .local v3, "swipeRightMenu":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-interface {v4, v2, v3, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;->onCreateMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;I)V

    .line 137
    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 138
    .local v4, "leftMenuCount":I
    const/4 v5, 0x1

    if-lez v4, :cond_5

    .line 139
    sget v6, Lcom/yanzhenjie/recyclerview/swipe/R$id;->swipe_left:I

    invoke-virtual {v1, v6}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    .line 141
    .local v6, "swipeLeftMenuView":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;
    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->getOrientation()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->setOrientation(I)V

    .line 142
    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v6, v2, v1, v7, v5}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->createMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;I)V

    .line 145
    .end local v6    # "swipeLeftMenuView":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;
    :cond_5
    invoke-virtual {v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 146
    .local v6, "rightMenuCount":I
    if-lez v6, :cond_6

    .line 147
    sget v7, Lcom/yanzhenjie/recyclerview/swipe/R$id;->swipe_right:I

    invoke-virtual {v1, v7}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    .line 149
    .local v7, "swipeRightMenuView":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;
    invoke-virtual {v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->getOrientation()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->setOrientation(I)V

    .line 150
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    const/4 v9, -0x1

    invoke-virtual {v7, v3, v1, v8, v9}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->createMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;I)V

    .line 153
    .end local v7    # "swipeRightMenuView":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;
    :cond_6
    sget v7, Lcom/yanzhenjie/recyclerview/swipe/R$id;->swipe_content:I

    invoke-virtual {v1, v7}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 154
    .local v7, "viewGroup":Landroid/view/ViewGroup;
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getSupperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "itemView"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 158
    .local v8, "itemView":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 159
    :cond_7
    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v8    # "itemView":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 160
    :catch_0
    move-exception v5

    .line 161
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 321
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 322
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 294
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 296
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isHeaderView(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isFooterView(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    return v1

    .line 298
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 206
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 208
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isHeaderView(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isFooterView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 209
    :cond_1
    :goto_0
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 210
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v2, :cond_2

    .line 211
    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 212
    .local v2, "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 214
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_2
    nop

    .line 217
    :goto_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 303
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 305
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isHeaderView(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isFooterView(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 286
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 288
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isHeaderView(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isFooterView(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 290
    :cond_0
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 311
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 312
    return-void
.end method

.method public removeFooterViewAndNotify(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 252
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 253
    .local v0, "footerIndex":I
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 254
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v1

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getContentItemCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->notifyItemRemoved(I)V

    .line 255
    return-void
.end method

.method public removeHeaderViewAndNotify(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 238
    .local v0, "headerIndex":I
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->notifyItemRemoved(I)V

    .line 240
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1
    .param p1, "hasStableIds"    # Z

    .line 273
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 274
    return-void
.end method

.method setSwipeItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;)V
    .locals 0
    .param p1, "swipeItemClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    .line 76
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    .line 77
    return-void
.end method

.method setSwipeItemLongClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;)V
    .locals 0
    .param p1, "swipeItemLongClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    .line 80
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    .line 81
    return-void
.end method

.method setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V
    .locals 0
    .param p1, "swipeMenuCreator"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 63
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 64
    return-void
.end method

.method setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V
    .locals 0
    .param p1, "swipeMenuItemClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 72
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 73
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 316
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 317
    return-void
.end method
