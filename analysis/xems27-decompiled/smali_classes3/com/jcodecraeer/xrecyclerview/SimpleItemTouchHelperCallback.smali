.class public Lcom/jcodecraeer/xrecyclerview/SimpleItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "SimpleItemTouchHelperCallback.java"


# static fields
.field public static final ALPHA_FULL:F = 1.0f


# instance fields
.field private final mAdapter:Lcom/jcodecraeer/xrecyclerview/ItemTouchHelperAdapter;

.field private mXrecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;


# direct methods
.method public constructor <init>(Lcom/jcodecraeer/xrecyclerview/ItemTouchHelperAdapter;Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)V
    .locals 0
    .param p1, "adapter"    # Lcom/jcodecraeer/xrecyclerview/ItemTouchHelperAdapter;
    .param p2, "recyclerView"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/SimpleItemTouchHelperCallback;->mAdapter:Lcom/jcodecraeer/xrecyclerview/ItemTouchHelperAdapter;

    .line 22
    iput-object p2, p0, Lcom/jcodecraeer/xrecyclerview/SimpleItemTouchHelperCallback;->mXrecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 23
    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 83
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 84
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 85
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 86
    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 38
    const/4 v0, 0x3

    .line 39
    .local v0, "dragFlags":I
    const/16 v1, 0x30

    .line 40
    .local v1, "swipeFlags":I
    const/4 v2, 0x3

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/jcodecraeer/xrecyclerview/SimpleItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v2

    return v2
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 61
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 64
    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    .line 65
    iget-object v0, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 66
    .local v0, "itemView":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 67
    .local v1, "alpha":F
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 69
    .end local v0    # "itemView":Landroid/view/View;
    .end local v1    # "alpha":F
    :cond_0
    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "source"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 45
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/SimpleItemTouchHelperCallback;->mAdapter:Lcom/jcodecraeer/xrecyclerview/ItemTouchHelperAdapter;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/jcodecraeer/xrecyclerview/ItemTouchHelperAdapter;->onItemMove(II)V

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 73
    if-eqz p2, :cond_0

    .line 75
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 79
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .line 56
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/SimpleItemTouchHelperCallback;->mAdapter:Lcom/jcodecraeer/xrecyclerview/ItemTouchHelperAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jcodecraeer/xrecyclerview/ItemTouchHelperAdapter;->onItemDismiss(I)V

    .line 57
    return-void
.end method
