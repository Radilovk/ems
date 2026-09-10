.class public Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "DefaultItemTouchHelperCallback.java"


# instance fields
.field private isItemViewSwipeEnabled:Z

.field private isLongPressDragEnabled:Z

.field private onItemMoveListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;

.field private onItemMovementListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;

.field private onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 167
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 170
    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "targetViewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x0

    .line 86
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemMovementListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemMovementListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;

    invoke-interface {v4, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;->onDragFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 88
    .local v0, "dragFlags":I
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemMovementListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;

    invoke-interface {v4, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;->onSwipeFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    .line 89
    .local v3, "swipeFlags":I
    invoke-static {v0, v3}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v4

    .line 116
    .end local v0    # "dragFlags":I
    .end local v3    # "swipeFlags":I
    :goto_0
    return v4

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 92
    .local v1, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v4, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v4, :cond_2

    move-object v2, v1

    .line 93
    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    .line 94
    .local v2, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v4

    if-nez v4, :cond_1

    .line 95
    const/16 v0, 0xf

    .line 96
    .restart local v0    # "dragFlags":I
    const/4 v3, 0x3

    .line 97
    .restart local v3    # "swipeFlags":I
    invoke-static {v0, v3}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v4

    goto :goto_0

    .line 99
    .end local v0    # "dragFlags":I
    .end local v3    # "swipeFlags":I
    :cond_1
    const/16 v0, 0xf

    .line 100
    .restart local v0    # "dragFlags":I
    const/16 v3, 0xc

    .line 101
    .restart local v3    # "swipeFlags":I
    invoke-static {v0, v3}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v4

    goto :goto_0

    .line 103
    .end local v0    # "dragFlags":I
    .end local v2    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v3    # "swipeFlags":I
    :cond_2
    instance-of v4, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v4, :cond_4

    move-object v2, v1

    .line 104
    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    .line 105
    .restart local v2    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v4

    if-nez v4, :cond_3

    .line 106
    const/16 v0, 0xc

    .line 107
    .restart local v0    # "dragFlags":I
    const/4 v3, 0x3

    .line 108
    .restart local v3    # "swipeFlags":I
    invoke-static {v0, v3}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v4

    goto :goto_0

    .line 110
    .end local v0    # "dragFlags":I
    .end local v3    # "swipeFlags":I
    :cond_3
    const/4 v0, 0x3

    .line 111
    .restart local v0    # "dragFlags":I
    const/16 v3, 0xc

    .line 112
    .restart local v3    # "swipeFlags":I
    invoke-static {v0, v3}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v4

    goto :goto_0

    .line 116
    .end local v0    # "dragFlags":I
    .end local v2    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v3    # "swipeFlags":I
    :cond_4
    invoke-static {v5, v5}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v4

    goto :goto_0
.end method

.method public getOnItemMoveListener()Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemMoveListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;

    return-object v0
.end method

.method public getOnItemMovementListener()Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemMovementListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;

    return-object v0
.end method

.method public getOnItemStateChangedListener()Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;

    return-object v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->isItemViewSwipeEnabled:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->isLongPressDragEnabled:Z

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 123
    if-ne p6, v4, :cond_1

    .line 125
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 126
    .local v1, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    .local v0, "alpha":F
    instance-of v3, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_0

    .line 128
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v1    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    .line 129
    .local v2, "orientation":I
    if-nez v2, :cond_2

    .line 130
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v0, v5, v3

    .line 135
    .end local v2    # "orientation":I
    :cond_0
    :goto_0
    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 137
    .end local v0    # "alpha":F
    :cond_1
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 138
    return-void

    .line 131
    .restart local v0    # "alpha":F
    .restart local v2    # "orientation":I
    :cond_2
    if-ne v2, v4, :cond_0

    .line 132
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v0, v5, v3

    goto :goto_0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "srcHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "targetHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemMoveListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemMoveListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;

    invoke-interface {v0, p2, p3}, Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;->onItemMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 159
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 162
    :cond_0
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemMoveListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemMoveListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;

    invoke-interface {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;->onItemDismiss(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setItemViewSwipeEnabled(Z)V
    .locals 0
    .param p1, "canSwipe"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->isItemViewSwipeEnabled:Z

    .line 53
    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .locals 0
    .param p1, "canDrag"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->isLongPressDragEnabled:Z

    .line 44
    return-void
.end method

.method public setOnItemMoveListener(Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;)V
    .locals 0
    .param p1, "onItemMoveListener"    # Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemMoveListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMoveListener;

    .line 62
    return-void
.end method

.method public setOnItemMovementListener(Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;)V
    .locals 0
    .param p1, "onItemMovementListener"    # Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemMovementListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemMovementListener;

    .line 70
    return-void
.end method

.method public setOnItemStateChangedListener(Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;)V
    .locals 0
    .param p1, "onItemStateChangedListener"    # Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/swipe/touch/OnItemStateChangedListener;

    .line 78
    return-void
.end method
