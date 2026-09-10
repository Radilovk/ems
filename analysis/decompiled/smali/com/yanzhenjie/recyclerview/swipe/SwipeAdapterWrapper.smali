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
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
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
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
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

    .prologue
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

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;)Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    return-object v0
.end method

.method private getContentItemCount()I
    .locals 1

    .prologue
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
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
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

    move-result-object p1

    .line 171
    .end local p1    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderItemCount()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
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

    .prologue
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

    .line 281
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    .line 99
    :goto_0
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

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getOriginAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public isFooterView(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v0

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getContentItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderView(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 220
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
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

    .prologue
    .line 176
    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 7
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isHeaderView(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isFooterView(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 185
    .local v3, "itemView":Landroid/view/View;
    instance-of v5, v3, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v5, :cond_3

    move-object v4, v3

    .line 186
    check-cast v4, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 187
    .local v4, "swipeMenuLayout":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;
    invoke-virtual {v4}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getChildCount()I

    move-result v0

    .line 188
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 189
    invoke-virtual {v4, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "childView":Landroid/view/View;
    instance-of v5, v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    if-eqz v5, :cond_2

    .line 191
    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    .end local v1    # "childView":Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 188
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "swipeMenuLayout":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;
    :cond_3
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getHeaderItemCount()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {v5, p1, v6, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 16
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 105
    new-instance v12, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$ViewHolder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-direct {v12, v13}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$ViewHolder;-><init>(Landroid/view/View;)V

    .line 163
    :cond_0
    :goto_0
    return-object v12

    .line 106
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 107
    new-instance v12, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$ViewHolder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-direct {v12, v13}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 109
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v12

    .line 111
    .local v12, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    if-eqz v13, :cond_3

    .line 112
    iget-object v13, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v14, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$1;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    if-eqz v13, :cond_4

    .line 120
    iget-object v13, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v14, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$2;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 129
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    if-eqz v13, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    sget v14, Lcom/yanzhenjie/recyclerview/swipe/R$layout;->recycler_swipe_view_item:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 132
    .local v8, "swipeMenuLayout":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;
    new-instance v6, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;

    move/from16 v0, p2

    invoke-direct {v6, v8, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;I)V

    .line 133
    .local v6, "swipeLeftMenu":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    new-instance v9, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;

    move/from16 v0, p2

    invoke-direct {v9, v8, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;I)V

    .line 135
    .local v9, "swipeRightMenu":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    move/from16 v0, p2

    invoke-interface {v13, v6, v9, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;->onCreateMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;I)V

    .line 137
    invoke-virtual {v6}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    .line 138
    .local v4, "leftMenuCount":I
    if-lez v4, :cond_5

    .line 139
    sget v13, Lcom/yanzhenjie/recyclerview/swipe/R$id;->swipe_left:I

    invoke-virtual {v8, v13}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    .line 141
    .local v7, "swipeLeftMenuView":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;
    invoke-virtual {v6}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->getOrientation()I

    move-result v13

    invoke-virtual {v7, v13}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->setOrientation(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    const/4 v14, 0x1

    invoke-virtual {v7, v6, v8, v13, v14}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->createMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;I)V

    .line 145
    .end local v7    # "swipeLeftMenuView":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;
    :cond_5
    invoke-virtual {v9}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    .line 146
    .local v5, "rightMenuCount":I
    if-lez v5, :cond_6

    .line 147
    sget v13, Lcom/yanzhenjie/recyclerview/swipe/R$id;->swipe_right:I

    invoke-virtual {v8, v13}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    .line 149
    .local v10, "swipeRightMenuView":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;
    invoke-virtual {v9}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->getOrientation()I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->setOrientation(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    const/4 v14, -0x1

    invoke-virtual {v10, v9, v8, v13, v14}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->createMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;I)V

    .line 153
    .end local v10    # "swipeRightMenuView":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;
    :cond_6
    sget v13, Lcom/yanzhenjie/recyclerview/swipe/R$id;->swipe_content:I

    invoke-virtual {v8, v13}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 154
    .local v11, "viewGroup":Landroid/view/ViewGroup;
    iget-object v13, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->getSupperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v13

    const-string v14, "itemView"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 158
    .local v3, "itemView":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v13

    if-nez v13, :cond_7

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 159
    :cond_7
    invoke-virtual {v3, v12, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 160
    .end local v3    # "itemView":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 322
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
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

    .line 298
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 208
    .local v2, "position":I
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isHeaderView(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isFooterView(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    :cond_0
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 210
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 211
    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 212
    .local v1, "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 217
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
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

    .prologue
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

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 312
    return-void
.end method

.method public removeFooterViewAndNotify(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 252
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

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

    .prologue
    .line 237
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

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

    .prologue
    .line 273
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 274
    return-void
.end method

.method setSwipeItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;)V
    .locals 0
    .param p1, "swipeItemClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemClickListener;

    .line 77
    return-void
.end method

.method setSwipeItemLongClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;)V
    .locals 0
    .param p1, "swipeItemLongClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeItemLongClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    .line 81
    return-void
.end method

.method setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V
    .locals 0
    .param p1, "swipeMenuCreator"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 64
    return-void
.end method

.method setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V
    .locals 0
    .param p1, "swipeMenuItemClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->mSwipeMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 73
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 317
    return-void
.end method
